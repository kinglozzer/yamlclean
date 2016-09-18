# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yamlclean/version'

Gem::Specification.new do |spec|
  spec.name          = "yamlclean"
  spec.version       = YamlClean::VERSION
  spec.authors       = ["Sam Minnee"]
  spec.email         = ["sam.minnee@gmail.com"]

  spec.summary       = %q{Clean yaml files}
  spec.description   = %q{Clean issues out of yaml files. Thanks to yamllint.com and ya2yaml}
  spec.homepage      = "http://github.com/sminnee/yamlclean"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = [ "yamlclean" ]
  spec.require_paths = ["lib"]

  spec.add_dependency "ya2yaml"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
