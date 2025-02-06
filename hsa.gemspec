# frozen_string_literal: true

require_relative "lib/hsa/version"

Gem::Specification.new do |spec|
  spec.name = "hsa"
  spec.version = Hsa::VERSION
  spec.authors = ["Jason Kim"]
  spec.email = ["iamjsonkim@gmail.com"]

  spec.summary = "HSA calculator"
  spec.description = "Calculate the US federal tax savings by contributing to a HSA account."
  spec.homepage = "https://github.com/serv/hsa"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end

  # If you want to explicitly list the JSON file:
  spec.files += ["data/hsa_max_contribution.json"]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "us_income_tax", "~> 0.1.0", ">= 0.1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
