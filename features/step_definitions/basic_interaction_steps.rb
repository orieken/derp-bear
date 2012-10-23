Before do
  @site = Watir::Browser.new :chrome
end

After do
  @site.close
end

Given /^I visit the site$/ do
  @site.goto "localhost:9393"
end

Then /^I should see the home page title$/ do
  @site.title.should eql "Welcome to Derp-Bear"
end
