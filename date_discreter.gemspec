# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_discreter/version'

Gem::Specification.new do |spec|
  spec.name          = "date_discreter"
  spec.version       = DateDiscreter::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]
  spec.summary       = %q{Check discrete of months, days and hours}
  spec.description   = %q{Check discrete of months, days and hours}
  spec.homepage      = "https://github.com/sue445/date_discreter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'

  spec.add_development_dependency "bundler", ">= 1.5"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubydoctest", ">= 1.1.5"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "yard"
end
