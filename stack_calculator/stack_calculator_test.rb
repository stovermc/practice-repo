require 'minitest/autorun'
require 'minitest/pride'
require_relative 'stack_calculator'

class StackCalculatorTest < Minitest::Test
  attr_reader :sc

  def setup
    @sc = StackCalculator.new
  end

  def test_stack_calculator_exists
    assert sc
  end

  def test_stack_upon_initialization
    assert [], sc.stack
  end

  def test_integer_is_pushed_to_stack
    sc.process('3')
    assert ['3'], sc.stack
  end
end
