Given(/^a lulz greeter$/) do
  @greeter = LulzGreeter.new
end

When(/^I send it the greet message$/) do
  @message = @greeter.greet
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(@message).to eq arg1
end

class LulzGreeter
  def greet
    "OH HAI CUCUMNER!"
  end
end