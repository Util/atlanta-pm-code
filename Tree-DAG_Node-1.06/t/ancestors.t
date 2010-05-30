#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 11;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test ancestors() with a 0 daughter tree
%nodes = tree_minimal();

is( node_names($nodes{root}->ancestors( )), '', "root node has no ancestors");

# Test ancestors() with a simple (2 generation) tree
%nodes = tree_simple();

is( node_names($nodes{root}->ancestors( )), '', "root node has no ancestors");
is( node_names($nodes{A}->ancestors( )), 'root', "first child (A) has one ancestor");
is( node_names($nodes{B}->ancestors( )), 'root', "middle child (B) has one ancestor");
is( node_names($nodes{C}->ancestors( )), 'root', "last child (C) has one ancestor");

# Test ancestors() with a complex tree
%nodes = tree_complex();

is( node_names($nodes{root}->ancestors( )), '', "root node has no ancestors");
is( node_names($nodes{B}->ancestors( )), 'root', "child B has one ancestor");
is( node_names($nodes{AA}->ancestors( )), 'A root', "grandchild AA has two ancestors");
is( node_names($nodes{AB}->ancestors( )), 'A root', "grandchild AB has two ancestors");
is( node_names($nodes{AC}->ancestors( )), 'A root', "grandchild AC has two ancestors");
is( node_names($nodes{ABB}->ancestors( )), 'AB A root', "great-grandchild ABB has three ancestors");
