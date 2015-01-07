$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "waitlist/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "waitlist"
  s.version     = Waitlist::VERSION
  s.authors     = ["The Garage"]
  s.homepage    = "https://github.com/thegarage"
  s.summary     = "Pre-launch email waiting list"
  s.description = "Pre-launch email waiting list"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 4.1.0"
  s.add_dependency "responders"
  s.add_dependency "email_validator"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "ammeter"
end
