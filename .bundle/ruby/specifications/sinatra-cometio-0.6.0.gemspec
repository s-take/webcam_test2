# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sinatra-cometio"
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sho Hashimoto"]
  s.date = "2013-10-05"
  s.description = "Comet component for Sinatra RocketIO"
  s.email = ["hashimoto@shokai.org"]
  s.homepage = "https://github.com/shokai/sinatra-cometio"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Comet component for Sinatra RocketIO"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<thin>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<sass>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra-contrib>, [">= 1.3.2"])
      s.add_runtime_dependency(%q<sinatra>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<json>, [">= 1.7.0"])
      s.add_runtime_dependency(%q<event_emitter>, [">= 0.2.5"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<sass>, [">= 0"])
      s.add_dependency(%q<sinatra-contrib>, [">= 1.3.2"])
      s.add_dependency(%q<sinatra>, [">= 1.3.0"])
      s.add_dependency(%q<eventmachine>, [">= 1.0.0"])
      s.add_dependency(%q<json>, [">= 1.7.0"])
      s.add_dependency(%q<event_emitter>, [">= 0.2.5"])
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<sass>, [">= 0"])
    s.add_dependency(%q<sinatra-contrib>, [">= 1.3.2"])
    s.add_dependency(%q<sinatra>, [">= 1.3.0"])
    s.add_dependency(%q<eventmachine>, [">= 1.0.0"])
    s.add_dependency(%q<json>, [">= 1.7.0"])
    s.add_dependency(%q<event_emitter>, [">= 0.2.5"])
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end
