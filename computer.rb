class Computer < Player
  def move(spaces)
    on = true
    while on
      if spaces[position].nil?
        spaces[position] = mark
        on = false
      end
    end
  end
  
  def position
    rand(9)
  end
end