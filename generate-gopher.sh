#!/bin/sh
# Converts md-files to text files for gopher
# Depends on pandoc
DIRS=`find . -type d -mindepth 1 | grep -v git`

for dir in $DIRS
do
  FILES=`find $dir -name \*.md`
  echo $FILES
  for filename in $FILES
  do
    file="${filename%.*}"
    pandoc -f markdown -t plain $file.md > $file.txt
  done
done

pandoc -f markdown -t plain README.md > til.txt
sed -i'.bak' -e 's/\.md/\.txt/g' til.txt
rm til.txt.bak

FILES=`find . -name \*.txt`
for file in $FILES
do
  DIR=$(dirname "${file}")
  mkdir -p ~/gopher/til/$DIR
  mv $file ~/gopher/til/$file
done

