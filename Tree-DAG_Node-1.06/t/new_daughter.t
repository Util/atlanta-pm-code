#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: new_daughter.t and new_daughter_left.t are
###  (and should remain) NEARLY identical
###

my(%nodes);

# Start test with a 0 daughter simple tree
%nodes = tree_simple(0);

my $node_A = $nodes{root}->new_daughter({name => 'A'});

# Verify the resulting tree structure
is( display_child_tree($nodes{root}), 'root { A }', 'Daughter added to existing mother with existing daughter');

# Add a new last child to the root node
my $node_B = $nodes{root}-> new_daughter({name=> 'B'});

# Verify the resulting tree structure
is( display_child_tree($nodes{root}), 'root { A B }', 'Daughter added to existing mother with existing daughter');
