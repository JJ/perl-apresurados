#!/usr/bin/perl

use strict;
use warnings;

my $leyendo = shift
  || die "Uso: $0 <nombre de fichero>\n";
open my $fh, "<", $leyendo 
  or die "No puedo abrir el fichero $leyendo por $!\n";
while (<$fh>) {
  print "$. $_";
}
close $fh;
