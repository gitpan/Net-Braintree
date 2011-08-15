# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/hraLGAMw6M/australasia.  Olson data version 2011h
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Chatham;
BEGIN {
  $DateTime::TimeZone::Pacific::Chatham::VERSION = '1.35';
}

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Chatham::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
61725411972,
DateTime::TimeZone::NEG_INFINITY,
61725456000,
44028,
0,
'LMT'
    ],
    [
61725411972,
62288316000,
61725457872,
62288361900,
45900,
0,
'CHAST'
    ],
    [
62288316000,
62297992800,
62288365500,
62298042300,
49500,
1,
'CHADT'
    ],
    [
62297992800,
62319160800,
62298038700,
62319206700,
45900,
0,
'CHAST'
    ],
    [
62319160800,
62330652000,
62319210300,
62330701500,
49500,
1,
'CHADT'
    ],
    [
62330652000,
62351215200,
62330697900,
62351261100,
45900,
0,
'CHAST'
    ],
    [
62351215200,
62362101600,
62351264700,
62362151100,
49500,
1,
'CHADT'
    ],
    [
62362101600,
62382664800,
62362147500,
62382710700,
45900,
0,
'CHAST'
    ],
    [
62382664800,
62393551200,
62382714300,
62393600700,
49500,
1,
'CHADT'
    ],
    [
62393551200,
62414114400,
62393597100,
62414160300,
45900,
0,
'CHAST'
    ],
    [
62414114400,
62425000800,
62414163900,
62425050300,
49500,
1,
'CHADT'
    ],
    [
62425000800,
62445564000,
62425046700,
62445609900,
45900,
0,
'CHAST'
    ],
    [
62445564000,
62456450400,
62445613500,
62456499900,
49500,
1,
'CHADT'
    ],
    [
62456450400,
62477013600,
62456496300,
62477059500,
45900,
0,
'CHAST'
    ],
    [
62477013600,
62487900000,
62477063100,
62487949500,
49500,
1,
'CHADT'
    ],
    [
62487900000,
62508463200,
62487945900,
62508509100,
45900,
0,
'CHAST'
    ],
    [
62508463200,
62519954400,
62508512700,
62520003900,
49500,
1,
'CHADT'
    ],
    [
62519954400,
62540517600,
62520000300,
62540563500,
45900,
0,
'CHAST'
    ],
    [
62540517600,
62551404000,
62540567100,
62551453500,
49500,
1,
'CHADT'
    ],
    [
62551404000,
62571967200,
62551449900,
62572013100,
45900,
0,
'CHAST'
    ],
    [
62571967200,
62582853600,
62572016700,
62582903100,
49500,
1,
'CHADT'
    ],
    [
62582853600,
62603416800,
62582899500,
62603462700,
45900,
0,
'CHAST'
    ],
    [
62603416800,
62614303200,
62603466300,
62614352700,
49500,
1,
'CHADT'
    ],
    [
62614303200,
62634866400,
62614349100,
62634912300,
45900,
0,
'CHAST'
    ],
    [
62634866400,
62645752800,
62634915900,
62645802300,
49500,
1,
'CHADT'
    ],
    [
62645752800,
62666316000,
62645798700,
62666361900,
45900,
0,
'CHAST'
    ],
    [
62666316000,
62677202400,
62666365500,
62677251900,
49500,
1,
'CHADT'
    ],
    [
62677202400,
62697765600,
62677248300,
62697811500,
45900,
0,
'CHAST'
    ],
    [
62697765600,
62709256800,
62697815100,
62709306300,
49500,
1,
'CHADT'
    ],
    [
62709256800,
62729820000,
62709302700,
62729865900,
45900,
0,
'CHAST'
    ],
    [
62729820000,
62740706400,
62729869500,
62740755900,
49500,
1,
'CHADT'
    ],
    [
62740706400,
62759455200,
62740752300,
62759501100,
45900,
0,
'CHAST'
    ],
    [
62759455200,
62773365600,
62759504700,
62773415100,
49500,
1,
'CHADT'
    ],
    [
62773365600,
62790904800,
62773411500,
62790950700,
45900,
0,
'CHAST'
    ],
    [
62790904800,
62804815200,
62790954300,
62804864700,
49500,
1,
'CHADT'
    ],
    [
62804815200,
62822354400,
62804861100,
62822400300,
45900,
0,
'CHAST'
    ],
    [
62822354400,
62836264800,
62822403900,
62836314300,
49500,
1,
'CHADT'
    ],
    [
62836264800,
62853804000,
62836310700,
62853849900,
45900,
0,
'CHAST'
    ],
    [
62853804000,
62868319200,
62853853500,
62868368700,
49500,
1,
'CHADT'
    ],
    [
62868319200,
62885253600,
62868365100,
62885299500,
45900,
0,
'CHAST'
    ],
    [
62885253600,
62899768800,
62885303100,
62899818300,
49500,
1,
'CHADT'
    ],
    [
62899768800,
62916703200,
62899814700,
62916749100,
45900,
0,
'CHAST'
    ],
    [
62916703200,
62931218400,
62916752700,
62931267900,
49500,
1,
'CHADT'
    ],
    [
62931218400,
62948152800,
62931264300,
62948198700,
45900,
0,
'CHAST'
    ],
    [
62948152800,
62962668000,
62948202300,
62962717500,
49500,
1,
'CHADT'
    ],
    [
62962668000,
62980207200,
62962713900,
62980253100,
45900,
0,
'CHAST'
    ],
    [
62980207200,
62994117600,
62980256700,
62994167100,
49500,
1,
'CHADT'
    ],
    [
62994117600,
63011656800,
62994163500,
63011702700,
45900,
0,
'CHAST'
    ],
    [
63011656800,
63025567200,
63011706300,
63025616700,
49500,
1,
'CHADT'
    ],
    [
63025567200,
63043106400,
63025613100,
63043152300,
45900,
0,
'CHAST'
    ],
    [
63043106400,
63057621600,
63043155900,
63057671100,
49500,
1,
'CHADT'
    ],
    [
63057621600,
63074556000,
63057667500,
63074601900,
45900,
0,
'CHAST'
    ],
    [
63074556000,
63089071200,
63074605500,
63089120700,
49500,
1,
'CHADT'
    ],
    [
63089071200,
63106005600,
63089117100,
63106051500,
45900,
0,
'CHAST'
    ],
    [
63106005600,
63120520800,
63106055100,
63120570300,
49500,
1,
'CHADT'
    ],
    [
63120520800,
63138060000,
63120566700,
63138105900,
45900,
0,
'CHAST'
    ],
    [
63138060000,
63151970400,
63138109500,
63152019900,
49500,
1,
'CHADT'
    ],
    [
63151970400,
63169509600,
63152016300,
63169555500,
45900,
0,
'CHAST'
    ],
    [
63169509600,
63183420000,
63169559100,
63183469500,
49500,
1,
'CHADT'
    ],
    [
63183420000,
63200959200,
63183465900,
63201005100,
45900,
0,
'CHAST'
    ],
    [
63200959200,
63215474400,
63201008700,
63215523900,
49500,
1,
'CHADT'
    ],
    [
63215474400,
63232408800,
63215520300,
63232454700,
45900,
0,
'CHAST'
    ],
    [
63232408800,
63246924000,
63232458300,
63246973500,
49500,
1,
'CHADT'
    ],
    [
63246924000,
63263858400,
63246969900,
63263904300,
45900,
0,
'CHAST'
    ],
    [
63263858400,
63278373600,
63263907900,
63278423100,
49500,
1,
'CHADT'
    ],
    [
63278373600,
63295308000,
63278419500,
63295353900,
45900,
0,
'CHAST'
    ],
    [
63295308000,
63309823200,
63295357500,
63309872700,
49500,
1,
'CHADT'
    ],
    [
63309823200,
63326757600,
63309869100,
63326803500,
45900,
0,
'CHAST'
    ],
    [
63326757600,
63343087200,
63326807100,
63343136700,
49500,
1,
'CHADT'
    ],
    [
63343087200,
63358207200,
63343133100,
63358253100,
45900,
0,
'CHAST'
    ],
    [
63358207200,
63374536800,
63358256700,
63374586300,
49500,
1,
'CHADT'
    ],
    [
63374536800,
63389656800,
63374582700,
63389702700,
45900,
0,
'CHAST'
    ],
    [
63389656800,
63405986400,
63389706300,
63406035900,
49500,
1,
'CHADT'
    ],
    [
63405986400,
63421106400,
63406032300,
63421152300,
45900,
0,
'CHAST'
    ],
    [
63421106400,
63437436000,
63421155900,
63437485500,
49500,
1,
'CHADT'
    ],
    [
63437436000,
63452556000,
63437481900,
63452601900,
45900,
0,
'CHAST'
    ],
    [
63452556000,
63468885600,
63452605500,
63468935100,
49500,
1,
'CHADT'
    ],
    [
63468885600,
63484610400,
63468931500,
63484656300,
45900,
0,
'CHAST'
    ],
    [
63484610400,
63500940000,
63484659900,
63500989500,
49500,
1,
'CHADT'
    ],
    [
63500940000,
63516060000,
63500985900,
63516105900,
45900,
0,
'CHAST'
    ],
    [
63516060000,
63532389600,
63516109500,
63532439100,
49500,
1,
'CHADT'
    ],
    [
63532389600,
63547509600,
63532435500,
63547555500,
45900,
0,
'CHAST'
    ],
    [
63547509600,
63563839200,
63547559100,
63563888700,
49500,
1,
'CHADT'
    ],
    [
63563839200,
63578959200,
63563885100,
63579005100,
45900,
0,
'CHAST'
    ],
    [
63578959200,
63595288800,
63579008700,
63595338300,
49500,
1,
'CHADT'
    ],
    [
63595288800,
63610408800,
63595334700,
63610454700,
45900,
0,
'CHAST'
    ],
    [
63610408800,
63626738400,
63610458300,
63626787900,
49500,
1,
'CHADT'
    ],
    [
63626738400,
63641858400,
63626784300,
63641904300,
45900,
0,
'CHAST'
    ],
    [
63641858400,
63658188000,
63641907900,
63658237500,
49500,
1,
'CHADT'
    ],
    [
63658188000,
63673912800,
63658233900,
63673958700,
45900,
0,
'CHAST'
    ],
    [
63673912800,
63690242400,
63673962300,
63690291900,
49500,
1,
'CHADT'
    ],
    [
63690242400,
63705362400,
63690288300,
63705408300,
45900,
0,
'CHAST'
    ],
    [
63705362400,
63721692000,
63705411900,
63721741500,
49500,
1,
'CHADT'
    ],
    [
63721692000,
63736812000,
63721737900,
63736857900,
45900,
0,
'CHAST'
    ],
    [
63736812000,
63753141600,
63736861500,
63753191100,
49500,
1,
'CHADT'
    ],
    [
63753141600,
63768261600,
63753187500,
63768307500,
45900,
0,
'CHAST'
    ],
    [
63768261600,
63784591200,
63768311100,
63784640700,
49500,
1,
'CHADT'
    ],
    [
63784591200,
63799711200,
63784637100,
63799757100,
45900,
0,
'CHAST'
    ],
];

sub olson_version { '2011h' }

sub has_dst_changes { 49 }

sub _max_year { 2021 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}

sub _last_offset { 45900 }

my $last_observance = bless( {
  'format' => 'CHA%sT',
  'gmtoff' => '12:45',
  'local_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 714415,
    'local_rd_secs' => 1872,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 714415,
    'utc_rd_secs' => 1872,
    'utc_year' => 1958
  }, 'DateTime' ),
  'offset_from_std' => 0,
  'offset_from_utc' => 45900,
  'until' => [],
  'utc_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 714414,
    'local_rd_secs' => 42372,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 714414,
    'utc_rd_secs' => 42372,
    'utc_year' => 1957
  }, 'DateTime' )
}, 'DateTime::TimeZone::OlsonDB::Observance' )
;
sub _last_observance { $last_observance }

my $rules = [
  bless( {
    'at' => '2:45s',
    'from' => '2007',
    'in' => 'Sep',
    'letter' => 'D',
    'name' => 'Chatham',
    'offset_from_std' => 3600,
    'on' => 'lastSun',
    'save' => '1:00',
    'to' => 'max',
    'type' => undef
  }, 'DateTime::TimeZone::OlsonDB::Rule' ),
  bless( {
    'at' => '2:45s',
    'from' => '2008',
    'in' => 'Apr',
    'letter' => 'S',
    'name' => 'Chatham',
    'offset_from_std' => 0,
    'on' => 'Sun>=1',
    'save' => '0',
    'to' => 'max',
    'type' => undef
  }, 'DateTime::TimeZone::OlsonDB::Rule' )
]
;
sub _rules { $rules }


1;

