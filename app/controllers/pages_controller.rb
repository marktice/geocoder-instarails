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

  def ruegen
    @locations = []
    User.all.each do |user|
      unless user.profile.longitude.nil?
      @locations.push({
          lat: user.profile.latitude,
          lng: user.profile.longitude,
          name: user.profile.first_name
        })
      end
    end
    puts @locations
  end
end