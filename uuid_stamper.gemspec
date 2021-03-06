$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "uuid_stamper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "uuid_stamper"
  s.version     = UuidStamper::VERSION
  s.authors     = ["Max Groenlund"]
  s.email       = ["max@synthmax"]
  s.homepage    = "http://synthmax.dk"
  s.summary     = "Add a uuid stamp at the end of a string."
  s.description = "Use when you paginate pages with not uniq identifiers."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency 'uuidtools'

  s.add_development_dependency "sqlite3"
end
