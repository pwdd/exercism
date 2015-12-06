class Complement
  VERSION = 2

  DNA_PAIRS = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }

  RNA_PAIRS = DNA_PAIRS.invert
  
  def self.of_dna(sequence)
    convert(sequence, DNA_PAIRS)
  end

  def self.of_rna(sequence)
    convert(sequence, RNA_PAIRS)
  end

  def self.valid(sequence, keys)
    keys = keys.join('')
    fail ArgumentError unless sequence =~(/^[#{keys}]+$/)
  end

  def self.convert(sequence, mapping)
    valid(sequence, mapping.keys)
    sequence.gsub(/\w/, mapping)
  end
end