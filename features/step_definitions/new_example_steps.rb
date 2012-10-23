When /^I click the link of the example$/ do
  @site.link(text: "Example 1").click
end

Then /^I should be taken to the example$/ do
  @site.title.should eql "This is Example 1!"
end
