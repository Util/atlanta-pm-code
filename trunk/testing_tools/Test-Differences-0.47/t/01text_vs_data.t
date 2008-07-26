use Test ;

use Test::Differences ;

# use large enough data sets that this thing chooses context => 3 instead
# of "full document context".
my $a = ("\n" x 30 ) . "a\n" ;
my $b = ("\n" x 30 ) . "b\n" ;

my @tests = (
sub { eq_or_diff $a, $b },
sub { eq_or_diff_text $a, $b },
sub { eq_or_diff_data $a, $b },
) ;

plan tests => scalar @tests, todo => [1..@tests] ;

$_->() for @tests ;
