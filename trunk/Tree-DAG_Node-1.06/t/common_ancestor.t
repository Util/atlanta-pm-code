#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 8;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test common_ancestor() with a complex tree
%nodes = tree_complex();
# Create unrelated node (xenos is Greek for foreigner)
my($xenos) = node_pool('X');

# test various "related" nodes
is( $nodes{root}->common_ancestor($nodes{AC}), undef, "common ancestor of root and anything is undefined");
is( $nodes{AC}->common_ancestor($nodes{AA}), $nodes{A}, "common ancestor of siblings is mother");
is( $nodes{ABC}->common_ancestor($nodes{CAA}), $nodes{root}, "common ancestor of distant relatives is root");
is( $nodes{AA}->common_ancestor($nodes{ABC}), $nodes{A}, "common ancestor of aunt/niece is aunt's mother");
is( $nodes{AA}->common_ancestor($nodes{ABB}, $nodes{ABC}, $nodes{AC}), $nodes{A}, "common ancestor of list");

# if LIST is empty, return mother (undef for root)
is( $nodes{CC}->common_ancestor( ), $nodes{C}, "common ancestor with null list is mother");
is( $nodes{root}->common_ancestor( ), undef, "common ancestor of root with null list is undefined");

# If nodes are not common to a tree, undef is returned
is( $nodes{BA}->common_ancestor($xenos), undef, "unrelated nodes have no common ancestor");

