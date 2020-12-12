# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "iching"
  s.version     = "0.2.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matt Mills"]
  s.email       = ["sunrisetimes@gmail.com"]
  s.homepage    = "http://github.com/mattmills/iching"
  s.summary     = "tell the future (but not really)"
  s.description = "Generate an Iching hexagram and access various things about it."
  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.license = 'MIT'
end
