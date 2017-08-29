class RunLengthEncoding
  def self.encode(input)
    new_string = ''
    until input == ''
      count = 0
      letter = input[0]
      if input[0] == input[1]
        until input[0] != letter
          count += 1
          input = input[1..-1]
        end
      else
        count = 1
        input = input[1..-1]
      end
      new_string << count.to_s unless count == 1
      new_string << letter
    end
    new_string
  end

  def self.decode(input)
    new_string = ''
    until input == ''
      count = ''
        until input[0].to_i == 0
          count << input[0]
          input = input[1..-1]
        end
      letter = input[0]
      if count == ''
        new_string << letter
      else
        count.to_i.times do
          new_string << letter
        end
      end
      input = input[1..-1]
    end
    new_string
  end

end

module BookKeeping
  VERSION = 3
end
