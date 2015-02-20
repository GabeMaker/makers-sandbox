When(/^I enter "(.*?)" in the "(.*?)" field$/) do |content, field|
  fill_in(field, :with => content)
end