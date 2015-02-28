require 'capybara/rspec'
require_relative '../../server'
require 'user'
require 'capybara'

Capybara.app = Sinatra::Application

feature "Sign up" do

  scenario "A new user should be able to sign up" do
    expect { sign_up }.to change(User, :count).by 1
  end

  def sign_up(username = "tansaku",
              name = "Samu Joseph",
              email = "sam@makersacademy.com",
              password = "s3cr3t")
    visit '/'
    click_on('sign up!')
    fill_in :username, :with => username
    fill_in :name, :with => name
    fill_in :email, :with => email
    fill_in :password, :with => password
    click_button "Sign up"
  end

end