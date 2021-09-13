require 'pp'
require "./players"
require './guess'



p1 = Player.new("Player 1", 3, "What does 3 plus 5 equal?")
p2 = Player.new("Player 2", 3, "What does 1 plus 2 equal?")

puts p1.question

a = Guess.new(gets.chomp)

if a.guess.to_i == 8
  puts "YES! You are correct."
  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
  puts "----- NEW TURN -----"
else
  p2.lives = p2.lives.to_i - 1
  puts "#{p1.player}: Seriously? No!"
  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
  puts "----- NEW TURN -----"
end