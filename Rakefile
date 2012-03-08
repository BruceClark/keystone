$: << File.expand_path(File.dirname(__FILE__) + "/lib")

require 'rubygems'
require 'rake'
require 'bundler'
require 'echoe'
require 'keystone'

Echoe.new('keystone-sass', Keystone::VERSION) do |p|
  p.description              = "A library of Sass mixins."
  p.summary                  = "Keystone provides a simple library of commonly used design patterns in the form of Sass mixins."
  p.url                      = "http://github.com/imulus/keystone"
  p.author                   = "Imulus"
  p.email                    = "developer@imulus.com"
  p.ignore_pattern           = ["tmp/*", "test/*"]
  p.development_dependencies = []
end
