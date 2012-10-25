When /^I click the link of the example$/ do
  @site.link(text: "Basic Form Example").click
end

Then /^I should be taken to the example$/ do
  @site.form.legend.text.should eql "Please Fill in the Form below"
end
