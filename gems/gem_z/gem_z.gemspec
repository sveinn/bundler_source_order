Gem::Specification.new do |spec|
  spec.name          = "gem_z"
  spec.version       = '0.0.1'
  spec.authors       = ["Sveinn"]
  spec.email         = ["Sveinn@appfolio.com"]
  spec.summary       = 'gem_z depends on gem_x'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
end
