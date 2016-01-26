#!/bin/env sh

srlua='webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/5.3/srlua.tar.gz'
optdir="/opt/luapacker"
bindir="/usr/bin/luapacker"

luapacker="./luapacker.sh"

if [ ! -d "srlua" ]; then
    echo "./srlua doesn't exist, downloading it"
    sleep 0.1
    wget $srlua
    tar xvzf srlua.tar.gz
    rm -rf srlua.tar.gz
fi

echo ""
echo "Compiling srlua"
sleep 0.1
echo ""

cd ./srlua
make clean #clean
make srlua #compile srlua
make glue #compile glue
cd ..

sleep 1
if [ ! -d "$optdir" ]; then
    echo "$optdir doesn't exist, creating it"
    mkdir $optdir
fi

echo "Moving glue and srlua to $optdir"
mv ./srlua/srlua ./srlua/glue $optdir

echo "Removing ./srlua"
sleep 0.5
rm -rf ./srlua

echo "Moving script to $bindir"
cp $luapacker $bindir
echo "$optdir/glue $optdir/srlua \$in \$out" >> $bindir
echo "Giving executable permissions to $bindir"
chmod +x $bindir

