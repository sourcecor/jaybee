# -*- encoding: utf-8 -*-
# stub: cookiejar 0.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "cookiejar"
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Waite"]
  s.date = "2014-02-01"
  s.description = "Allows for parsing and returning cookies in Ruby HTTP client code"
  s.email = ["david@alkaline-solutions.com"]
  s.homepage = "http://alkaline-solutions.com"
  s.rdoc_options = ["--title", "CookieJar -- Client-side HTTP Cookies"]
  s.rubygems_version = "2.5.1"
  s.summary = "Client-side HTTP Cookie library"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec-collection_matchers>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<yard>, [">= 0.8.7", "~> 0.8"])
      s.add_development_dependency(%q<bundler>, [">= 0.9.3"])
    else
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec-collection_matchers>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<yard>, [">= 0.8.7", "~> 0.8"])
      s.add_dependency(%q<bundler>, [">= 0.9.3"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec-collection_matchers>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<yard>, [">= 0.8.7", "~> 0.8"])
    s.add_dependency(%q<bundler>, [">= 0.9.3"])
  end
end
