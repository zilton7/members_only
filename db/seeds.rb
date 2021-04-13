# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "zil", email:'zil@mail.com', password:'123456')
User.create(name: "marijan", email:'marijan@mail.com', password:'123456')

puts 'Dummy users created'

3.times do |i|
  Post.create(title: "Post-#{i} Title", body: "Money scams. Wine scams. Love scams. This Pocket collection has 11 outrageous scams that will leave you wondering: “how did they get away with this?", user: User.last)
end