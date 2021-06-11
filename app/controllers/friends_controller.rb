class FriendsController < ApplicationController
	before_action :set_params, only: [:show,:destroy]
	def index
		@friend=Friend.all
	end
	def new
		@friend=Friend.new
	end
	def create
		@friend=Friend.new(friend_params)
		if @friend.save
			flash[:notice]="Friend created Succesfully"
			redirect_to root_path(@post)
		else
			render 'new'
		end
	end

	def destroy
		if @friend.destroy
			flash[:notice]="Friend Deleted Succesfully"
			redirect_to friends_path(@friend)
		end
	end

	def show
	end

	private
		def friend_params()
			params.require(:friend).permit(:first_name,:last_name,:email,:phone_number)
		end
		def set_params()
			@friend=Friend.find(params[:id])
		end



end
