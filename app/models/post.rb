class Post 
  include Neo4j::ActiveNode
  property :post_text, type: String

  # has_one :out, :user
  has_one :out, :user, type: :user
  has_many :in, :comments, origin: :post
  has_many :in, :likes, origin: :post
  # has_many :out, :comments, type: :POST_HAS_COMMENT
  # has_many :out, :likes, type: :POST_HAS_LIKE
end
