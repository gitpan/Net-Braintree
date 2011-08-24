use lib qw(lib t/lib);
use Test::More;
use Net::Braintree;
use Net::Braintree::TestHelper;

my $transaction_params = {
  amount => 50.00,
  credit_card => {
    number => "5431111111111111",
    expiration_date => "05/12"
  }
};

subtest "Successful Transactions" => sub {
  @examples = ("credit", "sale");

  foreach (@examples) {
    my ($method) = $_;
    my $result = Net::Braintree::Transaction->$method($transaction_params);

    is($result->is_success, 1, "result of $method is success");
    is($result->message, "", "$method result has errors: $result->message");
    is($result->transaction->credit_card->last_4, "1111");
  }
};

subtest "Custom Fields" => sub {
  my $result = Net::Braintree::Transaction->sale({
    amount => 50.00,
    credit_card => {
      number => "5431111111111111",
      expiration_date => "05/12"
    },
    custom_fields => {
      store_me => "please!"
    }
  });
  is $result->is_success, 1, "result is success with custom field";
  is $result->transaction->custom_fields->store_me, "please!", "stores custom field value";
};

subtest "Submit for Settlement" => sub {

  my $sale = Net::Braintree::Transaction->sale($transaction_params);
  my $result = Net::Braintree::Transaction->submit_for_settlement($sale->transaction->id);

  is($result->is_success, 1, "result of settlement successful");
  is($result->transaction->amount, "50.00", "settlement amount");
  is($result->transaction->status, "submitted_for_settlement", "transaction submitted for settlement");

};

subtest "Refund" => sub {
  subtest "successful w/ partial refund amount" => sub {
    my $settled = create_settled_transaction($transaction_params);
    my $result  = Net::Braintree::Transaction->refund($settled->transaction->id, 20.00);

    is($result->is_success, 1, "Result of refund successful.");
    is($result->transaction->type, 'credit', 'Refund result type is credit');
    is($result->transaction->amount, "20.00", "refund amount responds correctly");
  };

  subtest "unsuccessful if transaction has not been settled" => sub {
    my $sale       = Net::Braintree::Transaction->sale($transaction_params);
    my $result     = Net::Braintree::Transaction->refund($sale->transaction->id);

    is($result->is_success, 0, "Result of refund unsuccessful.");
    is($result->message, "Cannot refund a transaction unless it is settled.", "Errors on unsettled transaction");
  };
};

subtest "Void" => sub {
  subtest "successful" => sub {
    my $sale = Net::Braintree::Transaction->sale($transaction_params);
    my $void = Net::Braintree::Transaction->void($sale->transaction->id);

    is($void->is_success, 1, "Result of void successful");
    is($void->transaction->id, $sale->transaction->id, "Void tied to sale");
  };

  subtest "unsuccessful" => sub {
    my $settled = create_settled_transaction($transaction_params);
    my $void    = Net::Braintree::Transaction->void($settled->transaction->id);

    is($void->is_success, 0, "void fails if transaction is settled");
    is($void->message, "Transaction can only be voided if status is authorized or submitted_for_settlement.");
  };
};

subtest "Find" => sub {
  subtest "successful" => sub {
    my $sale_result = Net::Braintree::Transaction->sale($transaction_params);
    $find_result = Net::Braintree::Transaction->find($sale_result->transaction->id);
    is $find_result->transaction->id, $sale_result->transaction->id, "should find existing transaction";
    is $find_result->transaction->amount, "50.00", "should find correct amount";
  };

  subtest "unsuccessful" => sub {
    should_throw("NotFoundError", sub { Net::Braintree::Transaction->find('foo') }, "Not Foound");
  };
};

subtest "Options" => sub {
  subtest "submit for settlement" => sub {
    my $result = Net::Braintree::Transaction->sale({
      amount => 50.00,
      credit_card => {
        number => "5431111111111111",
        expiration_date  => "05/12",
      },
      options  => { submit_for_settlement  => 'true'}
    });
    is $result->transaction->status, "submitted_for_settlement", "should have correct status";
  };

  subtest "store_in_vault" => sub {
    my $result = Net::Braintree::Transaction->sale({
      amount => 50.00,
      credit_card => {
        number => "5431111111111111",
        expiration_date  => "05/12",
      },
      customer => {first_name => "Dan", last_name => "Smith"},
      billing => { street_address => "123 45 6" },
      shipping => { street_address => "789 10 11" },
      options  => { store_in_vault  => 'true', add_billing_address_to_payment_method => 'true', store_shipping_address_in_vault => 'true' }
    });

    my $customer_result = Net::Braintree::Customer->find($result->transaction->customer->id);

    like $result->transaction->credit_card->token, qr/[\d\w]{4,}/, "it sets the token";
  };
};

subtest "Create from payment method token" => sub {
  my $sale_result = Net::Braintree::Transaction->sale({
    amount => 50.00,
    credit_card => {
      number => "5431111111111111",
      expiration_date  => "05/12",
    },
    customer => {first_name => "Dan", last_name => "Smith"},
    options  => { store_in_vault  => 'true' }
  });

  my $create_from_token = Net::Braintree::Transaction->sale({customer_id => $sale_result->transaction->customer->id, payment_method_token => $sale_result->transaction->credit_card->token, amount => "10.00"});

  is $create_from_token->is_success, 1, "create from token result successful.";
  is $create_from_token->transaction->customer->id, $sale_result->transaction->customer->id, "ties sale to existing customer";
  is $create_from_token->transaction->credit_card->token, $sale_result->transaction->credit_card->token, "ties sale to existing customer card";

};

done_testing();
