module Engine
  WINNING_COMBOS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
  ]
  
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
  
  def announce_winner
    puts "#{active_player.num} has won"
    puts "Would you like to play new game yes(y) or no(n)"
    input = gets.chomp.downcase
    if input == "y"
      Init.new
    else
      exit
    end
  end
end