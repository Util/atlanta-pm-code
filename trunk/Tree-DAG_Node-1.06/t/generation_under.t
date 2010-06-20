#!/usr/bin/perl
use strict;
#use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test generation() with a simple tree
%nodes = tree_simple(0);

is( node_names($nodes{root}->generation_under($nodes{root})), 'root', "root's generation just root" );

# Test generation() with a complex tree
%nodes = tree_complex();

is( node_names($nodes{root}->generation_under($nodes{root})), 'root', "root's generation is root" );
is( node_names($nodes{B}->generation_under($nodes{root})), 'A B C', "generation 1 is A, B, C" );
is( node_names($nodes{AC}->generation_under($nodes{A})), 'AA AB AC', "generation 2 under 'A' is AA, AB, AC" );
is( node_names($nodes{ABA}->generation_under($nodes{A})), 'ABA ABB ABC', "generation 3 under 'A' is ABA ABB ABC" );

# XXX These tests fail because the node passed as the param is not an ancestor of
#     the direct object of the method
# is( node_names($nodes{CC}->generation_under($nodes{A})), 'AA AB AC', "generation 2 under 'A' is AA, AB, AC" );
# is( node_names($nodes{ABB}->generation_under($nodes{C})), 'CAA CAB', "generation 3 under 'C' is CAA CAB" );
