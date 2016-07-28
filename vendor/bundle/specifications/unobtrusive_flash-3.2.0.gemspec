# -*- encoding: utf-8 -*-
# stub: unobtrusive_flash 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "unobtrusive_flash"
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Leonid Shevtsov"]
  s.date = "2015-11-06"
  s.description = "unobtrusive_flash takes your flash messages for the backend and automagically passes them to the frontend via HTTP cookies.\nThis works with both regular page loads and AJAX requests, does not tamper with the page body and requires about 3 extra\nlines of code in your app - how's that for unobtrusive?\n"
  s.email = ["leonid@shevtsov.me"]
  s.homepage = "https://github.com/leonid-shevtsov/unobtrusive_flash"
  s.rubygems_version = "2.5.1"
  s.summary = "Unobtrusive flash messages for Rails"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3"])
      s.add_development_dependency(%q<rspec-mocks>, ["~> 3"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 2.5"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<poltergeist>, [">= 0"])
    else
      s.add_dependency(%q<railties>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3"])
      s.add_dependency(%q<rspec-mocks>, ["~> 3"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 2.5"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<poltergeist>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3"])
    s.add_dependency(%q<rspec-mocks>, ["~> 3"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 2.5"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<poltergeist>, [">= 0"])
  end
end
