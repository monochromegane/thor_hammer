# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thor_hammer/version'

Gem::Specification.new do |gem|
  gem.name          = "thor_hammer"
  gem.version       = ThorHammer::VERSION
  gem.authors       = ["monochromegane"]
  gem.email         = ["dev.kuro.obi@gmail.com"]
  gem.description   = %q{ThorHammer provides web api for your Thor CLI.}
  gem.summary       = %q{ThorHammer provides web api for your Thor CLI.}
  gem.homepage      = "https://github.com/monochromegane/thor_hammer"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "thor"
end
