$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hornet_fragments/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hornet_fragments"
  s.version     = HornetFragments::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HornetFragments."
  s.description = "TODO: Description of HornetFragments."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
