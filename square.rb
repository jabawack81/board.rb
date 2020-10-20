class Square
  @number = 0

  HEIGHT = 5
  WIDTH = 6

  def initialize(number)
    @number = number
  end

  def pretty
    [
      '+-----+',
      '|     |',
      "| #{@number.to_s.rjust(3)} |",
      '|     |',
      '+-----+'
    ]
  end
end
