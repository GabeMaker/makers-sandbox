require 'sinatra'
require ''

set :root, File.dirname(__FILE__)

get '/' do
  "Hello"
end