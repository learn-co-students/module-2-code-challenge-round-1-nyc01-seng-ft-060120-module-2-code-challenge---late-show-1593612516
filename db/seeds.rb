# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all
Episode.destroy_all
Appearance.destroy_all 

# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.first(100).each do |row|
#   g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
#   g.occupation = row['GoogleKnowlege_Occupation']
#   g.save
# end

# date = Date.parse('2015-09-08')

# (1..40).each do |num|
#   Episode.create(date: date, number: num)
#   date = date.next
# end

# Guest.destroy_all
# Episode.destroy_all
# Appearance.destroy_all

g1 = Guest.create(name: "Mary Jane", occupation: "Fashion business") 
g2 = Guest.create(name: "Ashley", occupation: "Fashion Empire")
g3 = Guest.create(name: "Megan Fox", occupation: "Archeologist")

e1 = Episode.create(date:Date.parse('17/9/2015'), number:1) 
e2 = Episode.create(date:Date.parse('17/9/2016'), number:2)
e3 = Episode.create(date:Date.parse('17/9/2017'), number:3)

a1 = Appearance.create(guest_id:1, episode_id: 1, rating: 2) 
a2 = Appearance.create(guest_id:2, episode_id: 1, rating: 3)
a3 = Appearance.create(guest_id:3, episode_id: 2, rating: 5)
a4 = Appearance.create(guest_id:3, episode_id: 3, rating: 5) 


