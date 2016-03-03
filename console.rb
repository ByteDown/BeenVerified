require_relative 'board'
require_relative 'human'
require_relative 'computer'
require_relative 'players'

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
  end
  
  def display_board
    board = Board.new
    board.display_board
  end
end

new_game = Console.new
new_game.banner
player = new_game.select_player
new_game.display_rules
new_game.display_board
new_game.randomize_turn(player.randomize_turn)