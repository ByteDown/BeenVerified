require_relative 'game'

class Init
  def initialize
    new_game = Game.new
    new_game.select_players
    new_game.activate_first_player
    new_game.set_marks
    new_game.rules
    new_game.process_moves
  end
end

Init.new