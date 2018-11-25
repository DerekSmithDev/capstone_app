# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
event = Event.create!(name: "Effie Gray", description: "Film Screening", user_id: 4, venue_id: 4, start_date: "2018-01-20 19:00:00.000", end_date: "2018-01-20 23:59:59.000", status: "sale_ended", sales: 33)
event = Event.create!(name: "Mermaids", description: "Live Play", user_id: 4, venue_id: 1, start_date: "2018-03-09 19:00:00.000", end_date: "2018-03-09 23:59:59.000", status: "sale_ended", sales: 53)
event = Event.create!(name: "Charlie Chan's Courage", description: "Sing a long", user_id: 2, venue_id: 9, start_date: "2018-07-19 19:00:00.000", end_date: "2018-07-19 23:59:59.000", status: "sale_ended", sales: 96)
event = Event.create!(name: "Fantasia", description: "viewing", user_id: 2, venue_id: 10, start_date: "2018-11-30 19:00:00.000", end_date: "2018-11-30 23:59:59.000", status: "on_sale", sales: 81)
event = Event.create!(name: "Trick or Treat", description: "live event", user_id: 3, venue_id: 2, start_date: "2018-12-02 19:00:00.000", end_date: "2018-12-02 23:59:59.000", status: "on_sale", sales: 85)
event = Event.create!(name: "Scandal Sheet", description: "Stage adaptation", user_id: 1, venue_id: 7, start_date: "2019-01-18 19:00:00.000", end_date: "2018-01-18 23:59:59.000", status: "on_sale", sales: 33)
event = Event.create!(name: "Detention", description: "improv revue", user_id: 1, venue_id: 4, start_date: "2019-03-11 19:00:00.000", end_date: "2019-03-11 23:59:59.000", status: "pending", sales: 31)
event = Event.create!(name: "Rock 'n' Roll Nightmare", description: "concert", user_id: 2, venue_id: 10, start_date: "2019-05-06 19:00:00.000", end_date: "2019-05-06 23:59:59.000", status: "pending", sales: 70)
event = Event.create!(name: "Wheels on Meals", description: "charity", user_id: 3, venue_id: 8, start_date: "2019-07-17 19:00:00.000", end_date: "2019-07-17 23:59:59.000", status: "pending", sales: 33)
event = Event.create!(name: "The Adventures of Picasso", description: "art display", user_id: 3, venue_id: 3, start_date: "2019-09-08 19:00:00.000", end_date: "2019-09-08 23:59:59.000", status: "pending", sales: 55)