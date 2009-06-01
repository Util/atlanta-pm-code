#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 9;
use Tree::DAG_Node;

my $root = Tree::DAG_Node->new();
is( ref($root), 'Tree::DAG_Node', 'root Node creation');

$root->name('Kate');
is($root->name, 'Kate', 'Roots name is correct');

my $child = Tree::DAG_Node->new();
is( ref($child), 'Tree::DAG_Node', 'Child Node created');

$child->name('Betty Joe');
is($child->name, 'Betty Joe', 'Childs name is correct');

my @rc = $root->add_daughter( $child );
is( scalar(@rc), 0, 'Adding a child should return nothing');

my @daughters = $root->daughters;
is(@daughters, 1, 'Single child added');

is(scalar $root->daughters, 1, 'Single child loaded');

is($daughters[0]->name, $child->name, 'Daughters names are correct');

my $mother = $child->mother;
is(ref($mother), ref($root), 'Child->Mother subroutine returns the correct parent node'); 
