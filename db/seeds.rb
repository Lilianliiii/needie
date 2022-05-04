# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Cleaning database..."
Mood.destroy_all

happy = Mood.create(name: 'Happy', image: 'Happy_upkqw0')
meh = Mood.create(name: 'Meh', image: 'Meh_g4xvby')
annoyed = Mood.create(name: 'Annoyed', image: 'Annoyed_ov3xbn')
anxious = Mood.create(name: 'Anxious', image: 'Anxious_pwzbfk')
angry = Mood.create(name: 'Angry', image: 'Angry_hioupy')
sad = Mood.create(name: 'Sad', image: 'Sad_hmij9i')

puts "Created Moods!"
# reading = Reading.create(text: "this is a reading this is a reading this is a reading this is a reading")
# therapy = Therapy.new(category: 'Affirmations')
# therapy.content = reading
# therapy.mood = happy
# therapy.save


# reading = Reading.create(text: "this is a reading this is a reading this is a reading this is a reading")
# therapy = Therapy.new(category: 'Good Vibes', sub_category: "Articles")
# therapy.content = reading
# therapy.mood = happy
# therapy.save
