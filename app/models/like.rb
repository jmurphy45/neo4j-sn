class Like 
  include Neo4j::ActiveNode

  has_one :out, :post, type: :post
  property :user_id, type: String

end
