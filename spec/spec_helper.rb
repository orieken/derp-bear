app_file = File.join(File.dirname(__FILE__), *%w[.. derp_bear.rb])
require app_file
require 'capybara/rspec'
require 'rack/test'
require 'autotest-fsevent'
require 'autotest-growl'
require 'pry'
require 'pry-nav'
require 'activerecord'
require 'factory_girl'
require File.expand_path(File.dirname(__FILE__)) + '/../models/example.rb'
require_relative 'factories'
require 'accept_values_for'
require 'securerandom'


def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL
  config.include FactoryGirl::Syntax::Methods
end

Capybara.app = app