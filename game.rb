require_relative 'console'
require_relative 'board'
require_relative 'human'
require_relative 'computer'
require_relative 'players'

class Game
  attr_reader :console, :board, :human, :computer
  
  def initialize
    @console = Console.new
    @board = Board.new
    @human = Human.new
    @computer = Computer.new
  end
  
  def initial_prompts
    console.banner
    player = console.select_player
    console.display_rules
    turn = console.randomize_turn(player.randomize_turn)
    if turn == "h"
      human.move
    else
      computer.move(board)
    end
  end
  
  def display_board
    board.display_board
  end
end

new_game = Game.new
new_game.initial_prompts
new_game.display_board
