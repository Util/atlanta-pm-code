#!/usr/bin/perl
use strict;
use warnings;

=begin comments

This file contains utility functions that simplify testing.
To use, include the file into the .t file with:
    do 't/utility.pl' or die;

These functions depend on the following methods of Tree::DAG_Node:
  daughters
  add_daughters
  name
  new

=end comments

=cut


sub daughter_names {
    my ($node) = @_;
    return node_names($node->daughters);
}

sub node_names {
    my (@nodes) = @_;
    return join ' ', map { $_->name } @nodes;
}

sub build_tree {
    # Build tree for testing.
    my ($daughter_count) = @_;
    my $mother = Tree::DAG_Node->new( { name => 'mother' } );
    my @daughters = ();
    if ($daughter_count) {
        my $name = 'A';
        for ( 1..$daughter_count ) {
            my $daughter = Tree::DAG_Node->new( { name => $name++ } );
            $mother->add_daughters( $daughter );
            push( @daughters, $daughter );
        }
    }
    return ($mother, @daughters);
}

1;
