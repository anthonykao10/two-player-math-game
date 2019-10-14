require './Game.rb'
require './Player.rb'
require './Question.rb'

p1 = Player.new("player 1")
p2 = Player.new("player 2")

g1 = Game.new(p1, p2)
g1.start_game
g1.end_game
