require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/chitter")

require './lib/user'

DataMapper.finalize
DataMapper.auto_upgrade!

# set :root, File.dirname(__FILE__)

get '/' do
  erb :index
end

get '/sign_up' do
  erb :sign_up
end

post '/new_user' do
  username = params["username"]
  name = params["name"]
  email = params["email"]
  password = params["password"]
  user = User.create(username: username, name: name, email: email, password: password)
end