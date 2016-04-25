require 'pry'

class Bob
  def initalize
  end

  def hey(remark)
      if yelling?(remark)
        'Whoa, chill out!'
      elsif questioning?(remark)
        'Sure.'
      elsif pausing?(remark)
        'Fine. Be that way!'
      else
        'Whatever.'
      end
  end

  def yelling?(remark)
    remark =~ /[A-Z]/ && remark == remark.upcase
  end

  def questioning?(remark)
    remark[-1] == "?"
  end

  def pausing?(remark)
    remark.strip.empty?
  end
end
