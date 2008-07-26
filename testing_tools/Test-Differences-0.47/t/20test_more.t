use Test::More ;

use Test::Differences ;

plan tests => 2 ;

eq_or_diff "a", "a" ;

print "# This test misuses TODO: these TODOs are actually real tests.\n";
TODO: {
    local $TODO = "testing failure, not really a TODO" ;
    eq_or_diff "a", "b" ;
}
