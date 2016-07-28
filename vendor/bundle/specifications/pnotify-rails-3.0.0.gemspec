# -*- encoding: utf-8 -*-
# stub: pnotify-rails 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pnotify-rails"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Navin Peiris"]
  s.date = "2016-01-27"
  s.description = "Pines Notify for Rails 3.1 Asset Pipeline"
  s.email = ["navin.peiris@gmail.com"]
  s.homepage = "https://github.com/navinpeiris/pnotify-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Pines Notify is a JavaScript notification plugin developed by Hunter Perrin integrated for Rails 3.1 Asset Pipeline"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.3"])
    else
      s.add_dependency(%q<rake>, ["~> 10.3"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.3"])
  end
end
