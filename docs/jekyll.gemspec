# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-hetnormo"
  spec.version       = "0.1.0"
  spec.authors       = ["MvL"]
  spec.email         = ["lemval@gmail.com"]

  spec.summary       = "Spec built for Het Normo to publish API specs."
  spec.homepage      = "https://github.com/hetnormo/jekyll-hetnormo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  # spec.add_runtime_dependency "jekyll", "~> 4.4"
end
