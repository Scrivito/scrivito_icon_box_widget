$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrivito_icon_box/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "scrivito_icon_box"
  s.version     = ScrivitoIconBox::VERSION
  s.authors     = ["Gert Geidel"]
  s.email       = ["gert.geidel@infopark.de"]
  s.homepage    = "https://scrivito.com"
  s.summary     = "Widget for scrivito to display an icon in a box."
  s.description = "Widget for scrivito to display an icon in a box."
  s.license     = "LPGL-3"
  
  s.files = Dir[
    "{app,lib,cms}/**/*",
    "LICENSE",
    "Rakefile"
  ]

  s.add_dependency 'bundler'
  s.add_dependency 'scrivito_sdk'
  s.add_dependency 'font-awesome-rails'

  s.add_development_dependency 'rake'
end
