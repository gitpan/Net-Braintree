# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/hraLGAMw6M/northamerica.  Olson data version 2011h
#
# Do not edit this file directly.
#
package DateTime::TimeZone::America::Swift_Current;
BEGIN {
  $DateTime::TimeZone::America::Swift_Current::VERSION = '1.35';
}

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::America::Swift_Current::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
60105481880,
DateTime::TimeZone::NEG_INFINITY,
60105456000,
-25880,
0,
'LMT'
    ],
    [
60105481880,
60503619600,
60105456680,
60503594400,
-25200,
0,
'MST'
    ],
    [
60503619600,
60520896000,
60503598000,
60520874400,
-21600,
1,
'MDT'
    ],
    [
60520896000,
61255472400,
60520870800,
61255447200,
-25200,
0,
'MST'
    ],
    [
61255472400,
61366287600,
61255450800,
61366266000,
-21600,
1,
'MWT'
    ],
    [
61366287600,
61370294400,
61366266000,
61370272800,
-21600,
1,
'MPT'
    ],
    [
61370294400,
61388442000,
61370269200,
61388416800,
-25200,
0,
'MST'
    ],
    [
61388442000,
61402953600,
61388420400,
61402932000,
-21600,
1,
'MDT'
    ],
    [
61402953600,
61419891600,
61402928400,
61419866400,
-25200,
0,
'MST'
    ],
    [
61419891600,
61433193600,
61419870000,
61433172000,
-21600,
1,
'MDT'
    ],
    [
61433193600,
61451341200,
61433168400,
61451316000,
-25200,
0,
'MST'
    ],
    [
61451341200,
61464643200,
61451319600,
61464621600,
-21600,
1,
'MDT'
    ],
    [
61464643200,
61482790800,
61464618000,
61482765600,
-25200,
0,
'MST'
    ],
    [
61482790800,
61496092800,
61482769200,
61496071200,
-21600,
1,
'MDT'
    ],
    [
61496092800,
61504556400,
61496067600,
61504531200,
-25200,
0,
'MST'
    ],
    [
61504556400,
61735597200,
61504531200,
61735572000,
-25200,
0,
'MST'
    ],
    [
61735597200,
61751318400,
61735575600,
61751296800,
-21600,
1,
'MDT'
    ],
    [
61751318400,
61798496400,
61751293200,
61798471200,
-25200,
0,
'MST'
    ],
    [
61798496400,
61814217600,
61798474800,
61814196000,
-21600,
1,
'MDT'
    ],
    [
61814217600,
61829946000,
61814192400,
61829920800,
-25200,
0,
'MST'
    ],
    [
61829946000,
61843248000,
61829924400,
61843226400,
-21600,
1,
'MDT'
    ],
    [
61843248000,
61862000400,
61843222800,
61861975200,
-25200,
0,
'MST'
    ],
    [
61862000400,
61874697600,
61861978800,
61874676000,
-21600,
1,
'MDT'
    ],
    [
61874697600,
62209155600,
61874672400,
62209130400,
-25200,
0,
'MST'
    ],
    [
62209155600,
DateTime::TimeZone::INFINITY,
62209134000,
DateTime::TimeZone::INFINITY,
-21600,
0,
'CST'
    ],
];

sub olson_version { '2011h' }

sub has_dst_changes { 11 }

sub _max_year { 2021 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

