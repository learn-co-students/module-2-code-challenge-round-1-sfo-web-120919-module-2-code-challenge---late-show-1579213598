# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Appearance.destroy_all
Guest.destroy_all
Episode.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.first(100).each do |row|
  g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
  g.occupation = row['GoogleKnowlege_Occupation']
  g.save
end

date = Date.parse('2015-09-08')

(1..40).each do |num|
  Episode.create(date: date, number: num)
  date = date.next
end

Appearance.create(guest_id:Guest.all[8].id,episode_id:Episode.all[8].id,rating:5)

Appearance.create(guest_id:Guest.all[12].id,episode_id:Episode.all[12].id,rating:2)

Appearance.create(guest_id:Guest.all[8].id,episode_id:Episode.all[7].id,rating:3)

Appearance.create(guest_id:Guest.all[8].id,episode_id:Episode.all[5].id,rating:4)

