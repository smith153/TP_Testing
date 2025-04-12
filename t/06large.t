use Test::More tests => 250;
use Time::Piece;
use Time::Seconds;

# Large tests - test dates outside of the epoch range,
# somewhat silly, but lets see what happens


plan skip_all => "Large time tests not required for installation"
  unless ( $ENV{AUTOMATED_TESTING} );

TODO: {
    local $TODO = "Big dates will probably fail on some platforms";
    my $t = gmtime;

    my $base_year = $t->year;
    my $one_year  = ONE_YEAR;

    for ( 1 .. 50 ) {
        $t = $t + $one_year;
        cmp_ok(
            $t->year, '==',
            $base_year + $_,
            "Year is: " . ( $base_year + $_ )
        );
    }

    $t         = gmtime;
    $base_year = $t->year;

    for ( 1 .. 200 ) {
        warn "year is: $t->[5] day is: $t->[3]\n";
        $t = $t - $one_year;
        cmp_ok(
            $t->year, '==',
            $base_year - $_,
            "Year is: " . ( $base_year - $_ )
        );
    }

}
