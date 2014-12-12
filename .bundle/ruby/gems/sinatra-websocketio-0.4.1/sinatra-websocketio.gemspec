lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra-websocketio/version'

Gem::Specification.new do |gem|
  gem.name          = "sinatra-websocketio"
  gem.version       = Sinatra::WebSocketIO::VERSION
  gem.authors       = ["Sho Hashimoto"]
  gem.email         = ["hashimoto@shokai.org"]
  gem.description   = %q{WebSocket component for Sinatra RocketIO}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/shokai/sinatra-websocketio"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/).reject{|i| i=="Gemfile.lock" }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'thin'
  gem.add_development_dependency 'haml'
  gem.add_development_dependency 'sass'
  gem.add_development_dependency 'rack'

  gem.add_dependency 'sinatra-contrib', '>= 1.3.2'
  gem.add_dependency 'sinatra', '>= 1.3.0'
  gem.add_dependency 'em-websocket', '>= 0.5.0'
  gem.add_dependency 'eventmachine', '>= 1.0.0'
  gem.add_dependency 'json', '>= 1.7.0'
  gem.add_dependency 'event_emitter', '>= 0.2.4'
  gem.add_dependency 'websocket-client-simple'
end
