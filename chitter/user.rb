class User

  include 'DataMapper::Resource'

  property :username, String
  property :name,     String
  property :email,    String
  property :password, String

end