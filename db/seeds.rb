# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Activity.destroy_all

# boring activities

Activity.create(
  category: 'boring',
  name: 'Watch grass grow',
  description: 'Spend the day watching the grass grow in front of you at the Botanical Gardens',
  address: 'Gothersgade 130, 1353 København',
  cost: 0,
  duration: 2,
  photo: 'activity_boring_1.jpg'
)

Activity.create(
  category: 'boring',
  name: 'Play Chess',
  description: 'Who says Chess is boring ...? Everyone.',
  address: 'Frederiksborggade 21, 1360 København K',
  cost: 0,
  duration: 3,
  photo: 'activity_boring_2.jpeg'
)

Activity.create(
  category: 'boring',
  name: 'Go to the local Museum',
  description: 'Take the bachelor(ette) to your museum and bore them to death.',
  address: 'Vesterbrogade 59, 1620 København V',
  cost: 0,
  duration: 2,
  photo: 'activity_boring_3.jpg'
)

Activity.create(
  category: 'boring',
  name: 'Take countless selfies',
  description: 'Ignore the bachelor(ette) by taking photos of yourself',
  address: 'Hans Tavsens Gade, 2200 København N',
  cost: 0,
  duration: 1,
  photo: 'activity_boring_4.jpg'
)

# cheap activities

Activity.create(
  category: 'cheap',
  name: 'Poker Night',
  description: 'Dust off the chips, fill the fridge with beverages, order a few pizzas, and settle in for poker night.',
  address: 'Your house',
  cost: 0,
  duration: 3,
  photo: 'activity_cheap_1.jpg'
)

Activity.create(
  category: 'cheap',
  name: 'Drinking Games in the Park',
  description: 'Get your friends together in the local park and embarrass the bachelor(ette) in public.',
  address: 'Nørre Voldgade 1, 1358 København K',
  cost: 0,
  duration: 2,
  photo: 'activity_cheap_2.jpg'
)

Activity.create(
  category: 'cheap',
  name: 'Book a Brewery Tour',
  description: 'Pick a local brewery, book a tour, and let the beer flow freely.',
  address: 'Halmtorvet 29C, 1700 København v',
  cost: 100,
  duration: 2,
  photo: 'activity_cheap_3.jpg'
)

Activity.create(
  category: 'cheap',
  name: 'Go to a Sports game',
  description: 'Pick the bachelor(ettes) favourite team and enjoy a day at the sports park.',
  address: 'Per Henrik Lings Allé 2, 2100 København',
  cost: 200,
  duration: 2,
  photo: 'activity_cheap_4.jpg'
)

# old seed file

5.times do
  Activity.create(
    category: 'sexy',
    name: Faker::Name.title,
    description: Faker::ChuckNorris.fact,
    address: Faker::Address.street_address,
    cost: Faker::Number.number(3),
    duration: Faker::Number.number(1),
    photo: 'activity_sexy.jpeg'
  )
end

[ { first_name: Faker::Name.title,
    last_name: Faker::Name.title,
    password: '123456',
    email: 'a@b.c',
    admin: true
    },
  { first_name: Faker::Name.title,
    last_name: Faker::Name.title,
    password: '123456',
    email: 'b@b.c'
    },
  { first_name: Faker::Name.title,
    last_name: Faker::Name.title,
    password: '123456',
    email: 'c@b.c'
    },
  { first_name: Faker::Name.title,
    last_name: Faker::Name.title,
    password: '123456',
    email: 'd@b.c'
    }].each do |user|
      User.create(user)
end
