require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/chitter")

require './lib/user'

DataMapper.finalize
DataMapper.auto_upgrade!

set :root, File.dirname(__FILE__)

get '/' do
  "Hello"
end