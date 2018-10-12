# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: 'Batman',
  price: 9,
  image_url: 'https://lh3.googleusercontent.com/proxy/JeZaSG8VoGUQFwqw6FLUEkqzFn4k2dYN65esFmRvmME0EK4UrMA9QE3aMjwOX5jzgrvpM9NTQQa7MvcjmD5zLXcZ_G7swUM98eSUXoHEcP2E5n9kBwcfkhU2v6Yq8zk7RISxkVjhBTVLcB0tGbetiyb0SMBg39kNmCLM0pqGpOQPedXM4wvVQLcoMhc1EzLB_suTx9rYCrPkStY81eI=s1000-pd-e365-rw-pc0xffffff',
  description: 'mug with Batman wings'
)

Product.create(
  name: 'Superman',
  price: 10,
  image_url: 'https://www.dhresource.com/0x0s/f2-albu-g5-M00-0C-B3-rBVaJFoahL6AZh5BAACvP8WMgJI695.jpg/personalized-muscle-mug-creative-ceramic.jpg',
  description: 'mug with Superman'
)

Product.create(
  name: 'Spiderman',
  price: 11,
  image_url: 'https://images-na.ssl-images-amazon.com/images/I/41MRd2-mqHL._SX355_.jpg',
  description: 'mug with Spiderman'
)