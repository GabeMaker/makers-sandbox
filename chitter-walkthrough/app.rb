require 'sinatra'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './lib/cheet'

DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
  'Chitter'
end