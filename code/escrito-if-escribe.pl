#!/usr/bin/perl

use strict;
use warnings;

my $leyendo = "diablocojuelo.txt";
if ( ! -r $leyendo ) {
  die "El fichero $leyendo no es legible\n";
}
open my $fh, "<", $leyendo 
  or die "No puedo abrir el fichero $leyendo por $!\n";
open my $fh_out, ">", "$leyendo-out" 
  or die "No puedo abrir el fichero $leyendo-out por $!\n";
while (<$fh>) {
  chop; chop;
  print $fh_out "$. " if $_;
  print $fh_out "$_\n";
}
close $fh;
close $fh_out;
