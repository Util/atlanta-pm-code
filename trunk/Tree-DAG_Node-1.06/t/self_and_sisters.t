#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Create a 0 daughter tree
my($mother, @daughters) = build_tree(0);
is( node_names($mother->self_and_sisters( )), 'mother', "root node has no sisters");

# Create a 1 daughter tree
($mother, @daughters) = build_tree(1);
is( node_names($daughters[0]->self_and_sisters( )), 'A', "only child has no sisters");

# Create a 5 daughter tree
($mother, @daughters) = build_tree(5);
is( node_names($daughters[0]->self_and_sisters( )), 'A B C D E', "sisters and self for oldest child");
is( node_names($daughters[2]->self_and_sisters( )), 'A B C D E', "sisters and self for 3rd child");
is( node_names($daughters[4]->self_and_sisters( )), 'A B C D E', "sisters and self for last child");
