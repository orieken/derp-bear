require File.join(File.expand_path(File.dirname(__FILE__)), 'derp_bear')
require 'rubygems'
require 'bundler/setup'
require './config/environments'
require './models/*.rb'
require 'active_record'
require 'sinatra/activerecord/rake'
require 'csv'
require 'pry'
require 'pry-nav'


task :default => [:'db:migrate', :features]