require_relative "row"

class Board
  @rows = []
  @size = 0

  def initialize(size = 10)
    @size = size
    @rows = Array.new(@size)
    size.times do |row_index|
      @rows[row_index] = Row.new(size, row_index)
    end
  end

  def print_the_board
    output = Array.new(@size)
    @rows.reverse.each_with_index do |row, index|
      output[index] = row.print_the_row
    end
    output.join("\n")
  end
end
