require_relative 'board'
require_relative 'player'
require_relative 'human'
require_relative 'computer'
require_relative 'instruction'
require_relative 'engine'

class Game
  include Instruction
  include Engine
  
  FIRST_PLAYER = "first"
  SECOND_PLAYER = "second"
  PLAYER_ONE = "Player 1"
  PLAYER_TWO  = "Player 2"
  
  attr_reader :player_one, :player_two, :turn, :board
  attr_accessor :active
  
  def initialize
    @board = Board.new
    @active = true
  end
  
  def begin
   select_players
   activate_first_player
   set_marks
   display_board
   instructions
   process_moves
  end
  
  def active_player
    player_one.active ? player_one : player_two
  end
  
  def inactive_player
    player_one.active ? player_two : player_one
  end
  
  def change_turn
    [player_one, player_two].each { |player| player.active = !player.active }
  end
  
  def process_moves
    count = 0
    while self.active
      process_move
      display_board
      indicate_turn
      change_turn
      count += 1
      if count > 4
        check_for_winner
      end
    end
  end
  
  private
  
  def select_players
    type = select_player_prompt(FIRST_PLAYER)
    @player_one = create_player(type)
    type = select_player_prompt(SECOND_PLAYER)
    @player_two = create_player(type)
  end
  
  def create_player(type)
    if type == "h"
      Human.new(PLAYER_ONE)
    else
      Computer.new(PLAYER_TWO)
    end
  end
  
  def determine_first_player
    rand(2) == 1 ? player_one : player_two
  end
  
  def activate_player(player)
    player.active = true
  end
  
  def activate_first_player
    activate_player(determine_first_player)
  end
  
  def set_marks
    active_player.mark = "X"
    inactive_player.mark = "O"
  end
  
  def process_move
    active_player.move(board.spaces)
  end
end