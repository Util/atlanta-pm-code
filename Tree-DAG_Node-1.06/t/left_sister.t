#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Create a 0 daughter tree
my($mother, @daughters) = build_tree(0);
is( $mother->left_sister( ), undef, "root node has no sisters");

# Create a 1 daughter tree
($mother, @daughters) = build_tree(1);
is( $daughters[0]->left_sister( ), undef, "only child has no sisters");

# Create a 5 daughter tree
($mother, @daughters) = build_tree(5);
is( $daughters[0]->left_sister( ), undef, "oldest child has no left sisters");
is( node_names($daughters[2]->left_sister( )), 'B', "left sister for middle child");
is( node_names($daughters[4]->left_sister( )), 'D', "left sister for last child");
