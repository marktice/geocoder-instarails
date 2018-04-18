10.times do
  user = User.create!(email: Faker::Internet.email, password: "password123", password_confirmation: "password123")

  profile = Profile.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,

    street_address: "557 Little Lonsdale St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  )
  profile.user = user
  profile.save!

  puts "#{user.email} created"
end