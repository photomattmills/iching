# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{iching}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Mills"]
  s.date = %q{2010-11-08}
  s.description = %q{Generate an Iching hexagram and access various things about it.}
  s.email = %q{sunrisetimes@gmail.com}
  s.extra_rdoc_files = ["lib/iching.rb", "lib/readme.markdown"]
  s.files = ["Manifest", "Rakefile", "lib/iching.rb", "lib/readme.markdown", "iching.gemspec"]
  s.homepage = %q{https://github.com/mattmills/iching}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Iching"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{iching}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Generate an Iching hexagram and access various things about it.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
