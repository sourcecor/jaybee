# -*- encoding: utf-8 -*-
# stub: wice_grid 3.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "wice_grid"
  s.version = "3.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Yuri Leikind and contributors"]
  s.date = "2016-06-15"
  s.description = "A Rails grid plugin to create grids with sorting, pagination, and filters generated automatically based on column types. The contents of the cell are up for the developer, just like one does when rendering a collection via a simple table. WiceGrid automates implementation of filters, ordering, paginations, CSV export, and so on. Ruby blocks provide an elegant means for this."
  s.email = ["yuri.leikind@gmail.com"]
  s.homepage = "https://github.com/leikind/wice_grid"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A Rails grid plugin to quickly create grids with sorting, pagination, and filters."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["> 3.2"])
      s.add_runtime_dependency(%q<kaminari>, ["~> 0.16"])
      s.add_runtime_dependency(%q<coffee-rails>, ["> 3.2"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.8.2"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, ["~> 0.4.7"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<inch>, ["~> 0.6.4"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.2.0"])
    else
      s.add_dependency(%q<activerecord>, ["> 3.2"])
      s.add_dependency(%q<kaminari>, ["~> 0.16"])
      s.add_dependency(%q<coffee-rails>, ["> 3.2"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<rspec>, ["~> 3.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<simplecov>, ["~> 0.7"])
      s.add_dependency(%q<coveralls>, ["~> 0.8.2"])
      s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.4.7"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<inch>, ["~> 0.6.4"])
      s.add_dependency(%q<rdoc>, ["~> 4.2.0"])
    end
  else
    s.add_dependency(%q<activerecord>, ["> 3.2"])
    s.add_dependency(%q<kaminari>, ["~> 0.16"])
    s.add_dependency(%q<coffee-rails>, ["> 3.2"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<rspec>, ["~> 3.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<simplecov>, ["~> 0.7"])
    s.add_dependency(%q<coveralls>, ["~> 0.8.2"])
    s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.4.7"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<inch>, ["~> 0.6.4"])
    s.add_dependency(%q<rdoc>, ["~> 4.2.0"])
  end
end
