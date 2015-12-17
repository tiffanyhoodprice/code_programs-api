# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'CB_data.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = CodeProgram.new
  t.keywords = row['keywords']
  t.website = row['website']
  t.mission_description = row['mission_description']
  t.population_focus = row['population_focus']
  t.organization_name = row['organization_name']
  t.time_commitment = row['time_commitment']
  t.cost = row['cost']
  t.languages_courses = row['languages_courses']
  t.address = row['address']
  t.city = row['city']
  t.state = row['state']
  t.zip = row['zip']
  t.locations = row['locations']
  t.leadership_contact = row['leadership_contact']
  t.title = row['title']
  t.email = row['email']
  t.phone_number = row['phone_number']
  t.when_founded = row['when_founded']
  t.save
  puts "#{t.organization_name} saved"

end

puts "There are now #{CodeProgram.count} rows in the code program table"
