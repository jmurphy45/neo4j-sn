class Post 
  include Neo4j::ActiveNode
  property :post_text, type: String
  property :user_id, type: String



  #has_one :both, :user, type: :BELONGS_TO
  has_many :out, :comments, type: :POST_HAS_COMMENT
end
