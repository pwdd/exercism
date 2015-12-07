class Raindrops
  VERSION = 2

  def self.convert(integer)
    mapping = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }

    result = ''
    mapping.each { |key, value| result << value if integer % key == 0 }
    result.size > 0 ? result : integer.to_s
  end
end