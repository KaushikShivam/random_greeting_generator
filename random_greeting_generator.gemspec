lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "random_greeting_generator/version"

Gem::Specification.new do |spec|
  spec.name          = "random_greeting_generator"
  spec.version       = RandomGreetingGenerator::VERSION
  spec.authors       = ["Shivam Kaushik"]
  spec.email         = ["shivam.kaushik@outlook.com"]

  spec.summary       = %q{A basic ruby gem I built to use it for my medium article}
  spec.description   = %q{Generates a random greeting along with a name that's provided in the argument}
  spec.homepage      = "http://www.github.com/KaushikShivam"
  spec.license       = "MIT"

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
end
