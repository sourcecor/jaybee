# -*- encoding: utf-8 -*-
# stub: render_sync 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "render_sync"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris McCord"]
  s.date = "2016-05-04"
  s.description = "RenderSync turns your Rails partials realtime with automatic updates through Faye"
  s.email = "chris@chrismccord.com"
  s.homepage = "http://github.com/chrismccord/render_sync"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Realtime Rails Partials"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<em-http-request>, [">= 0"])
      s.add_development_dependency(%q<faye>, [">= 0"])
      s.add_development_dependency(%q<thin>, [">= 0"])
      s.add_development_dependency(%q<pusher>, ["~> 0.11.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 3.2.13"])
      s.add_development_dependency(%q<cache_digests>, [">= 0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.13.3"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["< 5.0.0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, [">= 0"])
    else
      s.add_dependency(%q<em-http-request>, [">= 0"])
      s.add_dependency(%q<faye>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<pusher>, ["~> 0.11.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.2.13"])
      s.add_dependency(%q<cache_digests>, [">= 0"])
      s.add_dependency(%q<mocha>, ["~> 0.13.3"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<minitest>, ["< 5.0.0"])
      s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
    end
  else
    s.add_dependency(%q<em-http-request>, [">= 0"])
    s.add_dependency(%q<faye>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<pusher>, ["~> 0.11.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.2.13"])
    s.add_dependency(%q<cache_digests>, [">= 0"])
    s.add_dependency(%q<mocha>, ["~> 0.13.3"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<minitest>, ["< 5.0.0"])
    s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
  end
end
