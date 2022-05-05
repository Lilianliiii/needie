# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Audio.destroy_all
Video.destroy_all
Reading.destroy_all
Animation.destroy_all
Walk.destroy_all
Therapy.destroy_all
Mood.destroy_all


puts "Creating Moods..."
happy = Mood.create(name: 'Happy', image: 'Happy_upkqw0')
meh = Mood.create(name: 'Meh', image: 'Meh_g4xvby')
annoyed = Mood.create(name: 'Annoyed', image: 'Annoyed_ov3xbn')
anxious = Mood.create(name: 'Anxious', image: 'Anxious_pwzbfk')
angry = Mood.create(name: 'Angry', image: 'Angry_hioupy')
sad = Mood.create(name: 'Sad', image: 'Sad_hmij9i')

puts "Created Moods!"

# puts "Creating Therapies..."
# THERAPY MODELS

# READING Model
# affirmations_therapy = Therapy.new(category: 'Affirmations')
# good_vibes_news_therapy = Therapy.new(category: 'Good Vibes', sub_category: 'Good News')

# ANIMATION Model
# good_vibes_joke_therapy = Therapy.new(category: 'Good Vibes', sub_category: 'Joke of the Day')

# AUDIO Model
# audio_music_therapy = Therapy.new(category: 'Audio', sub_category: 'Music')
# audio_podcast_therapy = Therapy.new(category: 'Audio', sub_category: 'Podcast')

# VIDEO Model
# movement_yoga_therapy = Therapy.new(category: 'Movement', sub_category: 'Yoga')
# movement_breathwork_therapy = Therapy.new(category: 'Movement', sub_category: 'Breathwork')
# movement_meditation_therapy = Therapy.new(category: 'Movement', sub_category: 'Meditation')

# WALK MODEL
# movement_walk_therapy = Therapy.new(category: 'Movement', sub_category: 'Walk')
# puts "Therapies Created"


puts "Creating Affirmations..."
happy_aff = Reading.create(text: "I am responsible for my happiness, so I will choose to do the things that make me happy.")
affirmations_therapy = Therapy.new(category: 'affirmations')
affirmations_therapy.content = happy_aff
affirmations_therapy.mood = happy
affirmations_therapy.save

meh_aff = Reading.create(text: "I am confident in myself and I radiate positive energy that draws people toward me.")
affirmations_therapy = Therapy.new(category: 'affirmations')
affirmations_therapy.content = meh_aff
affirmations_therapy.mood = meh
affirmations_therapy.save

annoyed_aff = Reading.create(text: "I am in control of how I choose to approach and respond.")
affirmations_therapy = Therapy.new(category: 'affirmations')
affirmations_therapy.content = annoyed_aff
affirmations_therapy.mood = annoyed
affirmations_therapy.save

anx_aff = Reading.create(text: " I am not in danger; I am just uncomfortable; this too will pass.")
affirmations_therapy = Therapy.new(category: 'affirmations')
affirmations_therapy.content = anx_aff
affirmations_therapy.mood = anxious
affirmations_therapy.save

angry_aff = Reading.create(text: " I allow myself to acknowledge angry feelings without losing control.")
affirmations_therapy = Therapy.new(category: 'affirmations')
affirmations_therapy.content = angry_aff
affirmations_therapy.mood = angry
affirmations_therapy.save

sad_aff = Reading.create(text: " I bring something wonderful to the table and that makes me happy.")
affirmations_therapy = Therapy.new(category: 'affirmations')
affirmations_therapy.content = sad_aff
affirmations_therapy.mood = sad
affirmations_therapy.save
puts " Affirmations Created"

puts "Creating Good News "
happy_news = Reading.create(text: " With his custom bowl, this 12-year-old raised $325,000 for Ukrainian kids")
good_vibes_news_therapy = Therapy.new(category: 'good vibes', sub_category: 'good News')
good_vibes_news_therapy.content = happy_news
good_vibes_news_therapy.mood = happy
good_vibes_news_therapy.save

meh_news = Reading.create(text: "Scientists finish sequencing a complete human genome")
good_vibes_news_therapy = Therapy.new(category: 'good vibes', sub_category: 'good news')
good_vibes_news_therapy.content = meh_news
good_vibes_news_therapy.mood = meh
good_vibes_news_therapy.save

annoyed_news = Reading.create(text: "In the Seychelles, conservation efforts are paying off for the endangered green turtle")
good_vibes_news_therapy = Therapy.new(category: 'good vibes', sub_category: 'good news')
good_vibes_news_therapy.content = annoyed_news
good_vibes_news_therapy.mood = annoyed
good_vibes_news_therapy.save

anx_news = Reading.create(text: "Dozens of Afghan refugees have found work at Sheraton Downtown Phoenix hotel")
good_vibes_news_therapy = Therapy.new(category: 'good vibes', sub_category: 'good news')
good_vibes_news_therapy.content = anx_news
good_vibes_news_therapy.mood = anxious
good_vibes_news_therapy.save

angry_news = Reading.create(text: " I allow myself to acknowledge angry feelings without losing control.")
good_vibes_news_therapy = Therapy.new(category: 'good vibes', sub_category: 'good news')
good_vibes_news_therapy.content = angry_news
good_vibes_news_therapy.mood = angry
good_vibes_news_therapy.save

sad_news = Reading.create(text: " I bring something wonderful to the table and that makes me happy.")
good_vibes_news_therapy = Therapy.new(category: 'good vibes', sub_category: 'good news')
good_vibes_news_therapy.content = sad_news
good_vibes_news_therapy.mood = sad
good_vibes_news_therapy.save

puts "News Created"

puts "Creating Jokes..."
happy_joke = Animation.create(link: "Why do fish like to eat worms? Because they get hooked to them ")
good_vibes_joke_therapy = Therapy.new(category: 'good vibes', sub_category: 'joke of the day')
good_vibes_joke_therapy.content = happy_joke
good_vibes_joke_therapy.mood = happy
good_vibes_joke_therapy.save

meh_joke = Animation.create(link: "Why do fish like to eat worms? Because they get hooked to them ")
good_vibes_joke_therapy = Therapy.new(category: 'good vibes', sub_category: 'joke of the day')
good_vibes_joke_therapy.content = meh_joke
good_vibes_joke_therapy.mood = meh
good_vibes_joke_therapy.save

annoyed_joke = Animation.create(link: "Why do fish like to eat worms? Because they get hooked to them ")
good_vibes_joke_therapy = Therapy.new(category: 'good vibes', sub_category: 'joke of the day')
good_vibes_joke_therapy.content = annoyed_joke
good_vibes_joke_therapy.mood = annoyed
good_vibes_joke_therapy.save

anx_joke = Animation.create(link: "Why do fish like to eat worms? Because they get hooked to them ")
good_vibes_joke_therapy = Therapy.new(category: 'good vibes', sub_category: 'joke of the day')
good_vibes_joke_therapy.content = anx_joke
good_vibes_joke_therapy.mood = anxious
good_vibes_joke_therapy.save

angry_joke = Animation.create(link: "Why do fish like to eat worms? Because they get hooked to them ")
good_vibes_joke_therapy = Therapy.new(category: 'good vibes', sub_category: 'joke of the day')
good_vibes_joke_therapy.content = angry_joke
good_vibes_joke_therapy.mood = angry
good_vibes_joke_therapy.save

sad_joke = Animation.create(link: "Why do fish like to eat worms? Because they get hooked to them ")
good_vibes_joke_therapy = Therapy.new(category: 'good vibes', sub_category: 'joke of the day')
good_vibes_joke_therapy.content = sad_joke
good_vibes_joke_therapy.mood = sad
good_vibes_joke_therapy.save

puts "Jokes Created"

puts "Creating Songs..."

happy_song = Audio.create(link: "link to a happy song")
audio_music_therapy = Therapy.new(category: 'audio', sub_category: 'music')
audio_music_therapy.content = happy_song
audio_music_therapy.mood = happy
audio_music_therapy.save

meh_song = Audio.create(link: "link to a meh song")
audio_music_therapy = Therapy.new(category: 'audio', sub_category: 'music')
audio_music_therapy.content = meh_song
audio_music_therapy.mood = meh
audio_music_therapy.save

annoyed_song = Audio.create(link: "link to a annoyed song")
audio_music_therapy = Therapy.new(category: 'audio', sub_category: 'music')
audio_music_therapy.content = annoyed_song
audio_music_therapy.mood = annoyed
audio_music_therapy.save

anx_song = Audio.create(link: "link to a anxious song")
audio_music_therapy = Therapy.new(category: 'audio', sub_category: 'music')
audio_music_therapy.content = anx_song
audio_music_therapy.mood = anxious
audio_music_therapy.save

angry_song = Audio.create(link: "link to an angry song")
audio_music_therapy = Therapy.new(category: 'audio', sub_category: 'music')
audio_music_therapy.content = angry_song
audio_music_therapy.mood = angry
audio_music_therapy.save

sad_song = Audio.create(link: "link to a sad song")
audio_music_therapy = Therapy.new(category: 'audio', sub_category: 'music')
audio_music_therapy.content = sad_song
audio_music_therapy.mood = sad
audio_music_therapy.save

puts "Songs Created"

puts "Creating Podcasts..."

happy_podcast = Audio.create(link: "link to a happy podcast")
audio_podcast_therapy = Therapy.new(category: 'audio', sub_category: 'podcast')
audio_podcast_therapy.content = happy_podcast
audio_podcast_therapy.mood = happy
audio_podcast_therapy.save

meh_podcast = Audio.create(link: "link to a meh podcast")
audio_podcast_therapy = Therapy.new(category: 'audio', sub_category: 'podcast')
audio_podcast_therapy.content = meh_podcast
audio_podcast_therapy.mood = meh
audio_podcast_therapy.save

annoyed_podcast = Audio.create(link: "link to a annoyed podcast")
audio_podcast_therapy = Therapy.new(category: 'audio', sub_category: 'podcast')
audio_podcast_therapy.content = annoyed_podcast
audio_podcast_therapy.mood = annoyed
audio_podcast_therapy.save

anx_podcast = Audio.create(link: "link to a anxious podcast")
audio_podcast_therapy = Therapy.new(category: 'audio', sub_category: 'podcast')
audio_podcast_therapy.content = anx_podcast
audio_podcast_therapy.mood = anxious
audio_podcast_therapy.save

angry_podcast = Audio.create(link: "link to an angry podcast")
audio_podcast_therapy = Therapy.new(category: 'audio', sub_category: 'podcast')
audio_podcast_therapy.content = angry_podcast
audio_podcast_therapy.mood = angry
audio_podcast_therapy.save

sad_podcast = Audio.create(link: "link to a sad podcast")
audio_podcast_therapy = Therapy.new(category: 'audio', sub_category: 'podcast')
audio_podcast_therapy.content = sad_podcast
audio_podcast_therapy.mood = sad
audio_podcast_therapy.save

puts "Podcasts Created"

puts "Creating Yoga Videos..."
happy_yoga = Video.create(link: "https://www.youtube.com/watch?v=NSsAHYTtYbk")
movement_yoga_therapy = Therapy.new(category: 'movement', sub_category: 'yoga')
movement_yoga_therapy.content = happy_yoga
movement_yoga_therapy.mood = happy
movement_yoga_therapy.save

meh_yoga = Video.create(link: "https://www.youtube.com/watch?v=NSsAHYTtYbk")
movement_yoga_therapy = Therapy.new(category: 'movement', sub_category: 'yoga')
movement_yoga_therapy.content = meh_yoga
movement_yoga_therapy.mood = meh
movement_yoga_therapy.save

annoyed_yoga = Video.create(link: "https://www.youtube.com/watch?v=NSsAHYTtYbk")
movement_yoga_therapy = Therapy.new(category: 'movement', sub_category: 'yoga')
movement_yoga_therapy.content = annoyed_yoga
movement_yoga_therapy.mood = annoyed
movement_yoga_therapy.save

anx_yoga = Video.create(link: "https://www.youtube.com/watch?v=NSsAHYTtYbk")
movement_yoga_therapy = Therapy.new(category: 'movement', sub_category: 'yoga')
movement_yoga_therapy.content = anx_yoga
movement_yoga_therapy.mood = anxious
movement_yoga_therapy.save

angry_yoga = Video.create(link: "https://www.youtube.com/watch?v=NSsAHYTtYbk")
movement_yoga_therapy = Therapy.new(category: 'movement', sub_category: 'yoga')
movement_yoga_therapy.content = angry_yoga
movement_yoga_therapy.mood = angry
movement_yoga_therapy.save

sad_yoga = Video.create(link: "https://www.youtube.com/watch?v=NSsAHYTtYbk")
movement_yoga_therapy = Therapy.new(category: 'movement', sub_category: 'yoga')
movement_yoga_therapy.content = sad_yoga
movement_yoga_therapy.mood = sad
movement_yoga_therapy.save

puts "Yoga Videos Created"

puts "Creating Breathwork Videos..."
happy_breathwork = Video.create(link: "https://www.youtube.com/watch?v=w2Mi0a5dDhc")
movement_breathwork_therapy = Therapy.new(category: 'movement', sub_category: 'breathwork')
movement_breathwork_therapy.content = happy_breathwork
movement_breathwork_therapy.mood = happy
movement_breathwork_therapy.save

meh_breathwork = Video.create(link: "https://www.youtube.com/watch?v=w2Mi0a5dDhc")
movement_breathwork_therapy = Therapy.new(category: 'movement', sub_category: 'breathwork')
movement_breathwork_therapy.content = meh_breathwork
movement_breathwork_therapy.mood = meh
movement_breathwork_therapy.save

annoyed_breathwork = Video.create(link: "https://www.youtube.com/watch?v=w2Mi0a5dDhc")
movement_breathwork_therapy = Therapy.new(category: 'movement', sub_category: 'breathwork')
movement_breathwork_therapy.content = annoyed_breathwork
movement_breathwork_therapy.mood = annoyed
movement_breathwork_therapy.save

anx_breathwork = Video.create(link: "https://www.youtube.com/watch?v=w2Mi0a5dDhc")
movement_breathwork_therapy = Therapy.new(category: 'movement', sub_category: 'breathwork')
movement_breathwork_therapy.content = anx_breathwork
movement_breathwork_therapy.mood = anxious
movement_breathwork_therapy.save

angry_breathwork = Video.create(link: "https://www.youtube.com/watch?v=w2Mi0a5dDhc")
movement_breathwork_therapy = Therapy.new(category: 'movement', sub_category: 'breathwork')
movement_breathwork_therapy.content = angry_breathwork
movement_breathwork_therapy.mood = angry
movement_breathwork_therapy.save

sad_breathwork = Video.create(link: "https://www.youtube.com/watch?v=w2Mi0a5dDhc")
movement_breathwork_therapy = Therapy.new(category: 'movement', sub_category: 'breathwork')
movement_breathwork_therapy.content = sad_breathwork
movement_breathwork_therapy.mood = sad
movement_breathwork_therapy.save

puts "Breathwork Videos Created"


puts "Creating Mediation Videos..."
happy_breathwork = Video.create(link: "https://www.youtube.com/watch?v=z6X5oEIg6Ak")
movement_meditation_therapy = Therapy.new(category: 'movement', sub_category: 'meditation')
movement_meditation_therapy.content = happy_breathwork
movement_meditation_therapy.mood = happy
movement_meditation_therapy.save

meh_breathwork = Video.create(link: "https://www.youtube.com/watch?v=z6X5oEIg6Ak")
movement_meditation_therapy = Therapy.new(category: 'movement', sub_category: 'meditation')
movement_meditation_therapy.content = meh_breathwork
movement_meditation_therapy.mood = meh
movement_meditation_therapy.save

annoyed_breathwork = Video.create(link: "https://www.youtube.com/watch?v=z6X5oEIg6Ak")
movement_meditation_therapy = Therapy.new(category: 'movement', sub_category: 'meditation')
movement_meditation_therapy.content = annoyed_breathwork
movement_meditation_therapy.mood = annoyed
movement_meditation_therapy.save

anx_breathwork = Video.create(link: "https://www.youtube.com/watch?v=z6X5oEIg6Ak")
movement_meditation_therapy = Therapy.new(category: 'movement', sub_category: 'meditation')
movement_meditation_therapy.content = anx_breathwork
movement_meditation_therapy.mood = anxious
movement_meditation_therapy.save

angry_breathwork = Video.create(link: "https://www.youtube.com/watch?v=z6X5oEIg6Ak")
movement_meditation_therapy = Therapy.new(category: 'movement', sub_category: 'meditation')
movement_meditation_therapy.content = angry_breathwork
movement_meditation_therapy.mood = angry
movement_meditation_therapy.save

sad_breathwork = Video.create(link: "https://www.youtube.com/watch?v=z6X5oEIg6Ak")
movement_meditation_therapy = Therapy.new(category: 'movement', sub_category: 'meditation')
movement_meditation_therapy.content = sad_breathwork
movement_meditation_therapy.mood = sad
movement_meditation_therapy.save

puts "Breathwork Videos Created"


puts "Creating Walks Videos..."
happy_walk = Walk.create(name: "Walk 5 KM", coordinates: "123-456-789")
movement_walk_therapy = Therapy.new(category: 'movement', sub_category: 'walk')
movement_walk_therapy.content = happy_walk
movement_walk_therapy.mood = happy
movement_walk_therapy.save

meh_walk = Walk.create(name: "Walk 5 KM", coordinates: "123-456-789")
movement_walk_therapy = Therapy.new(category: 'movement', sub_category: 'walk')
movement_walk_therapy.content = meh_walk
movement_walk_therapy.mood = meh
movement_walk_therapy.save

annoyed_walk = Walk.create(name: "Walk 5 KM", coordinates: "123-456-789")
movement_walk_therapy = Therapy.new(category: 'movement', sub_category: 'walk')
movement_walk_therapy.content = annoyed_walk
movement_walk_therapy.mood = annoyed
movement_walk_therapy.save

anxious_walk = Walk.create(name: "Walk 5 KM", coordinates: "123-456-789")
movement_walk_therapy = Therapy.new(category: 'movement', sub_category: 'walk')
movement_walk_therapy.content = anxious_walk
movement_walk_therapy.mood = anxious
movement_walk_therapy.save

angry_walk = Walk.create(name: "Walk 5 KM", coordinates: "123-456-789")
movement_walk_therapy = Therapy.new(category: 'movement', sub_category: 'walk')
movement_walk_therapy.content = angry_walk
movement_walk_therapy.mood = angry
movement_walk_therapy.save

sad_walk = Walk.create(name: "Walk 5 KM", coordinates: "123-456-789")
movement_walk_therapy = Therapy.new(category: 'movement', sub_category: 'walk')
movement_walk_therapy.content = sad_walk
movement_walk_therapy.mood = sad
movement_walk_therapy.save

puts "Walks Created"
puts "Everything is Created"
