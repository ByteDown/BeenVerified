class Players
  attr_reader :player_one, :player_two
  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end
  
  def randomize_turn
    rand(2) == 1 ? "player one" : "player two"
  end
end