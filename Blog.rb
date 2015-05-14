require 'erb'

page_title = "Hello.ERB."

ice_cream =[
"Rocky Road",
"Vanilla",
"Mint Chocoalte Chip",
"Moose Tracks",
"American Dream",
"Cherry Garcia",
"Cookie Dough",
"Reese's Pieces",
"Neapolitan"
]

template = ERB.new(File.read('index.html.erb'))
puts template.result #asking result of template-evaluates file and puts it

File.open('index.html', 'w') do |file| # w = write able
  file.write template.result
end  