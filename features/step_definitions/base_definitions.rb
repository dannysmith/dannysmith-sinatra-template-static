#Contains basic step definitions for cucumber steps.

Given /^I am viewing "(.+)"$/ do |url|
  visit(url)
end

When /^I go to "(.+)"$/ do |url|
  visit(url)
end

Then /^I should see "(.*)"$/ do |text|
  response_body.should =~ /#{Regexp.escape text}/m
end






# 
# Then /^I should not see "(.*)"$/ do |text|
#   assert !!(response_body !~ /#{Regexp.escape text}/m), response_body
# end
# 
# Then /^the "(.*)" checkbox should not be checked$/ do |label|
#   assert !field_labeled(label).checked?
# end
# 
# Then /^the "(.*)" checkbox should be checked$/ do |label|
#   assert field_labeled(label).checked?
# end
# 
# Then /^I should be redirected to "(.*)"$/ do |path|
#   assert_template path
# end
# 
# Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
#   assert field_labeled(field).value =~ /#{value}/
# end
# 
# Then /^the "([^\"]*)" field should not contain "([^\"]*)"$/ do |field, value|
#   assert !(field_labeled(field).value =~ /#{value}/)
# end
# 
# When /^I press "([^\"]*)"$/ do |button|
#   click_button(button)
# end
# 
# # ?: makes parenthesis group without saving the result (don't create a backreference)
# When /^I follow|click(?: the)* "([^\"]*)"(?: link)*$/ do |link|
#   click_link(link)
# end
# 
# When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
#   fill_in(field, :with => value) 
# end
# 
# When /^I select "([^\"]*)" from "([^\"]*)"$/ do |value, field|
#   select(value, :from => field) 
# end
# 
# When /^I check "([^\"]*)"$/ do |field|
#   check(field) 
# end
# 
# When /^I uncheck "([^\"]*)"$/ do |field|
#   uncheck(field) 
# end
# 
# When /^I choose "([^\"]*)"$/ do |field|
#   choose(field)
# end
# 
# When /^I attach the file at "([^\"]*)" to "([^\"]*)"$/ do |path, field|
#   attach_file(field, path)
# end