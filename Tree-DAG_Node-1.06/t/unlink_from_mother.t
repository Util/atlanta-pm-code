#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my(%nodes, $removed_node);

# Create a 1 daughter tree
%nodes = tree_simple(1);

# Test unlinking root node from its (non-existant) mother
$removed_node = $nodes{root}->unlink_from_mother( );
is( display_child_tree($nodes{root}), 'root { A }', "unlink root from mother is no-op");

# Test removal of single child from the root node
$removed_node = $nodes{A}->unlink_from_mother( );
is($nodes{A}->mother, undef, 'Child no longer has a mother');
is(ref($removed_node), ref($nodes{root}), 'Correct mother reference was returned by unlink_from_mother');

