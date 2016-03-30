class Computer < Player
  def move(spaces)
    on = true
    while on
      position = position_input
      if spaces[position].nil?
        spaces[position] = mark
        on = false
      end
    end
  end
  
  def position_input
    rand(8)
  end
end