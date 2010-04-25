#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 11;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Create a 0 daughter tree
my($mother, @daughters) = build_tree(0);
is( node_names($mother->ancestors( )), '', "root node has no ancestors");

# Create a 3 daughter tree
($mother, @daughters) = build_tree(3);
is( node_names($mother->ancestors( )), '', "root node has no ancestors");
is( node_names($daughters[0]->ancestors( )), 'mother', "child A has one ancestor");
is( node_names($daughters[1]->ancestors( )), 'mother', "child B has one ancestor");
is( node_names($daughters[2]->ancestors( )), 'mother', "child C has one ancestor");

# Create children for 'B'
add_children($daughters[1], 'BA', 'BB', 'BC');
# Create children for 'BA'
my @gchildren = $daughters[1]->daughters( );
add_children($gchildren[0], 'BAA', 'BAB', 'BAC');
is( node_names($mother->ancestors( )), '', "root node has no ancestors");
is( node_names($daughters[1]->ancestors( )), 'mother', "child B has one ancestor");
is( node_names($gchildren[0]->ancestors( )), 'B mother', "grandchild BA has two ancestors");
is( node_names($gchildren[1]->ancestors( )), 'B mother', "grandchild BB has two ancestors");
is( node_names($gchildren[2]->ancestors( )), 'B mother', "grandchild BC has two ancestors");
is( node_names(($gchildren[0]->daughters( ))[1]->ancestors( )), 'BA B mother', "great-grandchild BAB has three ancestors");
