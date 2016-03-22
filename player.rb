class Player
  attr_reader :num, :type
  attr_accessor :mark, :active
  
  def initialize(type, num)
    @type = type
    @num = num
    @active = false
  end
  
  def human_move(spaces)
    position = gets.chomp.to_i
    on = true
    while on
      if spaces[position].nil?
        spaces[position] = mark
        on = false
      else
        puts "Select a box that is empty"
        position = gets.chomp.to_i
      end
    end 
  end
  
  def computer_move(spaces)
    on = true
    while on
      position = random_num
      if spaces[position].nil?
        spaces[position] = mark
        on = false
      end
    end
  end
  
  def random_num
    rand_num = rand(9)
  end
end 