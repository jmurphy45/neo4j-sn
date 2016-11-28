class FollowersController < ApplicationController

	def create
		follower = Follower.create(follower_params)
		redirect_to users_path, notice: "You Have Followed Successfully..!!!"
	end

	def destroy
		Follower.find(params[:id]).destroy
		redirect_to users_path, notice: "You Have Un-Followed Successfully..!!!"
	end

	private

	def follower_params
      params.require(:follower).permit(:follower_id, :following_id)
	end
end
