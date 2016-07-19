for f in _sources/*.md; do
  filename=$(basename "$f")
  filename="${filename%.*}"
  mkdir -p $filename
  pandoc "$f" --template _sources/page.template -s -o "${filename}/index.html";
done

