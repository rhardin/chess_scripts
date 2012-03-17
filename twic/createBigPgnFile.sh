#!/bin/bash
echo "archive files..."
for file in `echo *.zip`; do
    cp ${file} archive/${file}
done

echo "unzipping files..."
for file in `echo *.zip*`; do
    unzip ${file}
    rm ${file}
done

echo "writing big.png..."    
cat *.pgn > big.pgn

rm twic*.pgn
for x in `echo twic*`; do
    cat $x/games/*.pgn >> big.pgn
    rm -rf $x
done
echo "done"
