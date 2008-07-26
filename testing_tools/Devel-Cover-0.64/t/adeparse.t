#!perl

# Copyright 2002-2008, Paul Johnson (pjcj@cpan.org)

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

use strict;
use warnings;

use lib "/Users/jasonn/atlanta-pm-code/testing_tools/Devel-Cover-0.64/lib";
use lib "/Users/jasonn/atlanta-pm-code/testing_tools/Devel-Cover-0.64/blib/lib";
use lib "/Users/jasonn/atlanta-pm-code/testing_tools/Devel-Cover-0.64/blib/arch";
use lib "/Users/jasonn/atlanta-pm-code/testing_tools/Devel-Cover-0.64/t";

use Devel::Cover::Test 0.64;

Devel::Cover::Test->new("deparse");
