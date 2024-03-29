#============================================================= -*-perl-*-
#
# t/compile2.t
#
# Test that the compiled template files written by compile1.t can be 
# loaded and used.
#
# Written by Andy Wardley <abw@kfs.org>
#
# Copyright (C) 1996-2000 Andy Wardley.  All Rights Reserved.
# Copyright (C) 1998-2000 Canon Research Centre Europe Ltd.
#
# This is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.
#
# $Id: compile2.t 1064 2007-04-27 13:20:21Z abw $
#
#========================================================================

use strict;
use lib qw( ./lib ../lib );
use Template::Test;
$^W = 1;

# script may be being run in distribution root or 't' directory
my $dir   = -d 't' ? 't/test/src' : 'test/src';
my $ttcfg = {
    POST_CHOMP   => 1,
    INCLUDE_PATH => $dir,
    COMPILE_EXT => '.ttc',
};

my $compiled = "$dir/foo.ttc";

# check compiled template files exist
ok( -f $compiled );
ok( -f "$dir/complex.ttc" );

# ensure template metadata is saved in compiled file (bug fixed in v2.00)
my $out = '';
my $tt = Template->new($ttcfg);
ok( $tt->process('baz', { showname => 1 }, \$out) );
ok( $out =~ /^name: baz/ );

# we're going to hack on the foo.ttc file to change some key text.
# this way we can tell that the template was loaded from the compiled
# version and not the source.


my @current_times = (stat $compiled)[8,9];

open(FOO, $compiled) || die "$compiled: $!\n";
local $/ = undef;
my $foo = <FOO>;
close(FOO);

$foo =~ s/the foo file/the hacked foo file/;
open(FOO, "> $compiled") || die "$compiled: $!\n";
print FOO $foo;
close(FOO);

# Set mtime back to what it was
utime( @current_times, $compiled );

test_expect(\*DATA, $ttcfg);


__DATA__
-- test --
[% INCLUDE foo a = 'any value' %]
-- expect --
This is the hacked foo file, a is any value

-- test --
[% META author => 'billg' version => 6.66  %]
[% INCLUDE complex %]
-- expect --
This is the header, title: Yet Another Template Test
This is a more complex file which includes some BLOCK definitions
This is the footer, author: billg, version: 6.66
- 3 - 2 - 1 

-- test --
[% META author => 'billg' version => 6.66  %]
[% INCLUDE complex %]
-- expect --
This is the header, title: Yet Another Template Test
This is a more complex file which includes some BLOCK definitions
This is the footer, author: billg, version: 6.66
- 3 - 2 - 1 


