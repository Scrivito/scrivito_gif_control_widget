$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrivito_gif_control_widget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scrivito_gif_control_widget"
  s.version     = ScrivitoGifControlWidget::VERSION
  s.authors     = ["Scrivito"]
  s.email       = ["support@scrivito.com"]
  s.homepage    = "https://www.scrivito.com"

  s.summary     = "Scrivito Widget for a gif with simple control to start and stop"
  s.description = "Scrivito Widget to add a gif with simple control to start and stop"
  s.license     = "LGPL-3.0"

  s.files = Dir["{app,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'bundler'
  s.add_dependency 'scrivito_sdk'
end
