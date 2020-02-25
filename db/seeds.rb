# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category.create!([
#   { name: 'Colors' }, 
#   { name: 'Font Sizes' },
#   { name: 'Spacing Values' },
#   { name: 'Border Radii' },
#   { name: 'Shadow Blurs' }
# ])

# List.create!([
#   { name: 'Apple iOS' },
#   { name: 'Material Design' },
#   { name: 'Polaris' },
#   { name: 'Lightning' },
#   { name: 'Andy’s Favorites' }
# ])

# List.all.each do |list|
#   Category.all.each do |category|
#     10.times do
#       Token.create!(
#         name: Faker::Name.unique.name,
#         value: Faker::Color.unique.hex_color,
#         list_id: list.id,
#         category_id: category.id
#       )
#     end
#   end
# end

List.create!([
  { name: '🦸🏽‍♀️🦸🏿‍♂️ Superhero Cards 2'},
  { name: '⬛️ The Darkness' }
])