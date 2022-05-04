# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Cleaning Moods..."
puts "Creating Moods..."
Mood.destroy_all

happy = Mood.create(name: 'Happy', image: 'Happy_upkqw0')
meh = Mood.create(name: 'Meh', image: 'Meh_g4xvby')
annoyed = Mood.create(name: 'Annoyed', image: 'Annoyed_ov3xbn')
anxious = Mood.create(name: 'Anxious', image: 'Anxious_pwzbfk')
angry = Mood.create(name: 'Angry', image: 'Angry_hioupy')
sad = Mood.create(name: 'Sad', image: 'Sad_hmij9i')

puts "Created Moods!"






puts "Cleaning Affirmations..."
puts "Creating Affirmations..."
Reading.destroy_all

therapy = Therapy.new(category: 'Affirmations')

HA1 = Reading.create(text: "I am responsible for my happiness, so I will choose to do the things that make me happy.")

therapy.content = HA1
therapy.mood = happy
therapy.save

HA2 = Reading.create(text: "I am confident in myself and I radiate positive energy that draws people toward me.")
therapy = Therapy.new(category: 'Affirmations')
therapy.content = HA2
therapy.mood = meh
therapy.save

HA3 = Reading.create(text: "I am in control of how I choose to approach and respond.")
therapy = Therapy.new(category: 'Affirmations')
therapy.content = HA3
therapy.mood = annoyed
therapy.save

HA4 = Reading.create(text: " I am not in danger; I am just uncomfortable; this too will pass.")
therapy = Therapy.new(category: 'Affirmations')
therapy.content = HA4
therapy.mood = anxious
therapy.save

HA5 = Reading.create(text: " I allow myself to acknowledge angry feelings without losing control.")
therapy = Therapy.new(category: 'Affirmations')
therapy.content = HA5
therapy.mood = angry
therapy.save

HA6 = Reading.create(text: " I bring something wonderful to the table and that makes me happy.")
therapy = Therapy.new(category: 'Affirmations')
therapy.content = HA6
therapy.mood = sad
therapy.save


puts " Affirmations Created"


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
