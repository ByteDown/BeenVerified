class Board
  attr_reader :spaces, :columns
  
  def initialize
    @spaces = Array.new(9)
    @columns = 3
  end
  
  def state
    output = ""
    spaces.each_index do |position|
      output << " #{spaces[position] || position} "
      case position % columns
      when 0, 1 then output << "|"
      when 2 then output << "\n------------\n" unless position == 8
      end
    end
    puts output
  end
end