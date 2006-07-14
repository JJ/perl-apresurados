#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;
my $fichero_a_procesar = shift 
  || die "Uso: $0 <nombre de fichero>n";
my $texto = read_file($fichero_a_procesar) 
  || die "No puedo abir el fichero. Error $!\n";

my @nombres_propios = ($texto =~ /([A-Z]\w+(?:\s+[A-Z]\w+){1,3})/gs);

for (@nombres_propios) {
  print $_
}
