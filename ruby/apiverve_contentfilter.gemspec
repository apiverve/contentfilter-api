# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_contentfilter"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Content Filter API - Ruby Client"
  spec.description   = "Content Filter checks URLs against a comprehensive blocklist of 200,000+ domains categorized as ads-malware, fake news, gambling, adult content, or social media. Returns the specific category for blocked domains, plus every category a domain appears in across a 1.7M-domain index."
  spec.homepage      = "https://apiverve.com/marketplace/contentfilter?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/contentfilter-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/contentfilter"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
