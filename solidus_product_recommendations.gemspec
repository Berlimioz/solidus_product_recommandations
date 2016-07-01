# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_product_recommendations/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_product_recommendations'
  s.version     = SolidusProductRecommendations::VERSION
  s.summary     = "Add product recommendations support to Solidus"
  s.description = ""
  s.license     = "MIT"

  s.authors     = ["Berlimioz"]
  s.email       = ["berlimioz@gmail.com"]
  s.homepage    = "https://github.com/Berlimioz/solidus_product_recommendations"

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus', '~> 1.3.0'
  s.add_dependency 'deface'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.37.2'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
