# encoding: utf-8
require "./lib/sanitize_with_deprecated/version"

Gem::Specification.new do |spec|
  spec.name     = "sanitize_with_deprecated"
  spec.summary  = "Relaxed Sanitize config supporting deprecated tags"
  spec.version  = SanitizeWithDeprecated::VERSION
  spec.authors  = ["Stephen O’Brien"]
  spec.email    = ["stepheno@gmail.com"]
  spec.homepage = "https://github.com/steobrien/sanitize_with_deprecated"
  spec.licenses  = ["MIT"]

  spec.description = "A relaxed configuration for Sanitize supporting deprecated, but still commonly-used, HTML tags"

  spec.add_dependency "sanitize", "~> 4.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.require_paths = ["lib"]

  spec.files = [
    "LICENSE",
    "README.md"
  ] + Dir.glob("lib/**/*.rb")
end
