require 'sinatra'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './lib/cheet'
require './lib/user'

DataMapper.finalize
DataMapper.auto_upgrade!

enable :sessions
set :session_secret, 'super secret'

get '/' do
  @cheets = Cheet.all
  erb :index
end

post '/cheets' do
  content = params["content"]
  Cheet.create(:text => content, :time => Time.now.to_s)
  redirect to('/')
end

get '/users/new' do
  erb :"users/new"
end

post '/users' do
  user = User.create(username: params[:username],
                     password: params[:password])
  session[:user_id] = user.id
  redirect to ('/')
end

helpers do
  def current_user
    @current_user ||=User.get(session[:user_id]) if session[:user_id]
  end
end