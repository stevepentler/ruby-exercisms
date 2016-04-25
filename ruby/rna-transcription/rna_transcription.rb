class Complement
  VERSION = 2

  @pair = {
      'G' => "C",
      'C' => "G",
      'T' => "A",
      'A' => "U",
      }
  
  def self.of_dna(base)
    base.chars.map do |single_base|
      raise ArgumentError unless @pair[single_base] 
      @pair[single_base]
    end.join
  end 

  def self.of_rna(base)
    base.chars.map do |single_base|
      raise ArgumentError unless @pair.key(single_base)
      @pair.key(single_base)
    end.join
  end 
end 

