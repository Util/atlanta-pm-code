#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Test delete_tree() with root of a complex tree
my %nodes = tree_complex();
my @node_list = keys(%nodes);
$nodes{root}->delete_tree();

is( scalar(grep { ref($_) eq 'DEADNODE' } @node_list), 0, 'All nodes of tree were destroyed by delete_tree');

# Test delete_tree() with non-root of a complex tree
%nodes = tree_complex();
$nodes{AC}->delete_tree();

is( scalar(grep { ref($_) eq 'DEADNODE' } @node_list), 0, 'All nodes of tree were destroyed by delete_tree');
