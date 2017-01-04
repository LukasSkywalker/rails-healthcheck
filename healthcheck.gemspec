$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "healthcheck/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "healthcheck"
  s.version     = Healthcheck::VERSION
  s.authors     = ["Lukas_Skywalker"]
  s.email       = ["lukas.diener@hotmail.com"]
  s.homepage    = "https://lukasdiener.ch"
  s.summary     = "Summary of Healthcheck."
  s.description = "Description of Healthcheck."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.1.0"

  s.add_development_dependency "pg"
end
