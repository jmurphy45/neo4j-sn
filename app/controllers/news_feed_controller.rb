class NewsFeedController < ApplicationController
  def index
    @post = Post.new
    @posts = current_user.posts.to_a
    current_user.followings.try(:each) do |following|
    	@posts += User.find(following.following_id).posts.to_a
    end
    @user = current_user
    @comment = Comment.new
  end
end
