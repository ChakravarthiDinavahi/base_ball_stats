require 'rubygems'
require 'nokogiri'
require 'open-uri'
ActiveRecord::Base.transaction do
  puts 'Document Reading started'
  doc = Nokogiri::HTML(open('http://www.cafeconleche.org/examples/baseball/1998statistics.xml'))
  puts 'Document Reading completed'
  puts '***************Data insertion started*******************'
  doc.xpath('//player').each do |player|
    ActiveRecord::Base.transaction do
      begin
        fname = player.at('surname')&.content
        lname = player.at('given_name')&.content
        base_ball_stat = BaseBallStat.find_or_create_by(player_name: fname.to_s + ' ' + lname.to_s)

        avg = if player.at('hits').present? && player.at('at_bats').present?
                unless player.at('at_bats').content.to_f.zero?
                  base_ball_stat.avg.to_f + player.at('hits').content.to_f / player.at('at_bats').content.to_f
                end
              end.to_f

        hr = base_ball_stat.hr.to_f + player.at('home_runs')&.content.to_f
        rbi = base_ball_stat.rbi.to_f + player.at('rbi')&.content.to_f
        runs = base_ball_stat.runs.to_f + player.at('runs')&.content.to_f

        base_ball_stat.update(avg: avg, hr: hr, runs: runs, rbi: rbi)
        # sleep(1)
      rescue StandardError => e
        puts "Insertion of record#{player.at('surname')&.content} #{player.at('given_name')&.content} failed due to #{e}"
        next
      end
    end
  end
  puts '*******************Data insertion completed****************'
end
