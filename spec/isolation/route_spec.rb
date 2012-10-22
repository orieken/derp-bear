require 'rubygems'
require 'spec_helper'

describe Sinatra::Application do

  before(:each) do
    get '/'
  end

  it { last_response.should be_ok }

end