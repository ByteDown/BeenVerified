class Human < Player
  def move(spaces)
    on = true
    while on
      position = position_input
      if spaces[position].nil?
        spaces[position] = mark
        on = false
      else
        error_msg
      end
    end
  end
  
  def position_input
    gets.chomp.to_i
  end
  
  def error_msg
    puts "Select a box that is empty"
  end
end