class ProfilesController < ApplicationController
  before_action :set_params, only: [:edit,:update, :show]

  def show
    if @profile.nil?
      redirect_to new_profile_path
    end
  end

  def new
   @profile=Profile.new
  end

  def create
    @profile=Profile.new(profile_params)
    @profile.user=current_user
    if @profile.save
      flash[:success]= "User Profile was successfully updated."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  	if @profile.update(profile_params)
  		flash[:success]="Profile updated successfully"
  		redirect_to profile_path
  	else
  		render 'edit'
  	end
  end

  private
  	def set_params
  		@profile=current_user.profile
  	end

  	def profile_params
  		params.require(:profile).permit(:first_name,:last_name,:address,:phone_number)
  	end

end
