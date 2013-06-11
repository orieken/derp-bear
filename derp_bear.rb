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

get "/forms/basic_form_example" do
  haml :basic_form_example
end

get "/forms/file_upload_form_example" do
  haml :file_form_example
end

post '/forms/basic_form_example' do
  haml :basic_results
end

get "/forms/advanced_elements_example" do
  haml :advanced_form_example
end

get "/forms/accordion_example" do
  haml :accordion_example
end

get "/forms/accordion_jquery_example" do
  haml :accordion_jquery_example
end

get "/forms/present_elements_example" do
  haml :present_elements_example
end

get "/ui_widgets/kendo_ui_example" do
  haml :kendi_ui_examples
end

get "/ui_widgets/sencha_touch_example" do
  haml :sencha_touch_example
  end

get "/high_charts/high_charts_example" do
  haml :high_charts_example
end

get "/forms/ajax_select_example" do
  @years = (1983...2013).to_a
  @makes = %w(Acura Audi BMW Buick Cadillac Chevrolet Chrysler Dodge Ford GMC Honda Hyundai Infiniti Jaguar Jeep Kia
   Land Rover Lexus Lincoln MINI Mazda Mercedes-Benz Mercury Mitsubishi Nissan Porsche RAM Scion Saab Smart Subaru Suzuki Toyota Volkswagen Volvo)

  haml :ajax_select_example
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