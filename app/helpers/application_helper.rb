module ApplicationHelper
  def google_image_map(profile, zoom=15)
    image_tag "http://maps.googleapis.com/maps/api/staticmap?center=#{profile.latitude},#{profile.longitude}&markers=#{profile.latitude},#{profile.longitude}&zoom=#{zoom}&size=640x400&maptype=hybrid&key=AIzaSyA6xHmcua30L3UNR3Q-9XtINJ0ivvRG7vI", class: 'img-fluid img-rounded', alt: "#{profile.street_address} on the map"
  end

  def all_users_map(profiles, zoom=15)
    markers_string = ""

    profiles.each do |profile|
      markers_string += "#{profile.latitude},#{profile.longitude}|"  
    end
    
    image_tag "http://maps.googleapis.com/maps/api/staticmap?&markers=#{markers_string}&zoom=#{zoom}&size=640x400&maptype=hybrid&key=AIzaSyA6xHmcua30L3UNR3Q-9XtINJ0ivvRG7vI"
  end
end
