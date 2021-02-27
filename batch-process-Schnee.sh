#! /bin/sh

for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WORD_COUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    echo "Processing $f file..."
    echo "	Word Count: $WORD_COUNT"
    echo "	 File Size: $SIZE"
    echo ""
  fi
done
