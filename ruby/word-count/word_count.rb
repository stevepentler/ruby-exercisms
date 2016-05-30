require 'pry'

class Phrase
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def word_count
    final_count = {}
    split_string.each do |word|
      if final_count[word]
        final_count[word] += 1
      else
        final_count[word] = 1
      end
    end
    final_count
  end

  def split_string
    string.gsub(/[^A-Za-z0-9\s]/i, '').split
  end
end