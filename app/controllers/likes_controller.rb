class LikesController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		like = Like.new(user_id: current_user.id)
		post.likes << like
		like.save!
		redirect_to root_path
		# return render json: params	
	end

	def destroy
		like = Like.find(params[:id])
		like.destroy
		redirect_to root_path
	end
end
