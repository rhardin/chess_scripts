#!/usr/bin/ruby
require 'open-uri'
# www.chesscenter.com/twic/zips/twic${I}g.zip

puts "TWIC Fetcher - starting..."
(902..903).each do |i| 
  open("twic"+i.to_s+"g.zip", 'w') do |local_file|
    open("http://www.chesscenter.com/twic/zips/twic"+i.to_s+"g.zip") do |remote_file|
      local_file.write(remote_file.read)
      puts "+" + i.to_s
    end
  end
end
puts "...fetch completed."
