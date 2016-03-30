module Terminal
  HUMAN = 'h'
  COMPUTER = 'c'
  
  def banner
    puts "
    XXXXXX OO  XXXX    XXXXXX    O    XXXX    XXXXXX OOOOO  XXXX
      XX   OO  XX        XX     OOO   XX        XX   OO OO  XXXX
      XX   OO  XXXX      XX    OO OO  XXXX      XX   OOOOO  XXXX  
    "
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