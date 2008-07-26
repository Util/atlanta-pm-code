use Test ;

use Test::Differences ;

sub f($) {
    my $out = join "|",
        @{Test::Differences::_flatten( 
	    Test::Differences::_grok_type( $_[0] ),
	    $_[0]
	)
    } ;
    $out =~ s/ +//g ;
    $out ;
}

my @tests = (
sub { ok f "a",                      "a"           },
sub { ok f "a\nb\n",                 "a\n|b\n"     },
sub { ok f [qw( a b )],              "a|b"         },
sub { ok f [[qw( a b )], [qw(c d)]], "a,b|c,d"     },
sub { ok f [{ a => 0, b => 1 }, { a => 2, c => 3}],
    "a,b,c|0,1,<undef>|2,<undef>,3"
},
## Complex data structures are not flattened, they're dumped, so don't
## test that here.
) ;

plan tests => scalar @tests ;

$_->() for @tests ;
