require 'pry'
class Say
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def in_english
    case number
      when 0..20
        return WITHIN_TWENTY[number]
      when 21..99
        tens = TENS[find_digit(0)]
        ones = WITHIN_TWENTY[find_digit(-1)]
        return tens + ones

    end
  end

  def find_digit(place)
    number.to_s[place].to_i
  end


  WITHIN_TWENTY = {
    20  => "twenty",
    19  => "nineteen",
    17  => "seventeen",
    16  => "sixteen",
    15  => "fifteen",
    14  => "fourteen",
    13  => "thirteen",
    12  => "twelve",
    11  => "eleven",
    10  => "ten",
    9   => "nine",
    8   => "eight",
    7   => "seven",
    6   => "six",
    5   => "five",
    4   => "four",
    3   => "three",
    2   => "two",
    1   => "one",
    0   => "zero",
}

  TENS = {
    2  => "twenty-",
    3  => "thirty-",
    4  => "forty-",
    5  => "fifty-",
    6  => "sixty-",
    7  => "seventy-",
    8  => "eighty-",
    9  => "ninety-",
  }

end