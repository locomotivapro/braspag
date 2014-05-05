# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "locomotiva-braspag/version"

Gem::Specification.new do |s|
  s.name        = "locomotiva-braspag"
  s.version     = Braspag::VERSION
  s.authors     = ["Locomotiva.pro"]
  s.email       = %w["contato@locomotiva.pro"]
  s.homepage    = "https://github.com/locomotivapro/braspag"
  s.summary     = "Locomotiva.pro braspag gem to use Braspag gateway"
  s.description = "Locomotiva.pro braspag gem to use Braspag gateway"

  s.rubyforge_project = "locomotiva-braspag"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'httpi', '>= 0.9.6'
  s.add_dependency 'json', '>= 1.6.1'
  s.add_dependency 'nokogiri', '>= 1.4.7'
  s.add_dependency 'savon', '>= 0.9.9'

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "fakeweb"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-bundler"
  s.add_development_dependency "debugger"
end
