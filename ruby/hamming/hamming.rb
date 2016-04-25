class Hamming 
  VERSION = 1
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    strand1.chars.zip(strand2.chars).count { |char1, char2| char1 != char2 }
  end 
end 
