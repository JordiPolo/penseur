# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'penseur/version'

Gem::Specification.new do |spec|
  spec.name          = "penseur"
  spec.version       = Penseur::VERSION
  spec.authors       = ["Jordi Polo"]
  spec.email         = ["mumismo@gmail.com"]
  spec.summary       = %q{A tool to compare versions between two Gemlock files}
  spec.description   = %q{A tool to compare versions between two Gemlock files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "byebug", "~> 3.5"
end
