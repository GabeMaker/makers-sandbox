require 'sinatra'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './lib/cheet'
require './lib/user'

DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
  @cheets = Cheet.all
  erb :index
end

post '/cheets' do
  content = params["content"]
  Cheet.create(:text => content, :time => Time.now.to_s)
  redirect to('/')
end