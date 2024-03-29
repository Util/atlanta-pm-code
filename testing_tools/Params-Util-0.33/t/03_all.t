#!/usr/bin/perl

use strict;
BEGIN {
	$|  = 1;
	$^W = 1;
}

use Test::More tests => 20;
use File::Spec::Functions ':ALL';
BEGIN {
	use_ok( 'Params::Util', ':ALL' );
}





#####################################################################
# Is everything imported

ok( defined &_IDENTIFIER, '_IDENTIFIER imported ok' );
ok( defined &_CLASS,      '_CLASS imported ok'      );
ok( defined &_NUMBER,     '_NUMBER imported ok'     );
ok( defined &_POSINT,     '_POSINT imported ok'     );
ok( defined &_NONNEGINT,  '_NONNEGINT imported ok'  );
ok( defined &_SCALAR,     '_SCALAR imported ok'     );
ok( defined &_SCALAR0,    '_SCALAR0 imported ok'    );
ok( defined &_ARRAY,      '_ARRAY imported ok'      );
ok( defined &_ARRAY0,     '_ARRAY0 imported ok'     );
ok( defined &_ARRAYLIKE,  '_ARRAYLIKE imported ok'  );
ok( defined &_HASH,       '_HASH imported ok'       );
ok( defined &_HASH0,      '_HASH0 imported ok'      );
ok( defined &_HASHLIKE,   '_HASHLIKE imported ok'   );
ok( defined &_CODE,       '_CODE imported ok'       );
ok( defined &_CODELIKE,   '_CODELIKE imported ok'   );
ok( defined &_INSTANCE,   '_INSTANCE imported ok'   );
ok( defined &_SET,        '_SET imported ok'        );
ok( defined &_SET0,       '_SET0 imported ok'       );
ok( defined &_HANDLE,     '_HANDLE imported ok'     );

1;
