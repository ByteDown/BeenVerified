class Players
  attr_reader :player_one, :player_two
  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end
  
  def randomize_turn
    if rand(2) == 1
      "player_one" + "(#{player_one})"
    else
      "player_two" + "(#{player_two})"
    end
  end
end