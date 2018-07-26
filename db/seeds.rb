require 'faker'

10.times do
  city = City.create(
    name: Faker::Address.city, 
    postal_code: Faker::Address.zip_code
    )
end

10.times do
  user = User.create(
    first_name: Faker::Name.name, 
    last_name: Faker::Name.name,
    description: Faker::Lorem.paragraph, 
    email: Faker::Internet.email, 
    age: Faker::Number.between(20, 100),
    city_id: rand((City.first.id)..(City.last.id))    
    )
end

20.times do
  gossip = Gossip.create(
    title: Faker::HowIMetYourMother.character, 
    content: Faker::HowIMetYourMother.catch_phrase, 
    #user_id: Faker::Number.between(1, 10)
    user_id: rand((User.first.id)..(User.last.id)) 
    )
end

10.times do
  tag = Tag.create(tag: Faker::Music.band)
end

for i in ((Tag.first.id)..(Tag.last.id))
  gossip = Gossip.find(i)
  tag = Tag.find(i)
  gossip.tags << tag
end

10.times do
  gossip_id = rand((Gossip.first.id)..(Gossip.last.id))
  tag_id = rand((Tag.first.id)..(Tag.last.id))
  gossip = Gossip.find(gossip_id)
  tag = Tag.find(tag_id)
  gossip.tags << tag
end

1.times do
  private_message = PrivateMessage.create(
    content: Faker::Lorem.paragraph,
    recipient_id: rand((User.first.id)..(User.last.id)),
    sender_id: rand((User.first.id)..(User.last.id)) 
  )
end

20.times do
  comments = Comment.create(
    content: Faker::Lorem.paragraph, 
    gossip_id: rand((Gossip.first.id)..(Gossip.last.id)),   
    user_id: rand((User.first.id)..(User.last.id)) 
    )
end

20.times do
  randomizer = rand(1..2)
  if randomizer.modulo(2) == 0
    like =  Like.create(
      user_id: rand((User.first.id)..(User.last.id)),
      likeable_type: "Comment",
      likeable_id: rand((Comment.first.id)..(Comment.last.id))
    )
  else
    like =  Like.create(
      user_id: rand((User.first.id)..(User.last.id)),
      likeable_type: "Gossip",
      likeable_id: rand((Gossip.first.id)..(Gossip.last.id))
    )
  end
end
