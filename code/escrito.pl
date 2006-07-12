#!/usr/bin/perl

my $leyendo = shift 
  || die "Uso: $0 <nombre de fichero>\n";
open my $fh, "<", $leyendo 
  || die "No puedo abrir el fichero $leyendo por $!\n";
while (<$fh>) {
  print "$. $_\n";
}
close $fh;
