require_relative 'board'
require_relative 'human'
require_relative 'computer'

class Console
  def banner
    puts "
    XXXXXX OO  XXXX    XXXXXX    O    XXXX    XXXXXX OOOOO  XXXX
      XX   OO  XX        XX     OOO   XX        XX   OO OO  XXXX
      XX   OO  XXXX      XX    OO OO  XXXX      XX   OOOOO  XXXX  
    "
    select_player
  end
  
  def select_player
    puts "
    Select first player and press enter: (c)omputer or (h)uman"
    player_one = gets.chomp
    if "c" === player_one
      Computer.new
    else
      Human.new
    end
    puts "
    Select second player and press enter: (c)omputer or (h)uman"
    player_two = gets.chomp
    if "c" === player_two
      Computer.new
    else
      Human.new
    end
    randomize_turn
  end
  
  def randomize_turn
    puts "Randomizing turn..."
    display_rules
  end
  
  def display_rules
    puts "Enter position number to place X or O on the board."
    display_board
  end
  
  def display_board
    board = Board.new
    board.display_board
  end
end

new_game = Console.new
new_game.banner