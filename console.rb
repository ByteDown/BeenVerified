require_relative 'board'

class Console
  def banner
    puts "
    XXXXXX OO  XXXX    XXXXXX    O    XXXX    XXXXXX OOOOO  XXXX
      XX   OO  XX        XX     OOO   XX        XX   OO OO  XXXX
      XX   OO  XXXX      XX    OO OO  XXXX      XX   OOOOO  XXXX
      
    Press Enter To Play"
    enter = gets.chomp
    select_player if enter
  end
  
  def select_player
    puts "
    Select first player: (c)omputer or (h)uman"
    player_one = gets.chomp
    puts "
    Select second player: (c)omputer or (h)uman"
    player_two = gets.chomp
    randomize_turn
  end
  
  def randomize_turn
    "Randomizing turn..."
    display_rules
  end
  
  def display_rules
    "Enter position number to place X or O on the board."
    display_board
  end
  
  def display_board
    board = Board.new
    board.display_board
  end
end

new_game = Console.new
new_game.banner