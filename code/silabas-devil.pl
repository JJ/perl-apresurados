#!/usr/bin/perl

use Lingua::ES::Silabas;

my $str=<<EOC;
Yo soy, señor Licenciado, que estoy en esta redoma, adonde me tiene
preso ese astrólogo que vive ahí abajo, porque también tiene su punta
de la mágica negra, y es mi alcaide dos años habrá.
EOC
print join(" / ", silabas(join("", split(/\s+/,$str))));
