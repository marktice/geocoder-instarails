class PagesController < ApplicationController
  def home
    @profiles = Profile.all
  end

  def gmaps  
    @profile = current_user.profile
  end

  def directions
    @profile_first = Profile.first
    @profile_last = Profile.last         
  end
end