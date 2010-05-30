#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: left_sister.t and right_sister.t are
###  (and should remain) very SIMILAR
###

my %nodes;

# Test left_sister() with a 0 daughter simple tree
%nodes = tree_simple(0);
is( $nodes{root}->left_sister( ), undef, "root node has no sisters");

# Test left_sister() with a 1 daughter simple tree
%nodes = tree_simple(1);
is( $nodes{A}->left_sister( ), undef, "only child has no sisters");

# Test left_sister() with a 5 daughter simple tree
%nodes = tree_simple(5);
is( $nodes{A}->left_sister( ), undef, "oldest child has no left sisters");
is( node_names($nodes{C}->left_sister( )), 'B', "left sister for middle child");
is( node_names($nodes{E}->left_sister( )), 'D', "left sister for last child");
