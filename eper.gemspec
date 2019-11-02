require_relative 'lib/eper/version'


Gem::Specification.new do |spec|
  spec.name          = "eper"
  spec.version       = Eper::VERSION
  spec.authors       = ["Szabolcs Toth"]
  spec.email         = ["tsz@purzelbaum.hu"]

  spec.summary       = %q{API wrapper for football-data.org}
  spec.description   = %q{API wrapper for web applications, which is fed by football-data.org. You need your own API key.}
  spec.homepage      = "http://eper-gem.herokuapp.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kicsipixel/eper"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "faraday", "~> 0.17.0"
  spec.add_dependency "json", "~> 2.2.0"
end
