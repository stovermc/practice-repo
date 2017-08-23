class Grains
  def self.square(num)
    raise ArgumentError.new unless num > 0 && num < 65
    2 ** (num-1)
  end

  def self.total
    (1..64).reduce do |total, num|
      total + 2 ** (num-1)
    end
  end
end

module BookKeeping
  VERSION = 1
end
