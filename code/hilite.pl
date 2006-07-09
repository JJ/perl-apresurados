#!/usr/bin/perl

use Syntax::Highlight::Perl ':FULL';  # or ':FULL'

local($/);
my $str = <>;
print format_string($str);


