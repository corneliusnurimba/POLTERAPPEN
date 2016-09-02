# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActivityDayplanner.destroy_all
Dayplanner.destroy_all
ActivityPolterabend.destroy_all
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
  duration: 60,
  photo: 'activity_boring_2.jpg'
)

Activity.create(
  category: 'boring',
  name: 'Go to the local Museum',
  description: 'Take the bachelor(ette) to your museum and bore them to death.',
  address: 'Vesterbrogade 59, 1620 København V',
  cost: 0,
  duration: 90,
  photo: 'activity_boring_3.jpg'
)

Activity.create(
  category: 'boring',
  name: 'Take countless selfies',
  description: 'Ignore the bachelor(ette) by taking photos of yourself',
  address: 'Hans Tavsens Gade, 2200 København N',
  cost: 0,
  duration: 30,
  photo: 'activity_boring_4.jpg'
)

# cheap activities

Activity.create(
  category: 'cheap',
  name: 'Poker Night',
  description: 'Dust off the chips, fill the fridge with beverages, order a few pizzas, and settle in for poker night.',
  address: 'Your house',
  cost: 0,
  duration: 90,
  photo: 'activity_cheap_1.jpg'
)

Activity.create(
  category: 'cheap',
  name: 'Drinking Games in the Park',
  description: 'Get your friends together in the local park and embarrass the bachelor(ette) in public.',
  address: 'Nørre Voldgade 1, 1358 København K',
  cost: 0,
  duration: 60,
  photo: 'activity_cheap_park.jpg'
)

Activity.create(
  category: 'cheap',
  name: 'Book a Brewery Tour',
  description: 'Pick a local brewery, book a tour, and let the beer flow freely.',
  address: 'Halmtorvet 29C, 1700 København v',
  cost: 100,
  duration: 120,
  photo: 'activity_cheap_3.jpg'
)

Activity.create(
  category: 'cheap',
  name: 'Go to a Sports game',
  description: 'Pick the bachelor(ettes) favourite team and enjoy a day at the sports park.',
  address: 'Per Henrik Lings Allé 2, 2100 København',
  cost: 200,
  duration: 120,
  photo: 'activity_cheap_4.jpg'
)

Activity.create(
    category: 'crazy',
    name: 'Volvo-race',
    description: 'The captain chooses 2 man to lie on the roof of the Volvo while Carl-Mar kicks it through the marsh.',
    address: 'Avderødvej 45, 2980 Kokkedal',
    cost: 300,
    duration: 30,
    photo: 'activity_crazy_volvorace.jpg'
  )


Activity.create(
    category: 'crazy',
    name: 'Crawl through a tube - for women',
    description: 'The captain (bachelorette) kisses a giant dick of tree that has been poured with beer and shouts: Kussen er Gud (Vargina is God). She crawls through a 3-meter-long tunnel and is baptized in beer when she comes out.',
    address: 'Avderødvej 45, 2980 Kokkedal',
    cost: 100,
    duration: 20,
    photo: 'activity_crazy_dick.jpg'
  )

Activity.create(
    category: 'crazy',
    name: 'Giant fight',
    description: 'Everyone are wearing a Sumo suit, a big boxing glove or foam rubber mallet. Time to fight, all against all.',
    address: 'Avderødvej 45, 2980 Kokkedal',
    cost: 500,
    duration: 60,
    photo: 'activity_crazy_fight.jpg'
  )



Activity.create(
    category: 'crazy',
    name: 'Devil carousel',
    description: 'The captain sits on a deck and is rotated around 20 times. Then turn quickly and the captain flies off and lands on mattresses, afterwards the captian will have to run to a beer and drink it.',
    address: 'Avderødvej 45, 2980 Kokkedal',
    cost: 400,
    duration: 30,
    photo: 'activity_crazy_carousel.jpg'
  )


Activity.create(
    category: 'crazy',
    name: 'Gokart through mud and forest',
    description: 'The captain drives through mud, forest - cross-country racing',
    address: 'Artillerivej 100, 2300 København S',
    cost: 300,
    duration: 20,
    photo: 'activity_crazy_gokart2.gif'
  )

Activity.create(
    category: 'crazy',
    name: 'Viking ball',
    description: 'You sit inside an iron sphere with grid and you are rolled down a hill.',
    address: 'Krogebjerg 113, 2720 Vanløse',
    cost: 350,
    duration: 30,
    photo: 'activity_crazy_ball.jpg'
  )

Activity.create(
    category: 'crazy',
    name: 'Make a band',
    description: 'Get the girls or boys together in a band and go nuts.',
    address: 'Finsensvej 45, 2000 Frederiksberg',
    cost: 500,
    duration: 75,
    photo: 'activity_crazy_band.jpg'
  )


Activity.create(
    category: 'girly',
    name: 'Cupcake making',
    description: 'Make cute cupcakes with all the girls. Yum.',
    address: 'Bentzonvej 7, 2000 Frederiksberg',
    cost: 300,
    duration: 90,
    photo: 'activity_girly_cupcake.jpg'
  )

Activity.create(
    category: 'girly',
    name: 'Pottery class',
    description: 'Pottery class with the girls (or boys). Make lovely pottery for your new home.',
    address: 'Kompagnistræde 23, 1208 København K',
    cost: 300,
    duration: 90,
    photo: 'activity_girly_pottery.gif'
  )

Activity.create(
    category: 'girly',
    name: 'Model makeover',
    description: 'Get ready to strike a pose ladies and take pleasure in being treated like a star for a day. It doesn’t get more glamorous than this.',
    address: 'Købmagergade 17, 1150 København K',
    cost: 250,
    duration: 120,
    photo: 'activity_girly_model.jpg'
  )


Activity.create(
    category: 'girly',
    name: 'Pedicure',
    description: 'Get a nice pedicure - a nice way to spend the day with the girls',
    address: 'Finsensvej 3, 2000 Frederiksberg',
    cost: 150,
    duration: 45,
    photo: 'activity_girly_pedi.jpg'
  )

Activity.create(
    category: 'girly',
    name: 'Massage',
    description: 'Let the bachelorette get a (cat) massage to really relax.',
    address: 'Hellerupvej 4, 2900 Hellerup',
    cost: 450,
    duration: 30,
    photo: 'activity_girly_massage.gif'
  )


Activity.create(
    category: 'geeky',
    name: 'Arcade Day',
    description: 'Spend a day battling each other in classic arcade games',
    address: 'Wesselsgade 4, 2200 København',
    cost: 200,
    duration: 120,
    photo: 'activity_geeky1.jpg'

)
Activity.create(
    category: 'geeky',
    name: 'Trip to Expementarium',
    description: 'Go science-crazy while doing cool experiments',
    address: 'Tuborg Havnevej 7, 2900 Hellerup',
    cost: 100,
    duration: 120,
    photo: 'activity_geeky2.jpg'

)
Activity.create(
    category: 'geeky',
    name: 'Shopping spree at Faraos Cigarer',
    description: 'Shop cool games, comics with a gift certificate and play Dungeons and Dragons while you are there',
    address: 'Skindergade 27, 1159 København K',
    cost: 300,
    duration: 120,
    photo: 'activity_geeky4.jpg'

)
Activity.create(
    category: 'geeky',
    name: 'Historic battles tour',
    description: 'See all the important places where historic took place in Copenhagen',
    address: 'Skindergade 27, 1159 København K',
    cost: 150,
    duration: 120,
    photo: 'activity_geeky3.jpg'

)
Activity.create(
    category: 'geeky',
    name: 'Planetarium',
    description: 'Catch a star-studded show at Planetarium and see galaxies far away',
    address: 'Gl. Kongevej 10, 1610 København V',
    cost: 150,
    duration: 120,
    photo: 'activity_geeky5.jpg'

)
Activity.create(
    category: 'geeky',
    name: 'Mystery Escape Room',
    description: 'You have to solve the Davinci mystery in order to escape the room',
    address: 'Aldersrogade 6A, 2100 København Ø',
    cost: 150,
    duration: 60,
    photo: 'activity_geeky6.jpg'

)

Activity.create(
    category: 'sexy',
    name: 'Stripper Daniel',
    description: 'National Champion of male striptease 2016. Italian hot stuff in Denmark. Choose a theme and get it on.',
    address: 'Wherever you need him',
    cost: 2000,
    duration: 15,
    photo: 'activity_sexy_daniel.jpg'
  )



Activity.create(
    category: 'sexy',
    name: 'Madame Amour - Strip club',
    description: 'Strip club - says it all.',
    address: 'Istegade 28, (red light district), 1650 København',
    cost: 700,
    duration: 60,
    photo: 'activity_sexy_strip.gif'
  )


Activity.create(
    category: 'sexy',
    name: 'Pole dance',
    description: 'Pole dance for everyone, learn to dance sexy with a pole.',
    address: 'Rolighedsvej 8G st., 1958 Frederiksberg C',
    cost: 1000,
    duration: 60,
    photo: 'activity_sexy_pole.gif'
  )


Activity.create(
    category: 'adventure',
    name: 'Sleeping in the Wild',
    description: 'Sleep outside, the Danish nature has some crazy animals...',
    address: 'Artillerivej 361, 2300 København S',
    cost: 500,
    duration: 1440,
    photo: 'activity_adventure_wild.jpg'
  )

  Activity.create(
    category: 'adventure',
    name: 'Windsurfing',
    description: 'Be wild and go windsurfing - the Danish wind is crazy!',
    address: 'Hammelstrupvej 50, 2450 København SV',
    cost: 1000,
    duration: 300,
    photo: 'activity_adventure_windsurfing.jpg'
  )


Activity.create(
    category: 'adventure',
    name: 'Hiking like Vikings',
    description: 'This is a 11.61 km Hike in Copenhagen. The Hike has a total ascent of 25.55 and has a maximum elevation of 11.41m - so you might throw up by that crazy altitude.',
    address: 'Elmevænget 32, 2880 Bagsværd',
    cost: 500,
    duration: 30,
    photo: 'activity_adventure_hike.jpg'
  )


Activity.create(
    category: 'adventure',
    name: 'Treasure Hunts in the Danish wild life',
    description: 'Geocaching is an outdoor, interactive treasure hunt where you use a GPS to search for a hidden treasure. Many people around the world take part in this sport and there are hundreds of treasures hidden around Denmark. Treasures tend to be small pots with a log book and small gifts in. If you succeed in finding the treasure.',
    address: 'Dyrehavevej 62, 2930 Klampenborg',
    cost: 800,
    duration: 120,
    photo: 'activity_adventure_treasure.jpg'
  )

Activity.create(
    category: 'adventure',
    name: 'Sail a Viking long Boat',
    description: 'Set sail for a day on a Viking ship!',
    address: 'Amager Strand Stien, 2300 København S',
    cost: 800,
    duration: 180,
    photo: 'activity_adventure_ship.jpg'
  )

Activity.create(
    category: 'adventure',
    name: 'Dinner in the forest',
    description: 'The Danish countryside is full of wild berries, nuts, mushrooms and other edible plants. You are welcome to gather these delicious wild treats in public areas.',
    address: 'Vejlands Allé 4, 2300 København S',
    cost: 100,
    duration: 120,
    photo: 'activity_adventure_eat.jpg'
)

Activity.create(
    category: 'fancy',
    name: 'Dinner at Höst',
    description: 'Höst has won three international design awards, because they make good food.',
    address: 'Nørre Farimagsgade 41, 1364 København K',
    cost: 590,
    duration: 120,
    photo: 'activity_fancy_dinner.jpg'
)
Activity.create(
    category: 'fancy',
    name: 'Museum ARKEN',
    description: 'ARKEN Museum of Modern Art is a monumental landmark surrounded by a manmade beachscape just south of Copenhagen.',
    address: 'Skovvej 100, Ishøj',
    cost: 120,
    duration: 150,
    photo: 'activity_fancy_arken.jpg'
)

Activity.create(
    category: 'fancy',
    name: 'Go watch some ballet',
    description: 'Watching ballet is fancy!',
    address: 'August Bournonvilles Passage 2-8, 1017 København K',
    cost: 500,
    duration: 140,
    photo: 'activity_fancy_ballet.jpg'
)

Activity.create(
    category: 'fancy',
    name: 'Ni’mat Massage and SPA',
    description: 'The best spa in the city.',
    address: 'Ellehammersvej 20, 2770 København',
    cost: 700,
    duration: 120,
    photo: 'activity_fancy_spa.jpg'
)
Activity.create(
    category: 'fancy',
    name: 'Golf - The Danish Riviera ',
    description: 'Golf with some stunning view.',
    address: 'Bøtterupvej 2, 3100 Hornbæk',
    cost: 1000,
    duration: 200,
    photo: 'activity_fancy_golf.jpg'
)

