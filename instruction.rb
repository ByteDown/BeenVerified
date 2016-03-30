module Instruction
  HUMAN = 'h'
  COMPUTER = 'c'
  
  def select_player_prompt(player_num)
    puts "
    Select #{player_num} player and press enter: (h)uman or (c)omputer"
    player_type = gets.chomp.downcase
    until player_type == HUMAN || player_type == COMPUTER
      puts "
      Please make a valid submission."
      player_type = gets.chomp.downcase
    end
    player_type
  end
  
  def instructions
    puts "
    Choose position from the board. #{active_player.num} goes first."
  end
  
  def display_board
    board.state
    puts "============"
  end
  
  def indicate_turn
    puts "#{inactive_player.num}'s turn..."
  end
end