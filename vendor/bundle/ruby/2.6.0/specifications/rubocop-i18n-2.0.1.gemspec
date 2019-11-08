# -*- encoding: utf-8 -*-
# stub: rubocop-i18n 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rubocop-i18n".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Puppet".freeze, "Brandon High".freeze, "TP Honey".freeze, "Helen Campbell".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-08-20"
  s.description = "RuboCop rules for detecting and autocorrecting undecorated strings for i18n (gettext and rails-i18n)".freeze
  s.email = ["team-modules@puppet.com".freeze, "brandon.high@puppet.com".freeze, "tp@puppet.com".freeze, "helen@puppet.com".freeze]
  s.homepage = "https://github.com/puppetlabs/rubocop-i18n".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "RuboCop rules for i18n".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.12.2"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rb-readline>.freeze, ["~> 0.5.5"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.51"])
      s.add_runtime_dependency(%q<rubocop>.freeze, ["~> 0.51"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.12.2"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rb-readline>.freeze, ["~> 0.5.5"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.12.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rb-readline>.freeze, ["~> 0.5.5"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
  end
end
