# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'naga/version'

Gem::Specification.new do |spec|
  spec.name          = "naga"
  spec.version       = Naga::VERSION
  spec.authors       = ["Ricardo Díaz"]
  spec.email         = ["ricardotk002@gmail.com"]

  spec.summary       = %q{Naga is a minimal rack-based web framework.}
  spec.description   = %q{Naga is a minimal rack-based web framework.}
  spec.homepage      = "http://rdiaz.me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "minitest"
end
