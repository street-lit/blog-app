# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  rand_num = Random.new
  Post.create ({
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs(rand_num.rand(1..3)).join(" ")
    })
end

80.times do
  doge_start = %w(how such very many)
  doge_end = %w(wonder neutrals title blog marvels sparkle tingle yolo! mystery ROFL OMG totes! post comment lorem ipsum)
  doge_exclaim = ["???", "!", "! <3", " <3"]
  doge = 1.times.map { doge_start.sample + " " + doge_end.sample + doge_exclaim.sample }.join("").capitalize
  Comment.create ({
    message: doge,
    post_id: Faker::Number.between(1, 50)
  })
end
