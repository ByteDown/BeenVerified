class Console
  def banner
    puts "
    XXXXXX OO  XXXX    XXXXXX    O    XXXX    XXXXXX OOOOO  XXXX
      XX   OO  XX        XX     OOO   XX        XX   OO OO  XXXX
      XX   OO  XXXX      XX    OO OO  XXXX      XX   OOOOO  XXXX  
    "
  end

  def select_player
    puts "
    Select first player and press enter: (h)uman or (c)omputer"
    player_one = gets.chomp
    puts "
    Select second player and press enter: (h)uman or (c)omputer"
    player_two = gets.chomp
    player = Players.new(player_one, player_two)
  end
  
  def display_rules
    puts "Enter position number to place X or O on the board."
  end
  
  def randomize_turn(player)
    puts "#{player} goes first with X."
    if player[-2] == "h"
      "h"
    else
      "c"
    end
  end
end