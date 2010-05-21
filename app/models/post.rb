class Post
  include DataMapper::Resource
  
  
  property :id,    Serial
  property :author, String,        :required => true, :length => 20
  property :body,  Text,          :required => true, :lazy => false
  timestamps :at 
  
  validates_present :author, :message => "author must not be blank"
  validates_present :body, :message => "body must not be blank"
end
