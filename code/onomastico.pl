#!/usr/bin/perl

use strict;
use warnings;

my $fichero_a_procesar = shift 
  || die "Uso: $0 <nombre de fichero>n";
open my $fh, "<", $fichero_a_procesar
  || die "No puedo abir el fichero. Error $!\n";

my %indice;
while(<$fh>) {
  if ( /[Dd]on ([A-Z][a-zαινσϊρ]+)/ ) {
    $indice{$1} .= "$. ";
  }
}

for (sort {$a cmp $b} keys %indice ) {
  print "*Don $_\n\t$indice{$_}\n";
}
