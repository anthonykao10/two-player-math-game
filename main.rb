require './Game'
require './Player'
require './Question'

# Create players
p1 = Player.new("player 1")
p2 = Player.new("player 2")

# Create new game
g1 = Game.new(p1, p2)
g1.start_game
g1.end_game
