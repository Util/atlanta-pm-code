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

# Test sisters() with a 0 daughter simple tree
%nodes = tree_simple(0);

is( node_names($nodes{root}->sisters( )), '', "root node has no sisters");

# Test sisters() with a 1 daughter simple tree
%nodes = tree_simple(1);

is( node_names($nodes{A}->sisters( )), '', "only child has no sisters");

# Test sisters() with a 5 daughter simple tree
%nodes = tree_simple(5);

is( node_names($nodes{A}->sisters( )), 'B C D E', "oldest child has 4 sisters");
is( node_names($nodes{C}->sisters( )), 'A B D E', "3rd child has 4 sisters");
is( node_names($nodes{E}->sisters( )), 'A B C D', "last child has 4 sisters");
