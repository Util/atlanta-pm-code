#!/usr/bin/perl
use strict;
#use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;
do 't/utility.pl' or die;

### FIXME
### - Generates warnings about use of an uninitialized value at DAG_Node.pm line 1287.
### - Generation (expects a "limit" parameter)
###

my %nodes;

# Test generation() with a simple tree
%nodes = tree_simple(0);

is( node_names($nodes{root}->generation()), 'root', "root's generation just root" );

# Test generation() with a complex tree
%nodes = tree_complex();

is( node_names($nodes{root}->generation()), 'root', "root's generation is root" );
is( node_names($nodes{B}->generation()), 'A B C', "generation 1 is A, B, C" );
is( node_names($nodes{CC}->generation()), 'AA AB AC BA CA CB CC', "generation 2 is AA, AB, AC, CA, CB, CC" );
is( node_names($nodes{ABA}->generation()), 'ABA ABB ABC CAA CAB', "generation 3 is ABA ABB ABC CAA CAB" );
