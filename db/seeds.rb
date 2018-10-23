# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Supplier.create(
  name: "Amazon",
  email: "amazon@email.com",
  phone_number:1231231232)

Supplier.create(
  name: "Toy_Store",
  email: "toystore@email.com",
  phone_number: 4323432342)

Product.create(
  name: 'Batman',
  price: 9,
  description: 'mug with Batman wings',
  supplier_id: 1
)

Product.create(
  name: 'Superman',
  price: 10,
  description: 'mug with Superman',
  supplier_id: 1
)

Product.create(
  name: 'Spiderman',
  price: 11, 
  description: 'mug with Spiderman',
  supplier_id: 1
)

Image.create(product_id: 1, url: "'https://lh3.googleusercontent.com/proxy/JeZaSG8VoGUQFwqw6FLUEkqzFn4k2dYN65esFmRvmME0EK4UrMA9QE3aMjwOX5jzgrvpM9NTQQa7MvcjmD5zLXcZ_G7swUM98eSUXoHEcP2E5n9kBwcfkhU2v6Yq8zk7RISxkVjhBTVLcB0tGbetiyb0SMBg39kNmCLM0pqGpOQPedXM4wvVQLcoMhc1EzLB_suTx9rYCrPkStY81eI=s1000-pd-e365-rw-pc0xffffff'")
Image.create(product_id: 1, url: "https://images-na.ssl-images-amazon.com/images/I/71UBJVemzzL._SX679_.jpg")
Image.create(product_id: 2, url: "'https://www.dhresource.com/0x0s/f2-albu-g5-M00-0C-B3-rBVaJFoahL6AZh5BAACvP8WMgJI695.jpg/personalized-muscle-mug-creative-ceramic.jpg'")
Image.create(product_id: 3, url: "'https://images-na.ssl-images-amazon.com/images/I/41MRd2-mqHL._SX355_.jpg'")

