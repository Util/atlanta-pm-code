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
is( node_names($mother->sisters( )), '', "root node has no sisters");

# Create a 1 daughter tree
($mother, @daughters) = build_tree(1);
is( node_names($daughters[0]->sisters( )), '', "only child has no sisters");

# Create a 5 daughter tree
($mother, @daughters) = build_tree(5);
is( node_names($daughters[0]->left_sisters( )), 'B C D E', "oldest child has 4 sisters");
is( node_names($daughters[2]->left_sisters( )), 'A B D E', "3rd child has 2 sisters");
is( node_names($daughters[4]->left_sisters( )), 'A B C D', "last child has 4 sisters");
