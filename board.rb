class Board
  attr_reader :spaces, :columns
  
  def initialize
    @spaces = Array.new(9)
    @columns = 3
  end
  
  def state
    output = ""
    spaces.each_with_index do |value, index|
      output << " #{value || index} "
      case index % columns
      when 0, 1 then output << "|"
      when 2 then output << "\n------------\n" unless index == 8
      end
    end
    puts output
  end
end