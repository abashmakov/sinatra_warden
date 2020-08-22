# -*- encoding: utf-8 -*-

require File.expand_path("../lib/sinatra_warden/version", __FILE__)

Gem::Specification.new do |s|
  s.name = %q{sinatra_warden}
  s.version     = SinatraWarden::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors = ["Justin Smestad", "Daniel Neighman"]
  s.email = %q{justin.smestad@gmail.com}
  s.summary = %q{authentication system for using warden with sinatra}
  s.description = %q{basic helpers and authentication methods for using warden with sinatra also providing some hooks into Rack::Flash}

  s.required_rubygems_version = ">= 1.3.6"

  s.rdoc_options = ["--charset=UTF-8"]

  s.add_dependency 'sinatra', '>= 1.4.6'
  s.add_dependency 'warden',  '~> 1.2.3'

  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rack-test', '>= 0.6.2'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rack-flash3', '~> 1.0.1'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
