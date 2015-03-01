require 'capybara/rspec'
require_relative '../../server'
require 'user'
require 'capybara'

Capybara.app = Sinatra::Application

feature "Sign up" do

  scenario "A new user should be able to sign up" do
    visit '/'
    expect { sign_up }.to change(User, :count).by 1
    expect(User.first.username).to eq "tansaku"
    User.destroy
  end

  def sign_up(username = "tansaku",
              name = "Samu Joseph",
              email = "sam@makersacademy.com",
              password = "s3cr3t")
    click_on('Sign-up!')
    fill_in :username, :with => username
    fill_in :name, :with => name
    fill_in :email, :with => email
    fill_in :password, :with => password
    click_button "Sign up"
  end

  # scenario "new users details should be available to the app" do
  #   visit '/'
  #   sign_up
  #   expect(User.first.username).to eq "tansaku"
  # end


end