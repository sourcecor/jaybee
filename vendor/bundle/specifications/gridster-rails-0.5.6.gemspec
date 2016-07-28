# -*- encoding: utf-8 -*-
# stub: gridster-rails 0.5.6 ruby lib

Gem::Specification.new do |s|
  s.name = "gridster-rails"
  s.version = "0.5.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["William Van Etten"]
  s.date = "2015-11-06"
  s.description = "This gem provides jquery.gridster.js and jquery.gridster.css for your Rails 3 application."
  s.email = ["bill@bioteam.net"]
  s.homepage = "http://rubygems.org/gems/gridster-rails"
  s.rubygems_version = "2.5.1"
  s.summary = "Use gridster with Rails 3"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 5.0", ">= 3.1.0"])
    else
      s.add_dependency(%q<railties>, ["< 5.0", ">= 3.1.0"])
    end
  else
    s.add_dependency(%q<railties>, ["< 5.0", ">= 3.1.0"])
  end
end
