lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "album_reviews/version"

Gem::Specification.new do |spec|
  spec.name          = "album_reviews"
  spec.version       = AlbumReviews::VERSION
  spec.authors       = ["Mic Fox"]
  spec.email         = ["michael.c.fox.ii@gmail.com"]

  spec.summary       = %q{unsure of short summary}
  spec.description   = %q{unsure of longer description}
  spec.homepage      = "http://www.mcfii.com"

  spec.metadata["allowed_push_host"] = "http://www.mcfii.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.mcfii.com"
  spec.metadata["changelog_uri"] = "http://www.mcfii.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
