class Complement
  VERSION = 1
  
  def self.of_dna(sequence)
    result = []
    sequence.split("").each do |nucleobase|
      if nucleobase == 'C'
        result << 'G'
      elsif nucleobase == 'G'
        result << 'C'
      elsif nucleobase == 'T'
        result << 'A'
      elsif nucleobase == 'A'
        result << 'U'
      else
        raise ArgumentError
      end
    end
    result.join("")
  end

  def self.of_rna(sequence)
    result = []
    sequence.split("").each do |nucleobase|
      if nucleobase == 'C'
        result << 'G'
      elsif nucleobase == 'G'
        result << 'C'
      elsif nucleobase == 'U'
        result << 'A'
      elsif nucleobase == 'A'
        result << 'T'
      else
        raise ArgumentError
      end
    end
    result.join("")
  end
end