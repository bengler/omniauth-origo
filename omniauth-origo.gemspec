# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth-origo/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-origo"
  gem.version       = OmniAuth::Origo::VERSION
  gem.authors       = ["Per-Kristian Nordnes"]
  gem.email         = ["per.kristian.nordnes@gmail.com"]
  gem.description   = %q{Official OmniAuth OAuth 2 strategy for Origo.}
  gem.summary       = %q{Official OmniAuth OAuth 2 strategy for Origo.}
  gem.homepage      = "https://github.com/origo/omniauth-origo"

  gem.add_runtime_dependency     'omniauth-oauth2', '~> 1.2'
  gem.add_dependency             'multi_json'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rack-test'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
end
