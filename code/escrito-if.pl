#!/usr/bin/perl

use strict;
use warnings;

my $leyendo = shift
  || die "Uso: $0 <nombre de fichero>\n";
if ( ! -r $leyendo ) {
  die "El fichero $leyendo no es legible\n";
}
open my $fh, "<", $leyendo 
  or die "No puedo abrir el fichero $leyendo por $!\n";
while (<$fh>) {
  chop; chop;
  print "$. " if $_;
  print "$_\n";
}
close $fh;
