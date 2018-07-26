require 'faker'

10.times do
  city = City.create(name: Faker::Address.city, postal_code: Faker::Address.zip_code)
end

10.times do
  user = User.create(first_name: Faker::Name.name, last_name: Faker::Name.name , description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: Faker::Number(20, 100))
end

10.times do
  gossip = Gossip.create(title: HowIMetYourMother.character, content: Faker::HowIMetYourMother.catch_phrase, user_id: rand((User.first.id)..(User.last.id)))
end

10.times do
  comments = Comment.create(content: , gossip_id: , user_id: )
end

10.times do
  tag = Tag.create()
end

10.times do
  like = 
end