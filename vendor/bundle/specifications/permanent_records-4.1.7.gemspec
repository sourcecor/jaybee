# -*- encoding: utf-8 -*-
# stub: permanent_records 4.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "permanent_records"
  s.version = "4.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jack Danger Canty", "David Sulc", "Joe Nelson", "Trond Arve Nordheim", "Josh Teneycke", "Maximilian Herold", "Hugh Evans", "Sergey Gnuskov", "aq"]
  s.date = "2016-07-07"
  s.description = "Never Lose Data. Rather than deleting rows this sets Record#deleted_at and\ngives you all the scopes you need to work with your data.\n"
  s.email = "github@jackcanty.com"
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "https://github.com/JackDanger/permanent_records"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Soft-delete your ActiveRecord records"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 4.2.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 4.2.0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 1.5.1"])
      s.add_development_dependency(%q<pry-byebug>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_development_dependency(%q<rubocop>, ["= 0.39.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 4.2.0"])
      s.add_dependency(%q<activesupport>, [">= 4.2.0"])
      s.add_dependency(%q<database_cleaner>, [">= 1.5.1"])
      s.add_dependency(%q<pry-byebug>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_dependency(%q<rubocop>, ["= 0.39.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 4.2.0"])
    s.add_dependency(%q<activesupport>, [">= 4.2.0"])
    s.add_dependency(%q<database_cleaner>, [">= 1.5.1"])
    s.add_dependency(%q<pry-byebug>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.14.1"])
    s.add_dependency(%q<rubocop>, ["= 0.39.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
