
addresses = [
  {
    street_address: "557 Little Lonsdale St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "500 Little Lonsdale St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "400 Little Lonsdale St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "171 King St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "100 Little Lonsdale St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "50 Little Lonsdale St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "120 Spencer St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "150 Spencer St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "180 Spencer St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "250 Spencer St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  },
  {
    street_address: "350 Bourke St",
    city: "Melbourne",
    state: "Vic",
    postcode: "3000",
    country_code: "AU"
  }
]

10.times do
  user = User.create!(email: Faker::Internet.email, password: "password123", password_confirmation: "password123")

  address = addresses.sample

  profile = Profile.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,

    street_address: address[:street_address],
    city: address[:city],
    state: address[:state],
    postcode: address[:postcode],
    country_code: address[:country_code]
  )
  profile.user = user
  profile.save!

  puts "#{user.email} created"
end
