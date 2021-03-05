# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 50.times do |i|

#   avg = rand*21
#   hr = rand*21
#   runs = rand*21
#   ops = rand*21
#   sbs = rand*21
#   rbi = rand*21
#   BaseBallStat.create(avg: avg, hr:hr, runs: runs, ops:ops, sbs:sbs, rbi: rbi,player_name: "player_name_#{i}")
# end

# require 'rubygems'
# require 'nokogiri'
# require 'open-uri'
# doc = Nokogiri::HTML(open("http://www.cafeconleche.org/examples/baseball/1998statistics.xml"))

doc.xpath("//player").each do |player|
  
    fname = player.at("surname").present? ? player.at("surname").content : nil
    lname =  player.at("given_name").present? ? player.at("given_name").content : nil
    avg = 0
    if player.at('hits').present? && player.at('at_bats').present?
      avg = player.at('hits').content.to_f/player.at('at_bats').content.to_f
    end
    hr = player.at("home_runs").present? ? player.at("home_runs").content : nil

    rbi = player.at("rbi").present? ? player.at("rbi").content : nil
    runs = player.at("runs").present? ? player.at("runs").content : nil
    ops = nil
    sbs = nil
    BaseBallStat.create(avg: avg, hr:hr, runs: runs, ops:ops, sbs:sbs, rbi: rbi,player_name: fname.to_s+lname.to_s)
end