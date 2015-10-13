# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'train/version'

Gem::Specification.new do |spec|
  spec.name          = 'train'
  spec.version       = Train::VERSION
  spec.authors       = ['Dominik Richter']
  spec.email         = ['dominik.richter@gmail.com']
  spec.summary       = 'Transport interface to talk to different backends.'
  spec.description   = File.read('README.md')
  spec.homepage      = 'https://github.com/chef/train/'
  spec.license       = 'Proprietary'

  spec.files         = `hash git 2>/dev/null && git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'json', '~> 1.8'
  spec.add_dependency 'mixlib-shellout', '~> 2.1'
  spec.add_dependency 'net-ssh', '~> 2.9'
  spec.add_dependency 'net-scp', '~> 1.2'
  spec.add_dependency 'winrm', '~> 1.3'
  spec.add_dependency 'winrm-transport', '~> 1.0'

  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'minitest', '~> 5.8'
  spec.add_development_dependency 'rubocop', '~> 0.34'
end
