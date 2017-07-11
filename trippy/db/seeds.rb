# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def make_stuff
Transportation.create!([
  {mode: "Flight", start: "Portland", end: "Portland", duration: 20, cost: 10},
  {mode: "Flight", start: "Portland", end: "Portland", duration: 20, cost: 10},
  ])

Hospitality.create!([
    {name: "Cool Hotel", address: "5000 25th Ave", city: "Portland", country: "USA", cost: 10},
    ])
end

Transportation.delete_all
Hospitality.delete_all
make_stuff
