# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipeworks/version'

Gem::Specification.new do |spec|
  spec.name          = "pipeworks"
  spec.version       = Pipeworks::VERSION
  spec.authors       = ["Gustavo Bastos"]
  spec.email         = ["gustavo.bastos@corp.globo.com"]

  spec.summary       = %q{Pipeworks is a framework for modeling your tasks as a workflow or pipeline}
  spec.homepage      = "https://pipeworks.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bunny", ">= 2.6.2"
  spec.add_dependency "serverengine", ">= 2.0.4"
  spec.add_dependency "thread", ">= 0.2.2"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
