for f in _sources/*.md; do
  filename=$(basename "$f")
  filename="${filename%.*}"
  mkdir -p $filename

  pandoc "$f" --template _templates/page.template -s -o "${filename}/index.html";
done

erb _templates/toc.md.erb > toc.md

pandoc README.md toc.md --template _templates/page.template -s -o index.html;
