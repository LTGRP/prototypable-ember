# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.all.map(&:destroy)
Item.all.map(&:destroy)

User.create(email: 'jmartin2683@gmail.com', first_name: 'James', last_name: 'Martin')
User.create(email: 'jshih7@gmail.com', first_name: 'Jordan', last_name: 'Shih')

10.times do |t|
  Item.create(name: "Item #{t}", description: "This is another test item, number #{t}.")
end
