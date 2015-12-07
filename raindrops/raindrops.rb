class Raindrops
  VERSION = 1

  def self.convert(integer)
    mapping = {
       3 => 'Pling',
       5 => 'Plang',
       7 => 'Plong',
      15 => 'PlingPlang',
      21 => 'PlingPlong',
      35 => 'PlangPlong',
     105 => 'PlingPlangPlong' 
    }

    key = get_key(integer, mapping)

    key ? "#{mapping[key]}" : integer.to_s
  end

  def self.get_key(integer, hash)
    hash.keys.select{ |key| integer  % key == 0 }.max
  end
end