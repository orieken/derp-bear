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

post '/forms/basic_elements_example' do
  haml :basic_results
end

get "/forms/advanced_elements_example" do
  haml :advanced_form
end

get "/forms/accordion_example" do
  haml :accordion
end

get "/forms/accordion_jquery_example" do
  haml :accordion_jquery_example
end


get '/examples/:id' do |n|
  @title = "This is Example #{n}!"
  haml :example
end