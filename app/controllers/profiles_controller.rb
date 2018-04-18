class ProfilesController < ApplicationController
  
  def show
    # user not signed in, redirect to root
    redirect_to :root unless user_signed_in?

    # two ways to pass the profile
    # @profile = Profile.find(user: current_user)
    @profile = current_user.profile
  end

  def edit
    @profile = Profile.find_or_initialize_by(user: current_user)
  end
  
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    
    if @profile.save
      flash[:notice] = "Profile created"
      redirect_to root_path
    else
      flash[:alert] = "Could not save profile"
      render 'edit'
    end
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      flash[:notice] = "Profile updated"
      redirect_to profile_path
    else
      flash[:alert] = "Could not update profile"
      render 'edit'
    end
  end


  private

  def profile_params
    params.require(:profile).permit([
      :first_name, 
      :last_name,
      :street_address,
      :city,
      :state,
      :postcode,
      :country_code
    ])
  end
end