#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: left_sisters.t, sisters.t, and right_sisters.t are
###  (and should remain) very SIMILAR
###

my %nodes;

# Test left_sisters() with a 0 daughter simple tree
%nodes = tree_simple(0);

is( node_names($nodes{root}->left_sisters( )), '', "root node has no sisters");

# Test left_sisters() with a 1 daughter simple tree
%nodes = tree_simple(1);

is( node_names($nodes{A}->left_sisters( )), '', "only child has no sisters");

# Test left_sisters() with a 5 daughter simple tree
%nodes = tree_simple(5);

is( node_names($nodes{A}->left_sisters( )), '', "oldest child has no left sisters");
is( node_names($nodes{C}->left_sisters( )), 'A B', "3rd child has 2 left sisters");
is( node_names($nodes{E}->left_sisters( )), 'A B C D', "last child has 4 left sisters");
