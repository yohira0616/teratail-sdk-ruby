require './teratail.rb'

puts 'Hello,World!'
client = Teratail.new('254520b5338f44546aa6803a65742d1bc59c678f')
puts client.question.find_all
