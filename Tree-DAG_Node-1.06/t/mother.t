#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test mother() with a 1 daughter simple tree
%nodes = tree_simple(1);

is(ref($nodes{A}->mother), ref($nodes{root}), 'Child->mother() subroutine returns the correct parent node'); 
