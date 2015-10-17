require 'rubygems'
require 'bundler'
require 'Twitter'
require 'yaml'

Bundler.require

Daemons.run('application.rb', {:ontop => true, :app_name => 'TwitterBot'})
