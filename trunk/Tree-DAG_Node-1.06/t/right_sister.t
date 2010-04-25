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

# Create a 0 daughter tree
my($mother, @daughters) = build_tree(0);
is( $mother->right_sister( ), undef, "root node has no sisters");

# Create a 1 daughter tree
($mother, @daughters) = build_tree(1);
is( $daughters[0]->right_sister( ), undef, "only child has no sisters");

# Create a 5 daughter tree
($mother, @daughters) = build_tree(5);
is( node_names($daughters[0]->right_sister( )), 'B', "right sister for oldest child");
is( node_names($daughters[2]->right_sister( )), 'D', "right sister for middle child");
is( $daughters[4]->right_sister( ), undef, "last child has no right sisters");
