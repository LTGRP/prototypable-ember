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
  Item.create(name: "Test item number #{t}",
              description: "Lorem ipsum stuff that's the shizzle amet, pizzle adipiscing for sure. My shizz break it down velizzle, dizzle volutpizzle, suscipizzle quizzle, gravida fo shizzle, fizzle. Owned eget brizzle. Sizzle erizzle. Fusce izzle dolor hizzle cool tempizzle tempor. Maurizzle pizzle nibh et turpizzle. Shizzle my nizzle crocodizzle izzle my shizz. Pellentesque break it down rhoncizzle nisi. In hizzle habitasse platea dictumst. Dizzle dapibizzle. Curabitizzle tellus urna, pretizzle i saw beyonces tizzles and my pizzle went crizzle, mattis dope, eleifend da bomb, nunc. Boofron . Integer boofron fo shizzle my nizzle sizzle that's the shizzle.",
              instructions: "Lorem ipsum stuff that's the shizzle amet, pizzle adipiscing for sure. My shizz break it down velizzle, dizzle volutpizzle, suscipizzle quizzle, gravida fo shizzle, fizzle. Owned eget brizzle. Sizzle erizzle. Fusce izzle dolor hizzle cool tempizzle tempor. Maurizzle pizzle nibh et turpizzle. Shizzle my nizzle crocodizzle izzle my shizz. Pellentesque break it down rhoncizzle nisi. In hizzle habitasse platea dictumst. Dizzle dapibizzle. Curabitizzle tellus urna, pretizzle i saw beyonces tizzles and my pizzle went crizzle, mattis dope, eleifend da bomb, nunc. Boofron . Integer boofron fo shizzle my nizzle sizzle that's the shizzle.")
end
