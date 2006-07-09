NAME=perl-apresurados
VERSION=1.0
SOURCE=perl-apresurados.sgml
FILES=perl-apresurados.sgml Makefile code/hola.pl code/hola.py code/hola.rb code/hola-y-duerme.pl utils/hilite-dbk.pl utils/nocorchetes.pl img/e-p-i-c.png  img/gvim-perl.png  img/hola_pl_emacs.png

all: html pdf rtf

html: $(SOURCE)
	db2html ${SOURCE}

pdf:  $(SOURCE)
	db2pdf ${SOURCE}

rtf:  $(SOURCE)
	db2rtf ${SOURCE}

dist: $(NAME)-$(VERSION).tgz

$(NAME)-$(VERSION).tgz: $(FILES)
	tar cvfz  $(NAME)-$(VERSION).tgz $(FILES)

bk: 
	cp $(SOURCE) perl-apresurados-`date +%F`.sgml