require 'rubygems'
require 'spec_helper'

describe "Home Page Validations" do

    before(:each) do
      visit "/"
    end

    it { page.should have_selector('ul#examples') }
    it { page.should have_selector('li') }
    it { page.should have_selector('li#basic_form_example a') }
    it { page.should have_content('Basic Form Example') }

end