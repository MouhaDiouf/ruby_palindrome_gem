# frozen_string_literal: true

require_relative "lib/mouha_palindrome/version"

Gem::Specification.new do |spec|
  spec.name = "mouha_palindrome"
  spec.version = MouhaPalindrome::VERSION
  spec.authors = ["Mouha"]
  spec.email = ["mouha@example.com"]

  spec.summary = "Palindrome detector"
  spec.description = "Learn enough Ruby palindrome detector"
  spec.homepage = "https://github.com/MouhaDiouf/ruby_palindrome_gem"
  spec.required_ruby_version = ">= 2.6.0"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  #spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

end
