Given(/^I visit the main page$/) do
 visit '/'
end

When(/^I enter (\d+) into the input field$/) do |number|
  fill_in 'number', :with => number
end

When(/^press the submit button$/) do
  click_button 'Convert'
end

Then(/^I should see (.*)$/) do |converted_string|
  page.should have_content(converted_string)
end

When(/^I enter a string into the input field$/) do
  fill_in 'number', :with => 'bad integer'
end