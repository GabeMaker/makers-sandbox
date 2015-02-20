When(/^I enter "(.*?)" in the "(.*?)" field$/) do |content, field|
  fill_in(field, :with => content)
  click_button('submit')
end

Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end
