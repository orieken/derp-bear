app_file = File.join(File.dirname(__FILE__), *%w[.. derp_bear.rb])
require app_file
require 'capybara/rspec'
require 'rack/test'
require 'autotest-fsevent'
require 'autotest-growl'
require 'pry'
require 'pry-nav'


def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL
end

Capybara.app = app