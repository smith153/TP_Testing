use Test::More tests => 250;
use Time::Piece;
use Time::Seconds;

# Large tests - test dates outside of the epoch range,
# somewhat silly, but lets see what happens

my $is_win32 = ( $^O =~ /Win32/ );

unless ( $ENV{AUTOMATED_TESTING} ) {
    plan skip_all => "Large time tests not required for installation";
}

if ( $is_win32 && $] < 5.012 ) {
    plan skip_all => "64bit time unsupported on Win32 with perl < 5.12";
}

my $t = gmtime;

my $base_year = $t->year;
my $one_year  = ONE_YEAR;

for ( 1 .. 50 ) {
    $t = $t + $one_year;
    cmp_ok( $t->year, '==', $base_year + $_,
        "Year is: " . ( $base_year + $_ ) );
}

$t         = gmtime;
$base_year = $t->year;

for ( 1 .. 200 ) {
    $t = $t - $one_year;
    cmp_ok( $t->year, '==', $base_year - $_,
        "Year is: " . ( $base_year - $_ ) );
}
