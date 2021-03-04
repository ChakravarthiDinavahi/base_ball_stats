# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i|

  avg = rand*21
  hr = rand*21
  runs = rand*21
  ops = rand*21
  sbs = rand*21
  rbi = rand*21
  BaseBallStat.create(avg: avg, hr:hr, runs: runs, ops:ops, sbs:sbs, rbi: rbi,player_name: "player_name_#{i}")
end