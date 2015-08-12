Gem::Specification.new do |spec|
  spec.name          = "gem_x"
  spec.version       = '0.0.1'
  spec.authors       = ["Sveinn"]
  spec.email         = ["Sveinn@appfolio.com"]
  spec.summary       = '.'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
end
