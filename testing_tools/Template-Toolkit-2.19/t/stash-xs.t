#============================================================= -*-perl-*-
#
# t/stash.t
#
# Template script testing (some elements of) the XS version of
# Template::Stash
#
# Written by Andy Wardley <abw@kfs.org>
#
# Copyright (C) 1996-2000 Andy Wardley.  All Rights Reserved.
# Copyright (C) 1998-2000 Canon Research Centre Europe Ltd.
#
# This is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.
#
# $Id: stash-xs.t 1017 2006-05-30 08:23:30Z abw $
#
#========================================================================

use strict;
use lib qw( ./lib ../lib ../blib/lib ../blib/arch ./blib/lib ./blib/arch );
use Template::Constants qw( :status );
use Template;
use Template::Test;
$^W = 1;

eval {
    require Template::Stash::XS;
};
if ($@) {
    warn $@;
    skip_all('cannot load Template::Stash::XS');
}

#------------------------------------------------------------------------
# define some simple objects for testing
#------------------------------------------------------------------------

package Buggy;
sub new { bless {}, shift }
sub croak { my $self = shift; die @_ }

package ListObject;

package HashObject;

sub hello {
    my $self = shift;
    return "Hello $self->{ planet }";
}

sub goodbye {
    my $self = shift;
    return $self->no_such_method();
}

sub now_is_the_time_to_test_a_very_long_method_to_see_what_happens {
    my $self = shift;
    return $self->this_method_does_not_exist();
}


package main;


my $count = 20;
my $data = {
    foo => 10,
    bar => {
        baz => 20,
    },
    baz => sub {
        return {
            boz => ($count += 10),
            biz => (shift || '<undef>'),
        };
    },
    obj => bless({
        name => 'an object',
    }, 'AnObject'),
    listobj => bless([10, 20, 30], 'ListObject'),
    hashobj => bless({ planet => 'World' }, 'HashObject'),
    clean   => sub {
        my $error = shift;
        $error =~ s/(\s*\(.*?\))?\s+at.*$//;
        return $error;
    },
    correct => sub { die @_ },
    buggy => Buggy->new(),
};

my $stash = Template::Stash::XS->new($data);

match( $stash->get('foo'), 10 );
match( $stash->get([ 'bar', 0, 'baz', 0 ]), 20 );
match( $stash->get('bar.baz'), 20 );
match( $stash->get('bar(10).baz'), 20 );
match( $stash->get('baz.boz'), 30 );
match( $stash->get('baz.boz'), 40 );
match( $stash->get('baz.biz'), '<undef>' );
match( $stash->get('baz(50).biz'), '<undef>' );   # args are ignored

$stash->set( 'bar.buz' => 100 );
match( $stash->get('bar.buz'), 100 );

my $stash_dbg = Template::Stash::XS->new({ %$data, _DEBUG => 1 });

my $ttlist = [
    'default' => Template->new( STASH => $stash ),
    'warn'    => Template->new( STASH => $stash_dbg ),
];

test_expect(\*DATA, $ttlist, $data);

__DATA__
-- test --
a: [% a %]
-- expect --
a: 

-- test --
-- use warn --
[% TRY; a; CATCH; "ERROR: $error"; END %]
-- expect --
ERROR: undef error - a is undefined

-- test --
-- use default --
[% myitem = 'foo' -%]
1: [% myitem %]
2: [% myitem.item %]
3: [% myitem.item.item %]
-- expect --
1: foo
2: foo
3: foo

-- test --
[% myitem = 'foo' -%]
[% "* $item\n" FOREACH item = myitem -%]
[% "+ $item\n" FOREACH item = myitem.list %]
-- expect --
* foo
+ foo

-- test --
[% myitem = 'foo' -%]
[% myitem.hash.value %]
-- expect --
foo

-- test --
[% myitem = 'foo'
   mylist = [ 'one', myitem, 'three' ]
   global.mylist = mylist
-%]
[% mylist.item %]
0: [% mylist.item(0) %]
1: [% mylist.item(1) %]
2: [% mylist.item(2) %]
-- expect --
one
0: one
1: foo
2: three

-- test --
[% "* $item\n" FOREACH item = global.mylist -%]
[% "+ $item\n" FOREACH item = global.mylist.list -%]
-- expect --
* one
* foo
* three
+ one
+ foo
+ three

-- test --
[% global.mylist.push('bar');
   "* $item.key => $item.value\n" FOREACH item = global.mylist.hash -%]
-- expect --
* one => foo
* three => bar

-- test --
[% myhash = { msg => 'Hello World', things => global.mylist, a => 'alpha' };
   global.myhash = myhash 
-%]
* [% myhash.item('msg') %]
-- expect --
* Hello World

-- test --
[% global.myhash.delete('things') -%]
keys: [% global.myhash.keys.sort.join(', ') %]
-- expect --
keys: a, msg

-- test --
[% "* $item\n" 
    FOREACH item IN global.myhash.items.sort -%]
-- expect --
* a
* alpha
* Hello World
* msg

-- test --
[% items = [ 'foo', 'bar', 'baz' ];
   take  = [ 0, 2 ];
   slice = items.$take;
   slice.join(', ');
%]
-- expect --
foo, baz

-- test --
[% items = {
    foo = 'one',
    bar = 'two',
    baz = 'three'
   }
   take  = [ 'foo', 'baz' ];
   slice = items.$take;
   slice.join(', ');
%]
-- expect --
one, three

-- test --
[% items = {
    foo = 'one',
    bar = 'two',
    baz = 'three'
   }
   keys = items.keys.sort;
   items.${keys}.join(', ');
%]
-- expect --
two, three, one

-- test --
[% i = 0 %]
[%- a = [ 0, 1, 2 ] -%]
[%- WHILE i < 3 -%]
[%- i %][% a.$i -%]
[%- i = i + 1 -%]
[%- END %]
-- expect --
001122

-- test --
[%- a = [ "alpha", "beta", "gamma", "delta" ] -%]
[%- b = "foo" -%]
[%- a.$b -%]
-- expect --


-- test --
[%- a = [ "alpha", "beta", "gamma", "delta" ] -%]
[%- b = "2" -%]
[%- a.$b -%]
-- expect --
gamma

-- test --
[% obj.name %]
-- expect --
an object

-- test --
[% obj.name.list.first %]
-- expect --
an object

-- test --
[% obj.items.first %]
-- expect --
name


-- test --
[% obj.items.1 %]
-- expect --
an object


-- test --
=[% size %]=
-- expect --
==

-- test --
[% USE Dumper;
   TRY;
     correct(["hello", "there"]);
   CATCH;
     error.info.join(', ');
   END;
%]
==
[% TRY;
     buggy.croak(["hello", "there"]);
   CATCH;
     error.info.join(', ');
   END;
%]
-- expect --
hello, there
==
hello, there


-- test --
[% hash = { }
   list = [ hash ]
   list.last.message = 'Hello World';
   "message: $list.last.message\n"
-%]

-- expect --
message: Hello World

# test Dave Howorth's patch (v2.15) which makes the stash more strict
# about what it considers to be a missing method error

-- test --
[% hashobj.hello %]
-- expect --
Hello World

-- test --
[% TRY; hashobj.goodbye; CATCH; "ERROR: "; clean(error); END %]
-- expect --
ERROR: undef error - Can't locate object method "no_such_method" via package "HashObject"

-- test --
[% TRY; 
    hashobj.now_is_the_time_to_test_a_very_long_method_to_see_what_happens;
   CATCH; 
     "ERROR: "; clean(error); 
   END 
%]
-- expect --
ERROR: undef error - Can't locate object method "this_method_does_not_exist" via package "HashObject"

