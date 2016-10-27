$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "model_gen/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "model_gen"
  s.version     = ModelGen::VERSION
  s.authors     = ["Atharva System"]
  s.email       = ["contact@atharvasystem.com"]
  s.homepage    = "https://github.com/atharvasystem/model_gen"
  s.summary     = "Model Generator using GUI."
  s.description = "Create model in application using required details submitted from gui form."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
end
