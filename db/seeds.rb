# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Activity.destroy_all

5.times do
  Activity.create(
    category: 'adventure',
    name: Faker::Name.title,
    description: Faker::ChuckNorris.fact,
    address: Faker::Address.street_address,
    cost: Faker::Number.number(3),
    duration: Faker::Number.number(1),
    photo: 'activity_adventure.jpeg'
  )
end

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
