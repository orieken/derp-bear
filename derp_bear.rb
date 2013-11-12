require 'sinatra'
require 'active_record'
require 'sinatra/flash'

#require 'sinatra/json'
#require 'json'

configure do

end

enable :sessions
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
  @title = "Basic Form Example"
  haml :basic_form_example
end

post '/forms/basic_form_example' do
  haml :basic_results
end

get "/basic_element_example" do
  @title = "Basic Element Example"
  haml :basic_element_example
end

get "/forms/file_upload_form_example" do
  haml :file_form_example
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

get "/mobile/examples" do
  haml :mobile_examples, :layout => false
end

post "/forms/mobile_form_example" do
  haml :mobile_examples_results, :layout => false
end

get "/forms/ajax_select_example" do
  @years = (1983...2013).to_a
  @makes = %w(Acura Audi BMW Buick Cadillac Chevrolet Chrysler Dodge Ford GMC Honda Hyundai Infiniti Jaguar Jeep Kia
   Land Rover Lexus Lincoln MINI Mazda Mercedes-Benz Mercury Mitsubishi Nissan Porsche RAM Scion Saab Smart Subaru Suzuki Toyota Volkswagen Volvo)

  haml :ajax_select_example
end

post "/forms/ajax_select_example_results" do
  haml :ajax_select_example_results
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

set :username, 'Bond'
set :token, 'shakenN0tstirr3d'
set :password, '007'

helpers do
  def admin?;
    request.cookies[settings.username] == settings.token;
  end

  def protected!;
    halt [401, 'Not Authorized'] unless admin?;
  end
end

get '/login' do
  @title = "WOAH SUPER SECRET LOGIN PAGE!!!!!"
  haml :login
end

post '/login' do
  if params['username']==settings.username&&params['password']==settings.password
    response.set_cookie(settings.username, settings.token)
    flash[:notice] = "You are now Logged in."
    redirect '/forms/basic_form_example'
  else
    flash[:notice] = "Username or Password incorrect"
    redirect '/login'
  end
end

get '/logout' do
  response.set_cookie(settings.username, false)
  flash[:notice] = "You have been logged out."
  redirect '/'
end

get '/top_secret' do
  protected!
  @title = "Hey!, You should not be here!"
  haml :top_secret
end

post '/json_request' do
  data = JSON.parse(request.body.read)
  json data
end

get '/js_frameworks/knockoutjs_example' do
  haml :knockoutjs_example
end

get '/popup_example' do
  haml :popup_example
end

get '/forms/simple_form_example' do
  haml :simple_form_example
end

post '/forms/simple_form_example' do
  haml :simple_form_results
end
