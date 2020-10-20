require_relative 'square'

class Row
  @squares = []
  @index = 0

  def initialize(size = 10, index)
    @index = index
    @squares = Array.new(size)
    size.times do |y|
      number = (y + 1) + (index * size)
      @squares[y] = Square.new(number)
    end
  end

  def print_the_row
    output = Array.new(Square::HEIGHT, '')
    ordered_squares.each_with_index do |square, _index|
      square.pretty.each_with_index do |line, index|
        output[index] = output[index].chop() + line
      end
    end
    output.pop if (@index > 0)
    output.join("\n")
  end

  private_methods

  def ordered_squares
    if @index.even?
      @squares
    else
      @squares.reverse
    end
  end
end
