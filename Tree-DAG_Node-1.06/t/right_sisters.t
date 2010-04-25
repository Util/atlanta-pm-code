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

# Create a 0 daughter tree
my($mother, @daughters) = build_tree(0);
is( node_names($mother->right_sisters( )), '', "root node has no sisters");

# Create a 1 daughter tree
($mother, @daughters) = build_tree(1);
is( node_names($daughters[0]->right_sisters( )), '', "only child has no sisters");

# Create a 5 daughter tree
($mother, @daughters) = build_tree(5);
is( node_names($daughters[0]->right_sisters( )), 'B C D E', "oldest child has 4 right sisters");
is( node_names($daughters[2]->right_sisters( )), 'D E', "3rd child has 2 right sisters");
is( node_names($daughters[4]->right_sisters( )), '', "last child has no right sisters");
