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
  
  def instructions(first_player)
    puts "
    Choose position from the board. #{first_player.num} goes first."
  end
  
  def announce_winner
    puts "#{active_player.num} has won"
    puts "Would you like to play new game yes(y) or no(n)"
    input = gets.chomp.downcase
    if input == "y"
      Init.new
    else
      exec "exit"
    end
  end
end