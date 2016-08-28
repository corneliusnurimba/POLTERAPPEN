Activity.create(
    category: 'adventure',
    name: Faker::Name.title,
    description: Faker::ChuckNorris.fact,
    address: Faker::Address.street_address,
    cost: Faker::Number.number(3),
    duration: Faker::Number.number(1),
    photo: 'activity_adventure.jpeg'
  )


Activity.create(
    category: 'girly',
    name: 'Cupcake making',
    description: 'Make cute cupcakes with all the girls. Yum.',
    address: 'Bentzonvej 7, 2000 Frederiksberg',
    cost: 'from 300 per person',
    duration: '90 min',
    photo: 'activity_girly_cupcakes.jpg'
  )

Activity.create(
    category: 'girly',
    name: 'Pottery class',
    description: 'Pottery class with the girls (or boys). Make lovely pottery for your new home.',
    address: 'Kompagnistræde 23, 1208 København K',
    cost: 'from 300 per person',
    duration: '90 min',
    photo: 'activity_girly_pottery.gif'
  )

Activity.create(
    category: 'girly',
    name: 'Model makeover',
    description: 'Get ready to strike a pose ladies and take pleasure in being treated like a star for a day. It doesn’t get more glamorous than this.',
    address: 'Købmagergade 17, 1150 København K',
    cost: 'from 250',
    duration: '2 hours',
    photo: 'activity_girly_model.jpg'
  )


Activity.create(
    category: 'girly',
    name: 'Pedicure',
    description: 'Get a nice pedicure - a nice way to spend the day with the girls',
    address: 'Finsensvej 3, 2000 Frederiksberg',
    cost: '150',
    duration: '45 min',
    photo: 'activity_girly_pedi.jpg'
  )

Activity.create(
    category: 'girly',
    name: 'Massage',
    description: 'Let the bachelorette get a (cat) massage to really relax.',
    address: 'Hellerupvej 4, 2900 Hellerup',
    cost: '450',
    duration: '30 min',
    photo: 'activity_girly_massage.gif'
  )
