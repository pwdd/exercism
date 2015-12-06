class Gigasecond
  VERSION = 1
  def self.from(time)
    time + (10**9) if time.is_a?(Time)
  end
end