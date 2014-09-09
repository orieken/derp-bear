require 'rubygems'
require 'spec_helper'

describe 'Home Page Validations' do

    before(:each) do
      visit '/'
    end

    it { expect(page).to have_selector('ul#examples_2014') }
    it { expect(page).to have_selector('li') }
    it { expect(page).to have_selector('a#basic_form_example') }
    it { expect(page).to have_content('Basic Form Example') }

end