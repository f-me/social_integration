# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "social_integration/version"

Gem::Specification.new do |s|
  s.name        = "social-integration"
  s.version     = SocialIntegration::VERSION
  s.authors     = ["Aslanbek Abazov"]
  s.email       = ["a.abazov@at-consulting.ru"]
  s.homepage    = "http://google.com"
  s.summary     = %q{Helper for add social share button in your Rails app. Twitter, Facebook, Vkontakte}
  s.description = %q{Helper for add social share button in your Rails app. Twitter, Facebook, Vkontakte}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- {bin}/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.files        = Dir.glob("{bin,lib}/**/*")
  s.files       += %w(README.md Changelogs.md)
  s.files       += %w(app/assets/images/sprites/social-integration.png app/assets/images/sprites/social-integration@2x.png)
  s.add_development_dependency "rails"
  # s.add_runtime_dependency "rest-client"
end
