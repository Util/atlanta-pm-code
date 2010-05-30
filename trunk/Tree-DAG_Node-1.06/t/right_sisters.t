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

# Test right_sisters() with a 0 daughter simple tree
%nodes = tree_simple(0);
is( node_names($nodes{root}->right_sisters( )), '', "root node has no sisters");

# Test right_sisters() with a 1 daughter simple tree
%nodes = tree_simple(1);
is( node_names($nodes{A}->right_sisters( )), '', "only child has no sisters");

# Test right_sisters() with a 5 daughter simple tree
%nodes = tree_simple(5);
is( node_names($nodes{A}->right_sisters( )), 'B C D E', "oldest child has 4 right sisters");
is( node_names($nodes{C}->right_sisters( )), 'D E', "3rd child has 2 right sisters");
is( node_names($nodes{E}->right_sisters( )), '', "last child has no right sisters");
