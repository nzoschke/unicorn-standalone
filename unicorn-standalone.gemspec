# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unicorn/standalone/version'

Gem::Specification.new do |spec|
  spec.name          = "unicorn-standalone"
  spec.version       = Unicorn::Standalone::VERSION
  spec.authors       = ["Noah Zoschke"]
  spec.email         = ["nzoschke@gmail.com"]
  spec.description   = %q{Standalone nginx/unicorn web server}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.files        += %w(ext/nginx/Rakefile ext/nginx/Makefile)

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "unicorn", "~> 4.6"
  spec.extensions    = %w(ext/nginx/Rakefile)
end
