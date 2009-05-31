#!/usr/bin/perl

use Test::More tests => 4;
use Tree::DAG_Node;

my $root = Tree::DAG_Node->new();
my $child = Tree::DAG_Node->new();
my $grandchild = Tree::DAG_Node->new();
my $greatgrandchild = Tree::DAG_Node->new();

$root->name('top level');
$child->name('second level');
$grandchild->name('third level');
$greatgrandchild->name('forth level');

$root->add_daughter( $child );
$child->add_daughter( $grandchild );
$grandchild->add_daughter( $greatgrandchild );

$copy_of_root = $root->copy_tree();

is($copy_of_root->name, $root->name, 'Root and Copy of Root names match');

@copy_of_root_descendants = $copy_of_root->descendants;

is($copy_of_root_descendants[0]->name, $child->name, 'Child of Root and Child of Copy of Root names match');
is($copy_of_root_descendants[1]->name, $grandchild->name, 'GrandChild of Root and GrandChild of Copy of Root names match');
is($copy_of_root_descendants[2]->name, $greatgrandchild->name, 'GreatGrandChild of Root and GreatGrandChild of Copy of Root names match');

