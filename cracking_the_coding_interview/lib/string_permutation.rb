class StringPermuatation
  def permutate(string_a, string_b)
    raise ArgumentError.new if string_a.empty? && string_b.empty?
    if string_a == '' || string_b == ''
      return false
    else
      order(string_a) == order(string_b)
    end
  end

  def order input
    input.chars.reduce({}) do |result, char|
      result[char] ? result[char] += 1 : result[char] = 1
      result
    end
  end
end
