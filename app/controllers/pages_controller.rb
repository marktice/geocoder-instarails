class PagesController < ApplicationController
  def home
    @profiles = Profile.order("created_at DESC")
  end

  def gmaps  
    @profile = current_user.profile
  end

  def directions
    @profile_first = Profile.first
    @profile_last = Profile.last         
  end

  def geolocation
    
  end
end