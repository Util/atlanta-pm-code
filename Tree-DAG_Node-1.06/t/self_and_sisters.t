#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test self_and_sisters() with a 0 daughter simple tree
%nodes = tree_simple(0);

is( node_names($nodes{root}->self_and_sisters( )), 'root', "root node has no sisters");

# Test self_and_sisters() with a 1 daughter simple tree
%nodes = tree_simple(1);

is( node_names($nodes{A}->self_and_sisters( )), 'A', "only child has no sisters");

# Test self_and_sisters() with a 5 daughter simple tree
%nodes = tree_simple(5);

is( node_names($nodes{A}->self_and_sisters( )), 'A B C D E', "sisters and self for oldest child");
is( node_names($nodes{C}->self_and_sisters( )), 'A B C D E', "sisters and self for 3rd child");
is( node_names($nodes{E}->self_and_sisters( )), 'A B C D E', "sisters and self for last child");
