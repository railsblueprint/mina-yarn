# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/yarn/version'

Gem::Specification.new do |spec|
  spec.name          = 'mina-yarn'
  spec.version       = Mina::Yarn::VERSION
  spec.authors       = ['Vladimir Elchinov']
  spec.email         = ['elik@elik.ru']

  spec.summary       = %q{Mina plugin for Yarn}
  spec.description   = %q{Mina plugin for Yarn}
  spec.homepage      = 'https://github.com/railsblueprint/mina-yarn'
  spec.license       = 'MIT'


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'mina', '~> 1.0'
end
