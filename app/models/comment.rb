class Comment 
  include Neo4j::ActiveNode

  has_one :out, :post, type: :post
  
  property :comment, type: String
  property :user_id, type: String
end
