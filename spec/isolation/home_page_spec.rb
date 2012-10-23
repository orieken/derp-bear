require 'rubygems'
require 'spec_helper'

describe "Home Page Validations" do

    before(:each) do
      visit "/"
    end

    it { page.should have_selector('ul#examples') }
    it { page.should have_selector('li') }
    it { page.should have_selector('li#example_id_1 a') }
    it { page.should have_content('Example 1') }

end