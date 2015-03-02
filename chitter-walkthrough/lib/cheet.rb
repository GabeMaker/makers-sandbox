class Cheet

  include DataMapper::Resource

  property :id,         Serial
  property :text,       Text
  property :created_at, DateTime
  property :author,     String

end