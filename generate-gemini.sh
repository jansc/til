#!/bin/sh
# Converts md-files to gemini files
# Gemini is a new internet protocol, see https://gemini.circumlunar.space/
# for details.
# md2gemini is available trough "pip install md2gemini"
DIRS=`find . -type d -mindepth 1 | grep -v git`

for dir in $DIRS
do
  FILES=`find $dir -name \*.md`
  echo $FILES
  for filename in $FILES
  do
    file="${filename%.*}"
    md2gemini $file.md > $file.gmi
    #pandoc $file.md > $file.gmi
  done
done

md2gemini README.md > til.gmi
sed -i'.bak' -e 's/\.md/\.gmi/g' til.gmi
rm til.gmi.bak

FILES=`find . -name \*.gmi`
for file in $FILES
do
  DIR=$(dirname "${file}")
  mkdir -p ~/gemini/$DIR
  mv $file ~/gemini/$file
done

