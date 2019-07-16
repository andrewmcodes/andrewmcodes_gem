
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "andrewmcodes/version"

Gem::Specification.new do |spec|
  spec.name          = "andrewmcodes"
  spec.version       = Andrewmcodes::VERSION
  spec.authors       = ["Andrew Mason"]
  spec.email         = ["masonam96@outlook.com"]

  spec.summary       = "Create your ruby andrewmcodes"
  spec.description   = "Generates a gem for your andrewmcodes"
  spec.homepage      = "https://github.com/andrewmcodes/andrewmcodes"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rubocop", "~> 0.73.0"

  spec.add_dependency "artii"
  spec.add_dependency "lolcat"
end
