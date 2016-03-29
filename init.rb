require_relative 'game'

class Init
  def initialize
    new_game = Game.new
    new_game.begin
  end
end

Init.new