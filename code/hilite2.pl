#!/usr/bin/perl

use Syntax::Highlight::Engine::Kate::Perl;
my $sh = new Syntax::Highlight::Engine::Kate::Perl;

local($/);
my $str = <>;

print $sh->highlightText( $str);
