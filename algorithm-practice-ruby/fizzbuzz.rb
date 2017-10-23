# Fizzbuzz. This method prints out numbers 1 to 100, and
# whenever a multiple of 3 is reached it prints out 'Fizz',
# whenever a multiple of 5 is reached it prints out 'Buzz',
# whenever a multiple of both is reached it prints out 'FizzBuzz',

def fizzbuzz
  (0..100).each do |num|
    if num % 5 == 0 && num % 3 == 0
      p "#{num} FizzBuzz"
    elsif num % 5 == 0
      p "#{num} Buzz"
    elsif num % 3 == 0
      p "#{num} Fizz"
    else
      p "#{num}"
    end
  end
end

fizzbuzz
