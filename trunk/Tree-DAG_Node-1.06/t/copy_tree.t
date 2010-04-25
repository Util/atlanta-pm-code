#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Create a tree
my $root = Tree::DAG_Node->new();
my $child = Tree::DAG_Node->new();
my $grandchild = Tree::DAG_Node->new();
my $greatgrandchild = Tree::DAG_Node->new();

$root->name('root');
$child->name('child');
$grandchild->name('grandchild');
$greatgrandchild->name('greatgrandchild');

$root->add_daughter( $child );
$child->add_daughter( $grandchild );
$grandchild->add_daughter( $greatgrandchild );

# Make copy of tree
my $copy = $root->copy_tree();
is( display_child_tree($copy), 'root { child { grandchild { greatgrandchild } } }', 'Entire 4-generation tree replicated');

# Make copy of 2-generation sub-tree
$copy = $grandchild->copy_tree();

is( display_child_tree($copy), 'root { child { grandchild { greatgrandchild } } }', '2-generation sub-tree replicated');

