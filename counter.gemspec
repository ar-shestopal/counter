# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'counter/version'

Gem::Specification.new do |spec|
  spec.name          = "counter"
  spec.version       = Counter::VERSION
  spec.authors       = ["Olexandr Shestopal"]
  spec.email         = ["ar.shestopal@gmail.com"]
  spec.summary       = %q{Counts number of instances added to the  database.}
  spec.description   = %q{Gem is intended to count number of instances cretaed, using. It createds dayly real time metrics for a given nodel. Inspired by http://blog.getspool.com/2011/11/29/fast-easy-realtime-metrics-using-redis-bitmaps}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
