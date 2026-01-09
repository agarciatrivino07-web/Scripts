#!/bin/bash

Musica="Musica"

if [ -d "$Musica" ]; then
	rm -rf "$Musica"
fi

mkdir "$Musica"
mkdir -p Musica/BSO
mkdir -p Musica/Clasica/Barroca
mkdir -p Musica/Metal/Heavy
mkdir -p Musica/Pop
mkdir -p Musica/Rock/Gotico
mkdir -p Musica/Rock/Progresivo

tree Musica

touch Musica/Metal/Heavy/TiposHeavy.txt
cat > Musica/Metal/Heavy/TiposHeavy.txt <<EOF
7.5.1 Doom metal.
7.5.2 Thrash heavy metal.
7.5.3 Death metal.
7.5.4 Black heavy metal.
7.5.5 Power metal.
EOF
echo "Contenido del archivo txt de TiposHeavy.txt"
cat Musica/Metal/Heavy/TiposHeavy.txt
chmod 777 Musica/Metal/Heavy/TiposHeavy.txt
ls -l Musica/Metal/Heavy/TiposHeavy.txt

echo "Líneas que contienen la letra 'o' del fichero de texto:"
grep "o" Musica/Metal/Heavy/TiposHeavy.txt
echo "Lineas que contienen la palabra 'heavy' del fichero de texto:"
grep -i "heavy" Musica/Metal/Heavy/TiposHeavy.txt

touch Musica/Rock/Gotico/gothabilly.txt
less Musica/Rock/Gotico/gothabilly.txt

if [ -f "TREE.txt" ]; then
	rm -rf "TREE.txt"
fi

tree Musica > TREE.txt
cat TREE.txt
