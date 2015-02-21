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

When(/^I see "(.*?)"$/) do |content|
  expect(page).to have_content content
end

When(/^I push the "(.*?)" button$/) do |button|
  click_on(button)
end

Given(/^opponent randomly picks "(.*?)"$/) do |pick|
  # we want to set the computer's pick to 'pick'
  puts '===' * 20
  Capybara.app::GAME.player_two.pick(pick)
end

Given(/^I have already registered$/) do
  steps %{
    When I am on the homepage
    And I enter "Gabe" in the "name" field
  }
  save_and_open_page
end
