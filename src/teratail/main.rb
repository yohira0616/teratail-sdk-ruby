require './teratail.rb'

puts "Hello,World!"
client = Teratail.new("")
puts client.tag.find_all
