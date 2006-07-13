#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp;

@ARGV || die "Uso: $0 <fichero a partir por trancos>\n";
my $text = read_file( $ARGV[0] ) ;
my @trancos=split("TRANCO", $text);

for (@trancos[1..$#trancos]){
  print substr($_,0,40), "\n", "-"x40, "\n";
}
