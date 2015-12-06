class Hamming
  VERSION = 2
  def self.compute(str1, str2)
    raise ArgumentError if str1.size != str2.size
    str1.length.times.count { |i| str1[i] != str2[i] }
  end
end

