#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 11;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Test ancestors() with a 0 daughter tree
my %nodes = tree_minimal();
is( node_names($nodes{root}->ancestors( )), '', "root node has no ancestors");


# Test ancestors() with a simple (2 generation) tree
# Create a 3 daughter tree
###my($mother, @daughters) = build_tree(3);
%nodes = tree_simple();
# is( node_names($mother->ancestors( )), '', "root node has no ancestors");
# is( node_names($daughters[0]->ancestors( )), 'mother', "first child (A) has one ancestor");
# is( node_names($daughters[1]->ancestors( )), 'mother', "middle child (B) has one ancestor");
# is( node_names($daughters[2]->ancestors( )), 'mother', "last child (C) has one ancestor");

is( node_names($nodes{root}->ancestors( )), '', "root node has no ancestors");
is( node_names($nodes{A}->ancestors( )), 'root', "first child (A) has one ancestor");
is( node_names($nodes{B}->ancestors( )), 'root', "middle child (B) has one ancestor");
is( node_names($nodes{C}->ancestors( )), 'root', "last child (C) has one ancestor");

# Test ancestors() with a complex tree

# Create children for 'B'
###add_children($daughters[1], 'BA', 'BB', 'BC');
# Create children for 'BA'
###my @gchildren = $daughters[1]->daughters( );
###add_children($gchildren[0], 'BAA', 'BAB', 'BAC');
# is( node_names($mother->ancestors( )), '', "root node has no ancestors");
# is( node_names($daughters[1]->ancestors( )), 'mother', "child B has one ancestor");
# is( node_names($gchildren[0]->ancestors( )), 'B mother', "grandchild BA has two ancestors");
# is( node_names($gchildren[1]->ancestors( )), 'B mother', "grandchild BB has two ancestors");
# is( node_names($gchildren[2]->ancestors( )), 'B mother', "grandchild BC has two ancestors");
# is( node_names(($gchildren[0]->daughters( ))[1]->ancestors( )), 'BA B mother', "great-grandchild BAB has three ancestors");

%nodes = tree_complex();

is( node_names($nodes{root}->ancestors( )), '', "root node has no ancestors");
is( node_names($nodes{B}->ancestors( )), 'root', "child B has one ancestor");
is( node_names($nodes{AA}->ancestors( )), 'A root', "grandchild AA has two ancestors");
is( node_names($nodes{AB}->ancestors( )), 'A root', "grandchild AB has two ancestors");
is( node_names($nodes{AC}->ancestors( )), 'A root', "grandchild AC has two ancestors");
is( node_names($nodes{ABB}->ancestors( )), 'AB A root', "great-grandchild ABB has three ancestors");
