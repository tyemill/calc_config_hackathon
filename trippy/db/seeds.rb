# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def make_stuff
Transportation.create!([
  # Seattle tickets
  {mode: "Flight", start: "Seattle", end: "Seattle", duration: 1, cost: 60},
  {mode: "Train", start: "Seattle", end: "Seattle", duration: 4, cost: 30},
  {mode: "Flight", start: "Seattle", end: "Los Angeles", duration: 2, cost: 190},
  {mode: "Train", start: "Seattle", end: "Los Angeles", duration: 5, cost: 60},
  {mode: "Flight", start: "Seattle", end: "New York", duration: 5, cost: 260},
  {mode: "Flight", start: "Seattle", end: "New York", duration: 7, cost: 110},
  {mode: "Train", start: "Seattle", end: "New York", duration: 9, cost: 100},

  # Seattle tickets
  {mode: "Flight", start: "Seattle", end: "Seattle", duration: 1, cost: 60},
  {mode: "Train", start: "Seattle", end: "Seattle", duration: 4, cost: 30},
  {mode: "Flight", start: "Seattle", end: "Los Angeles", duration: 1, cost: 200},
  {mode: "Train", start: "Seattle", end: "Los Angeles", duration: 3, cost: 70},
  {mode: "Flight", start: "Seattle", end: "New York", duration: 6, cost: 280},
  {mode: "Flight", start: "Seattle", end: "New York", duration: 10, cost: 130},
  {mode: "Train", start: "Seattle", end: "New York", duration: 9, cost: 150},

  # Los Angeles tickets
  {mode: "Flight", start: "Los Angeles", end: "Seattle", duration: 2, cost: 180},
  {mode: "Train", start: "Los Angeles", end: "Seattle", duration: 5, cost: 65},
  {mode: "Flight", start: "Los Angeles", end: "Seattle", duration: 1, cost: 200},
  {mode: "Train", start: "Los Angeles", end: "Seattle", duration: 3, cost: 70},
  {mode: "Flight", start: "Los Angeles", end: "New York", duration: 6, cost: 250},
  {mode: "Flight", start: "Los Angeles", end: "New York", duration: 9, cost: 170},
  {mode: "Train", start: "Los Angeles", end: "New York", duration: 9, cost: 160},

  # New York tickets
  {mode: "Flight", start: "New York", end: "Seattle", duration: 2, cost: 180},
  {mode: "Train", start: "New York", end: "Seattle", duration: 5, cost: 65},
  {mode: "Flight", start: "New York", end: "Seattle", duration: 1, cost: 200},
  {mode: "Train", start: "New York", end: "Seattle", duration: 3, cost: 70},
  {mode: "Flight", start: "New York", end: "Los Angeles", duration: 6, cost: 280},
  {mode: "Flight", start: "New York", end: "Los Angeles", duration: 9, cost: 190},
  {mode: "Train", start: "New York", end: "Los Angeles", duration: 9, cost: 190},
  ])

Activities.create!([
    {city: "Seattle", activity_name: "Space Needle", duration: 2, weight: 1, cost: 27},
    {city: "Seattle", activity_name: "Seattle City Monorail", duration: 1, weight: 2, cost: 15},
    {city: "Seattle", activity_name: "Museum of Pop Culture", duration: 3, weight: 2, cost: 10},
    {city: "Seattle", activity_name: "Pike Place Market", duration: 2, weight: 1, cost: 0},
    {city: "Seattle", activity_name: "Gas Works Park", duration: 1, weight: 4, cost: 0},
    {city: "Seattle", activity_name: "Seattle Aquarium", duration: 3, weight: 2, cost: 25},
    {city: "Seattle", activity_name: "Space Great Wheel", duration: 1, weight: 1, cost: 10},
    {city: "Seattle", activity_name: "Woodland Park Zoo", duration: 3, weight: 3, cost: 28},
    {city: "Seattle", activity_name: "Space Waterfront", duration: 3, weight: 3, cost: 0},
    {city: "Seattle", activity_name: "Chinatown - International District", duration: 3, weight: 2, cost: 0},
    {city: "Seattle", activity_name: "Seattle Art Museum", duration: 2, weight: 3, cost: 15},
    {city: "Seattle", activity_name: "Pacific Science Center", duration: 3, weight: 3, cost: 20},
    {city: "Seattle", activity_name: "Chihuly Garden and Glass", duration: 2, weight: 2, cost: 5},
    {city: "Seattle", activity_name: "Japanese Gardens", duration: 1, weight: 4, cost: 4},
    {city: "Seattle", activity_name: "Pacific Northwest Ballet", duration: 2, weight: 2, cost: 15},
    {city: "Seattle", activity_name: "Aston Manor", duration: 2, weight: 4, cost: 10},
    ])


Hospitality.create!([
    {name: "Cool Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 10},
    {name: "Belltown Inn", address: "2301 Third Ave, Seattle WA 98121", city: "Seattle", country: "USA", cost: 50},
    {name: "Watertown Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 110},
    {name: "Georgetown Inn", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 120},
    {name: "Courtyard", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 160},
    {name: "Best Western Plus Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 120},
    {name: "Best Western Executive Inn", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 100},
    {name: "Paramount Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 180},
    {name: "Inn Market Seattle", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 160},
    {name: "Mediterranean Inn", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 10},
    {name: "Marriot Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 110},
    {name: "Stayover Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 90},
    {name: "Grand Seattle Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 60},
    {name: "Space Needle  Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 70},
    {name: "Heart Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 70},
    {name: "Silver Cloud Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 50},
    {name: "The college Inn Guest Houes ", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 10},
    {name: "Water Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 10},
    {name: "Embassy Suites", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 120},
    {name: "The Maxwell Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 80},
    {name: "Travelodge Seattle Center", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 50},
    {name: "MarQueen Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 50},
    {name: "Four Season Hotel Seattle", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 200},
    {name: "Grand Hyatt Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 275},
    {name: "Hyatt House Seattle", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 239},
    {name: "Sheraton Seattle Hotel", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 255},
    {name: "Loews Hotel 1000", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 255},
    {name: "Crown Plaza Seattle", address: "5000 25th Ave", city: "Seattle", country: "USA", cost: 269},
    ])
end

Transportation.delete_all
Activities.delete_all
Hospitality.delete_all
make_stuff
