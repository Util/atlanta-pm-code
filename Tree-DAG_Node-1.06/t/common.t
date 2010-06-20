#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 6;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test common() with a complex tree
%nodes = tree_complex();
# Create unrelated node (xenos is Greek for foreigner)
my($xenos) = node_pool('X');

# test commonality of various "related" nodes
is( ($nodes{B}->common($nodes{A}))->address(), '0', "commonality of siblings is mother");
is( ($nodes{AA}->common($nodes{B}))->address(), '0', "commonality of aunt/niece is aunt's mother");
is( ($nodes{root}->common($nodes{AC}))->address(), '0', "commonality of mother/granddaughter is mother");
is( ($nodes{B}->common($nodes{BA}))->address(), '0:1', "commonality of mother/daughter is mother");

# if LIST is empty, return $node
is( ($nodes{AC}->common( ))->address(), '0:0:2', "commonality with null list is an identity");

# If nodes are not common to a tree, undef is returned
is( $nodes{AC}->common($xenos), undef, "unrelated nodes have no commonality");

