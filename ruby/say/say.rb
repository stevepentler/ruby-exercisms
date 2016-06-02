class Say
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def in_english
    case number
      when 0..20
        return UNDER_TWENTY[number]
    end
  end


  UNDER_TWENTY = {
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

end