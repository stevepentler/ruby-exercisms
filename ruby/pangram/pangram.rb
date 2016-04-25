class Pangram
  def self.is_pangram?(string)
   ('a'..'z').all? { |letter| string.downcase.include?(letter) }
  end

  VERSION = 1
end