# frozen_string_literal: true

require_relative "lib/earnest_copyright/version"

Gem::Specification.new do |spec|
  spec.name          = "earnest_copyright"
  spec.version       = EarnestCopyright::VERSION
  spec.authors       = ["Ernest Addae"]
  spec.email         = ["earnestaddae@gmail.com"]

  spec.summary       = "Adds a HTML generated copyright to a rails application"
  spec.description   = "Contains the features that enable you to add copyright"
  spec.homepage      = "https://www.earnestaddae.me"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "https://mygemserver.com'/api/v1/api_key"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/earnestaddae/earnest_copyright"
  spec.metadata["changelog_uri"] = "https://www.earnestaddae.me"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
