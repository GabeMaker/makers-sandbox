require 'data_mapper'

class User

  include DataMapper::Resource

  attr_reader :username

  property :id,       Serial
  property :username, String
  property :name,     String
  property :email,    String
  property :password, String

end