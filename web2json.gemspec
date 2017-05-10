# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'web2json/version'

Gem::Specification.new do |spec|
  spec.name          = 'web2json'
  spec.version       = Web2json::VERSION
  spec.authors       = ['mitakeck']
  spec.email         = ['mitake.ck@gmail.com']

  spec.summary       = 'web2json is tiny cli web scrape tool'
  spec.description   = 'web2json is tiny cli web scrape tool'
  spec.homepage      = 'https://github.com/mitakeck/web2json'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir = 'bin'
  spec.executables << 'web2json'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',  '~> 1.14'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'thor',     '~> 0.19.4'
  spec.add_development_dependency 'higokami', '~> 0.1.0'
end
