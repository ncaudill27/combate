# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
division = ['Super', 'Heavy', 'Middle', 'Welter', 'Light', 'Feather', 'Fly']
gi_skills = ['White', 'Blue', 'Purple', 'Brown', 'Black']
nogi_skills = ['Beginner', 'Intermediate', 'Advanced']

division.each do |weight|
  gi_skills.each{|skill| Division.create(weight_class: weight, skill: skill)}
  nogi_skills.each{|skill| Division.create(weight_class: weight, gi: false, skill: skill)}
end