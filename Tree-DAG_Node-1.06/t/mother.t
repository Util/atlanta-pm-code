#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my $root = Tree::DAG_Node->new({name => 'Kate'});
my $child = Tree::DAG_Node->new({name => 'Betty'});
$root->add_daughter( $child );

is(display_child_tree($root), 'Kate { Betty }', 'Setup test tree');

is(ref($child->mother), ref($root), 'Child->mother subroutine returns the correct parent node'); 
