require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('iching', '0.0.1') do |p|
  p.description    = "Generate an Iching hexagram and access various things about it."
  p.url            = "https://github.com/mattmills/iching"
  p.author         = "Matt Mills"
  p.email          = "sunrisetimes@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
