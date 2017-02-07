# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'questrade_api/version'

Gem::Specification.new do |spec|
  spec.name          = "questrade_api"
  spec.version       = QuestradeApi::VERSION
  spec.authors       = ["Bruno Meira"]
  spec.email         = ["goesmeira@gmail.com"]
  spec.summary       = "An elegant Ruby gem to interact with Questrade API"
  spec.homepage      = 'https://github.com/brunomeira/questrade_api'

  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'webmock', '~> 2.3'
  spec.add_development_dependency 'rubocop', '~> 0.47'

  spec.add_dependency 'faraday', '~> 0.9'
end