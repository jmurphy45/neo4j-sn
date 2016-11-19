class NewsFeedController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all.order(created_at: :desc)
    @comment = Comment.new

  end
end
