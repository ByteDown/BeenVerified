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
    spaces[position] = mark
  end
  
  def computer_move(spaces)
    spaces.each do |space|
      if space.nil?
        spaces[random_num] = mark        
    end
  end
  
  def random_num
    rand_num = rand(9)
  end
end 