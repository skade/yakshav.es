require 'fileutils'

extension=".md"

puts "_sources/*#{extension}"

for f in Dir::glob("_sources/*#{extension}") do 
  puts f
  filename = File::basename(f, ".md")
  puts filename
  FileUtils::mkdir_p(filename)

  `pandoc "#{f}" -f markdown+smart --template _templates/page.template -s -o #{filename}/index.html`
end

`erb _templates/toc.md.erb > toc.md`

`pandoc README.md toc.md -f markdown+smart --template _templates/page.template -s -o index.html`
