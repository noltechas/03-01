#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "File size: $SIZE"
    echo "Word Count: $(wc -w "$f" | cut -d' ' -f 1)"
  fi
done