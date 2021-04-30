50.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               image: File.open(Rails.root.join('db','seed','fake_profile.jpg')),
               )
end
