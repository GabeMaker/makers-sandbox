require 'spec_helper'

feature "User signs up" do

  scenario "when a new user visits the site" do
    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Hi GabeMaker!")
    expect(User.first.username).to eq("GabeMaker")
  end

  def sign_up(username = "GabeMaker",
              password = "testcoderepeat",
              password_confirmation = "testcoderepeat")
    visit '/users/new'
    expect(page.status_code).to eq(200)
    fill_in :username, :with => username
    fill_in :password, :with => password
    fill_in :password_confirmation, :with => password_confirmation
    click_button "Sign up!"
  end

  scenario "when a password doesn't match" do
    expect{ sign_up('Test', 'Right', 'Wrong') }.to change(User, :count).by(0)
    expect(current_path).to eq('/users')
    expect(page).to have_content("Sorry, your passwords don't match")
  end

end