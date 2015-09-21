Given(/^I access to new user page$/) do
  visit new_user_path
end

Then(/^I fill in the "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in "#{arg1}",    :with => "#{arg2}"
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in "#{arg1}",    :with => "#{arg2}"
end

Then(/^I press "(.*?)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^system should redirect to list user$/) do
  current_path.should == users_path
end

Then(/^I should see "(.*?)" here$/) do |arg1|
  page.should have_content(arg1)
end



