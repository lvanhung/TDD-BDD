When(/^I go to root page$/) do
  visit root_path
end

Then(/^I should see "(.*?)" in here$/) do |arg1|
  page.should have_content(arg1)
end


