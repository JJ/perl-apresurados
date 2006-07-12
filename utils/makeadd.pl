#!/usr/bin/perl

#Programa para añadir nuevos ficheros al Makefile

use File::Slurp;

my $text = read_file( 'Makefile' ) ;

@ARGV  || die "Uso: $0 <fichero>\n";

for ( @ARGV ) {
  my ($cmd) = split("/", $_ );
  my $varname = uc $cmd;
  $text =~ s/$varname=/$varname= $_ /;
}
write_file('Makefile',$text);
