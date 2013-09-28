$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hornet/fragments/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hornet_fragments"
  s.version     = Hornet::Fragments::VERSION
  s.authors     = ["Scott Arthur"]
  s.email       = ["scott@scottatron.com"]
  s.homepage    = "http://github.com/scottatron"
  s.summary     = "Hornet::Fragments."
  s.description = "Hornet::Fragments."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  
  s.add_dependency "hornet_core"

  s.add_development_dependency "sqlite3"
end
