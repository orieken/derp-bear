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
  @title = "About Derp-Bear"
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

get "/forms/present_elements_example" do
  haml :present_elements_example
  end

get "/ui_widgets/kendo_ui" do
  haml :kendi_ui_examples
  end

get "/ui_widgets/sencha_touch" do
  haml :sencha_touch_examples
end

post "/forms/present_elements_example" do

end

get '/presents_results' do
  @text = "Hi, I just loaded"
  haml :presents_results, :layout => false
end

get '/examples/:id' do |n|
  @title = "This is Example #{n}!"
  haml :example
end