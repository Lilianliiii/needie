# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

happy = Mood.create(name: 'Happy')



reading = Reading.create(text: "this is a reading this is a reading this is a reading this is a reading")

therapy = Therapy.new(category: 'Affirmations')
therapy.content = reading
therapy.mood = happy
therapy.save


reading = Reading.create(text: "this is a reading this is a reading this is a reading this is a reading")
therapy = Therapy.new(category: 'Good Vibes', sub_category: "Articles")
therapy.content = reading
therapy.mood = happy
therapy.save
