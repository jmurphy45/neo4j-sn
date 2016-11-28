class Follower 
  include Neo4j::ActiveNode
  property :follower_id, type: String
  property :following_id, type: String
end
