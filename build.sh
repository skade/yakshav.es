#!/bin/bash

set -e

extension=".md"

for f in _sources/*$extension; do
  filename=$(basename "$f" $extension)
  mkdir -p $filename

  pandoc "$f" --smart --template _templates/page.template -s -o "${filename}/index.html";
done

erb _templates/toc.md.erb > toc.md

pandoc README.md toc.md --smart --template _templates/page.template -s -o index.html;
