# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant/smartos/guest/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-smartos-guest"
  spec.version       = Vagrant::Smartos::Guest::VERSION
  spec.authors       = ["Eric Saxby"]
  spec.email         = ["sax@livinginthepast.org"]
  spec.summary       = %q{Allow Vagrant to detect SmartOS guests and guest capabilities}
  spec.description   = %q{Allow Vagrant to detect SmartOS guests and guest capabilities}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
