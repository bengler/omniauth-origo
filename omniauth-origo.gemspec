# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth-origo/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Per-Kristian Nordnes"]
  gem.email         = ["per.kristian.nordnes@gmail.com"]
  gem.description   = %q{A OAuth (1.0/1.0a) strategy for Origo.}
  gem.summary       = %q{A OAuth (1.0/1.0a) strategy for Origo.}
  gem.homepage      = "https://github.com/origo/omniauth-origo"

  gem.add_runtime_dependency     'omniauth', '~> 1.0.0.rc2'
  gem.add_runtime_dependency     'omniauth-oauth', '~> 1.0.0.rc2'
  gem.add_runtime_dependency     'oauth'
  # gem.add_development_dependency 'rspec', '~> 2.6'
  # gem.add_development_dependency 'webmock'
  # gem.add_development_dependency 'simplecov'
  # gem.add_development_dependency 'rack-test'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-origo"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Origo::VERSION
end
