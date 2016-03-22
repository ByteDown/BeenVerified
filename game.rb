require_relative 'terminal'
require_relative 'board'
require_relative 'player'

class Game
  include Terminal
  
  WINNING_COMBOS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
  ]
  
  attr_reader :player_one, :player_two, :turn, :board
  attr_accessor :active
  
  def initialize
    @board = Board.new
    @active = true
  end
  
  def select_players
    type = select_player_prompt("first")
    @player_one = Player.new(type, "Player 1")
    type = select_player_prompt("second")
    @player_two = Player.new(type, "Player 2")
  end
  
  def determine_first_player
    rand(2) == 1 ? player_one : player_two
  end
  
  def activate_first_player
    activate_player(determine_first_player)
  end
  
  def activate_player(player)
    player.active = true
  end
  
  def active_player
    player_one.active ? player_one : player_two
  end
  
  def inactive_player
    player_one.active ? player_two : player_one
  end
  
  def set_marks
    active_player.mark = "X"
    inactive_player.mark = "O"
  end
  
  def change_turn
    [player_one, player_two].each { |player| player.active = !player.active }
  end
  
  def process_moves
    count = 0
    while self.active
      process_move
      change_turn
      count += 1
      if count > 4
        check_for_winner
      end
    end
  end
  
  def process_move
    if active_player.type == HUMAN
      active_player.human_move(board.spaces)
    else
      active_player.computer_move(board.spaces)
    end
    display_board
    puts "#{active_player.num} goes..."
  end
  
  def display_board
    board.state
    puts "============"
  end
  
  def rules
    display_board
    instructions(determine_first_player)
  end
  
  def check_for_winner
    spaces = self.board.spaces
    WINNING_COMBOS.each do |combo|
      if spaces[combo[0]] == spaces[combo[1]] && spaces[combo[1]] == spaces[combo[2]]
        self.active = false
        announce_winner
        display_board
      end
    end  
  end
end