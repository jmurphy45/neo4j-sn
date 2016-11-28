class UsersController < ApplicationController
  
  def index
  	@user = current_user
  	@users = User.all
  end

  def show
  	@user = current_user
  	@followings = current_user.followings
  	@posts = Post.where(user_id: current_user.uuid)
  end

end
