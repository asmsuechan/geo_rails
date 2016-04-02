$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "geo_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "geo_api"
  s.version     = GeoApi::VERSION
  s.authors     = ["末永良太"]
  s.email       = ["suenagaryoutaabc@gmail.com"]
  s.homepage    = "http://hyottokoaloha.hatenablog.com"
  s.summary     = "You can get geolocation easily"
  s.description = "This gem gets geolocation data by using html5 geolocation api"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
