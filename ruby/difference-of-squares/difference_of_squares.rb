class Squares

  Squares::VERSION = 1

  attr_reader :range

  def initialize(terms)
    @range = (0..terms).to_a
  end

  def square_of_sums
    range.reduce(:+)**2
  end 

  def sum_of_squares
    range.reduce { |sum, term| sum += (term**2) }
  end 

  def difference
    square_of_sums - sum_of_squares
  end

end 
