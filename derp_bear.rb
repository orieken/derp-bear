require 'sinatra'


set :haml, {:format => :html5}

get '/' do
  haml :index
end

get '/examples/:id' do |n|
  @title = "This is Example #{n}!"
  haml :example
end