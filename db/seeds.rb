# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

year = 2022
month = 10
day = 0

31.times do
  day += 1
  rand(5..10).times do
    PotatoePrice.create([
      {
        :time => DateTime.new(year, month, day, rand(0..23), rand(0..59), 0),
        :value => sprintf("%.2f", rand(100.99...130.90)), 
      }
    ])
  end
end

