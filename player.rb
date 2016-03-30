class Player
  attr_reader :num, :type
  attr_accessor :mark, :active
  
  def initialize(num)
    @num = num
    @active = false
  end
  
  def move(spaces)
  end
end