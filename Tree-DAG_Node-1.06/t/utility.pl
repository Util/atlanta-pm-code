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

# Returns space delimited list of the names of specified nodes (0 or
#   more nodes allowed)
# Usage: node_names(node1, node2,...)
sub node_names {
    my (@nodes) = @_;
    return join ' ', map { $_->name } @nodes;
}

# Returns space delimited, sorted list of the names of specified
#   nodes (0 or more nodes allowed) - sorting for when order is not
#   specified
# Usage: sorted_node_names(node1, node2,...)
sub sorted_node_names {
    my (@nodes) = @_;
    return join ' ', sort( map { $_->name } @nodes);
}

# Returns a cannonical serialized representation of tree branches as
#   a string from specified node - this is useful in testing whether
#   the state of a sub-tree matches expectations
# Usage: display_child_tree(node)
sub display_child_tree {
    my ($node) = @_;
    my @tree;
    push(@tree, $node->name);
    if ($node->daughters) {
        push(@tree, '{');
        for my $child ($node->daughters) {
            push(@tree, display_child_tree($child));
        }
        push(@tree, '}');
    }
    join(' ', @tree);
}

# Add nodes to a specified parent node from a list of names (0 or
#   more names) - useful in creating complex trees
# Usage: add_children(nodes, parent-name, name1, name2,...)
sub add_children {
    my ($nodes, $parent, @names) = @_;
    $parent = $$nodes{$parent};
    for my $name (@names) {
        my $child = Tree::DAG_Node->new( { name => $name } );
        $parent->add_daughters( $child );
        $$nodes{$name} = $child;
    }
}

# Create a list of unrelated named nodes from a list of names
# Usage: node_pool(name1, name2,...)
sub node_pool {
    my (@names) = @_;
    my @nodes = ();
    for my $name (@names) {
        push(@nodes, Tree::DAG_Node->new( { name => $name } ));
    }
    return @nodes;
}

# Common test trees:

# Create a two generation tree with "n" daughters
# Usage: tree_simple(n)

#           root
#            |
#    /-------+-------\
#    |       |       |
#    A     [...]     Z

sub tree_simple {
    # Build tree for testing.
    my ($daughter_count) = @_;
    my %nodes;
    $nodes{root} = Tree::DAG_Node->new( { name => 'root' } );
    my $name = 'A';
    my @names = ();
    if ($daughter_count) {
        while ($daughter_count--) {push(@names, $name++)}
        add_children(\%nodes, 'root', @names);
    }
    return %nodes;
}

# Create a complex four generation tree

#               root
#                |
#        /-------+-------\
#        |       |       |
#        A       B       C
#        |       |       |
#    /---+---\   |   /---+---\
#    |   |   |   |   |   |   |
#    AA  AB  AC  BA  CA  CB  CC
#        |           |
#   /----+----\    /---\
#   |    |    |    |   |
#  ABA  ABB  ABC  CAA CAB

# = root { A { AA AB { ABA ABB ABC } AC } B { BA } C { CA { CAA CAB } CB CC } }

sub tree_complex {
    my %nodes = tree_simple(3);
    add_children(\%nodes, 'A', 'AA', 'AB', 'AC');
    add_children(\%nodes, 'B', 'BA');
    add_children(\%nodes, 'C', 'CA', 'CB', 'CC');
    add_children(\%nodes, 'AB', 'ABA', 'ABB', 'ABC');
    add_children(\%nodes, 'CA', 'CAA', 'CAB');
    return %nodes;
}

1;
