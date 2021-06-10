class FriendsController < ApplicationController
efore_action :set_params, only: [:edit,:show,:update,:destroy]

	def new
		@post=Post.new
	end

	def create
		#render plain: params[:post].inspect
		@post=Post.new(post_params)
		if @post.save
			flash[:notice]="Post created Succesfully"
			redirect_to root_path(@post)
		else
			render 'new'
		end
	end

	def home
		redirect_to root_path(@post)
	end

	def index	
		@post=Post.all
	end

	def edit
	end

	def show
	end

	def update
		if @post.update(post_params)
			flash[:notice]="Post Succesfully Updated"
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def destroy
		if @post.destroy
			flash[:notice]="Post Succesfully Deleted"
			redirect_to root_path
		end
	end

	private
		def set_params
			@post=Post.find(params[:id])
		end
		def post_params
			params.require(:post).permit(:title, :description)
		end

end
