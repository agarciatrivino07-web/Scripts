#!/bin/bash

act="act"
if [ -d "$act" ]; then
	rm -rf "$act"
fi
	mkdir "$act"
	mkdir -p act/empresa/anual
	touch act/empresa/anual/a.txt
	touch act/empresa/anual/b.txt
	mkdir -p act/empresa/semanal
	mkdir -p act/personal/documentos
	mkdir -p act/personal/imagenes
	touch act/personal/documentos/colectivo.txt
	touch act/personal/documentos/personal.txt
	#touch act/personal/general.txt

cat > act/personal/general.txt <<EOF
Manuel;Segovia;2SMR;19
Juan;Madrid;1SMR;18
Julia;Badajoz;2SMR;19
Javier;Oviedo;2SMR;20
Maria;Portugal;2SMR;10
Pepe;Valencia;1SMR;23
Alex;Galicia;2SMR;22
EOF
	

echo "Líneas con 'A': "
grep "A" act/personal/general.txt

tree act

cp act/personal/documentos/colectivo.txt /home/axel07/github/github/Scripts/act/empresa
tree act

mv act/personal/documentos/colectivo.txt /home/axel07/github/github/Scripts/act/empresa/colectivoempresarial.txt
tree act

ls act/empresa/anual
cd act/empresa/anual
chmod ugo+r a.txt
pwd
cd ../../..
ls -l act/empresa/anual
cd act/empresa/anual/
tar -czvf bianual.tar.gz a.txt b.txt
tree
cd ../../..
tree act
mv act/empresa/anual/bianual.tar.gz /home/axel07/github/github/Scripts/act/empresa
cd act/empresa
tar -xvf bianual.tar.gz
cd ../..
tree act

if [ -f "$ACT"]; then
	rm -rf "$ACT"
fi

tree act > ACT.txt
cat ACT.txt