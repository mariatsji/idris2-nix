export PATH="$coreutils/bin:$idris2/bin"
binary=idrisnix
mkdir $out
idris2 $src -o $binary
cp -r build/ $out 
