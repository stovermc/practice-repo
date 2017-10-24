class StackCalculator
  attr_reader :stack

  def initialize
    @stack = []
  end

  def process(input_string)
    sanitized = sanitize_instructions(input_string)
    sanitized.each do |instruction|
      push(instruction) if instruction.is_a?(Fixnum)
      add if instruction == '+'
      subtract if instruction == '-'
      pop if instruction == 'POP'
      duplicate if instruction == 'DUP'
    end
    stack.last.to_s
  end

  def push(instruction)
    stack.push(instruction)
  end

  def add
    value_1 = stack.pop
    value_2 = stack.pop
    sum = value_1 + value_2
    stack.push(sum)
  end

  def subtract
    value_1 = stack.pop
    value_2 = stack.pop
    if value_1 > value_2
      difference = value_1 - value_2
    else
      difference = value_2 - value_1
    end
    stack.push(difference)
  end

  def pop
    stack.pop
  end

  def duplicate
    original = stack[-1]
    stack.push(original)
  end

  def sanitize_instructions(input_string)
    input_array = input_string.split(' ')
    input_array.reduce([]) do |sanitized, element|
      num = element.to_i
      element == num.to_s ? sanitized << num : sanitized << element
      sanitized
    end
  end

end
