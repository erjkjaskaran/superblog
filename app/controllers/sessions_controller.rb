class SessionsController < ApplicationController
	def new
	end

	def create
		user=User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			flash[:success]="Succesfully Logged In"
			session[:user_id]=user.id
			redirect_to user_posts_path

		else
			flash.now[:danger]="Please check Email or Password"
			render 'new'
		end
	end

	def destroy
		session[:user_id]=nil
		flash[:success]="Logged Out Successfully"
		redirect_to root_path
	end


end