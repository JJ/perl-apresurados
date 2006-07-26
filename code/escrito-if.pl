#!/usr/bin/perl

use strict;
use warnings;

my $leyendo = "diablocojuelo.txt";
if ( ! -r $leyendo ) {
  die "El fichero $leyendo no es legible\n";
}
open my $fh, "<", $leyendo 
  or die "No puedo abrir el fichero $leyendo porque $!\n";
while (<$fh>) {
  chop; chop;
  print "$. " if $_;
  print "$_\n";
}
close $fh;
