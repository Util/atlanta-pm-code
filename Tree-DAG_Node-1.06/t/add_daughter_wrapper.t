#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 6;
use Tree::DAG_Node;

my $root = Tree::DAG_Node->new();
is( ref($root), 'Tree::DAG_Node', 'root Node creation');

my $child = Tree::DAG_Node->new();
is( ref($child), 'Tree::DAG_Node', 'child Node creation');

$root->name('Kate');
$child->name('Betty Joe');

my @rc = $root->add_daughter( $child );
is( scalar(@rc), 0, 'Adding a child should return nothing');

my @daughters = $root->daughters;
is(@daughters, 1, 'Single child added');

is( scalar($root->daughters), 1, 'Single child loaded');

is($daughters[0]->name, $child->name, 'Daughters names are correct');
