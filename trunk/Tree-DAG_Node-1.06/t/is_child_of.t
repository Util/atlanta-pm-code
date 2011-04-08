#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test with a 2 node tree
%nodes = tree_simple(1);
# Create unrelated node (xenos is Greek for foreigner)
my($xenos) = node_pool('X');

# test parent
is( !!$nodes{A}->is_child_of($nodes{root}), 1, "mother identified");
is( !!$xenos->is_child_of($nodes{root}), '', "non-mother identified");
