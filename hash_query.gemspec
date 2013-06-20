# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "hash_query"
  spec.version       = '0.0.1'
  spec.authors       = ["Alberto F. Capel"]
  spec.email         = ["afcapel@gmail.com"]
  spec.description   = %q{Query nested hashed using glob expressions}
  spec.summary       = %q{Query nested hashed using glob expressions}
  spec.homepage      = "https://github.com/afcapel/query_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
