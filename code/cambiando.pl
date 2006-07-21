#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp;

my %roles = (
	     Madrid => 'el foro',
	     'Cleof[áa]s' => 'El prota',
	     '[Ee]l [Dd]iablo [Cc]ojuelo' => 'Su Satánica Majestad' ,
	    );

my $fichero_a_procesar = shift 
  || die "Uso: $0 <nombre de fichero>n";

my $texto=read_file($fichero_a_procesar);

for ( keys %roles ) {
  $texto =~ s/$_/$roles{$_}/g;
}

print $texto;
