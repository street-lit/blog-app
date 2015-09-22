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
  doge_start = %w(wow! how such very)
  doge_end = %w(wonder wild neutrals fun sunshine cereal space taste taco marvels sparkle tingle yolo! mystery ROFL OMG totes)
  doge_exclaim = %w(? ! <3)
  doge = 1.times.map { doge_start.sample + " " + doge_end.sample + doge_exclaim.sample }
  Comment.create ({
    message: doge
  })
end
