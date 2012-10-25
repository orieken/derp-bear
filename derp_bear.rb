require 'sinatra'
require 'active_record'


set :haml, {:format => :html5}

get '/' do
  haml :index
end

get '/stylesheet.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :stylesheet
end

get '/about' do
  haml :about
end

get "/forms/basic_elements_example" do
  haml :basic_form
end

get "/forms/advanced_elements_example" do
  haml :advanced_form
end


get '/examples/:id' do |n|
  @title = "This is Example #{n}!"
  haml :example
end