# frozen_string_literal: true

require_relative "lib/xcresults_to_junit/version"

Gem::Specification.new do |spec|
  spec.name = "xcresults_to_junit"
  spec.version = XcresultsToJunit::VERSION
  spec.authors = ["Lasse Porsch"]
  spec.email = ["lasseporsch@gmail.com"]

  spec.summary = "A tool to convert Xcode xcresult files into JUnit"
  spec.description = "This is basically that 'trainer' used to do, but it works with the modern Xcode versions"
  spec.homepage = "https://github.com/lasseporsch/xcresults-to-junit"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lasseporsch/xcresults-to-junit"
  spec.metadata["changelog_uri"] = "https://github.com/lasseporsch/xcresults-to-junit/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Testing
  spec.add_development_dependency "rspec", "~> 3.11"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
