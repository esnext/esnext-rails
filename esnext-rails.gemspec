$:.push File.expand_path("../lib", __FILE__)
require "esnext/rails/version"

Gem::Specification.new do |s|
  s.name        = "esnext-rails"
  s.version     = Esnext::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Donovan"]
  s.email       = ["me@brian-donovan.com"]
  s.homepage    = "https://github.com/esnext/esnext-rails"
  s.summary     = %q{esnext adapter for the Rails asset pipeline.}
  s.description = %q{esnext adapter for the Rails asset pipeline.}
  s.license     = "MIT"

  s.add_dependency 'esnext', '>= 0'
  s.add_dependency 'railties', '>= 4.0.0', '< 5.0'

  s.files         = ["lib/esnext/rails/engine.rb", "lib/esnext/rails/template.rb", "lib/esnext/rails/version.rb", "lib/esnext-rails.rb"]

  s.require_paths = ["lib"]
end
