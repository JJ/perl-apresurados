#!/usr/bin/perl

use Lingua::ES::Silabas;

my $str=<<EOC;
Yo soy, se�or Licenciado, que estoy en esta redoma, adonde me tiene
preso ese astr�logo que vive ah� abajo, porque tambi�n tiene su punta
de la m�gica negra, y es mi alcaide dos a�os habr�.
EOC
print join(" / ", silabas(join("", split(/\s+/,$str))));
