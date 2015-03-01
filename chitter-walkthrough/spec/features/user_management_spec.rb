require 'spec_helper'

feature "User signs up" do

scenario "when a new user visits the site" do
    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Hi GabeMaker!")
    expect(User.first.username).to eq("GabeMaker")
  end

  def sign_up(username = "GabeMaker",
              password = "testcoderepeat")
    visit '/sign_up'
    expect(page.status_code).to eq(200)
    fill_in :username, :with => username
    fill_in :password, :with => password
    click_button "Sign up!"
  end

end