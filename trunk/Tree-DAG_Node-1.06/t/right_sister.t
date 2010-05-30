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

# Test right_sister() with a 0 daughter simple tree
%nodes = tree_simple(0);
is( $nodes{root}->right_sister( ), undef, "root node has no sisters");

# Test right_sister() with a 1 daughter simple tree
%nodes = tree_simple(1);
is( $nodes{A}->right_sister( ), undef, "only child has no sisters");

# Test right_sister() with a 5 daughter simple tree
%nodes = tree_simple(5);
is( node_names($nodes{A}->right_sister( )), 'B', "right sister for oldest child");
is( node_names($nodes{C}->right_sister( )), 'D', "right sister for middle child");
is( $nodes{E}->right_sister( ), undef, "last child has no right sisters");
