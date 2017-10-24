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
    assert_equal [], sc.stack
  end

  def test_sanitize_instructions
    assert_equal [3, 'ADD'], sc.sanitize_instructions('3 ADD')
  end

  def test_process_returns_top_element_on_stack
    assert_equal '5', sc.process('5 5')
  end

  def test_single_integer_is_pushed_to_stack
    assert_equal '3', sc.process('3')
  end

  def test_multiple_integers_are_pushed_to_stack
    sc.process('3 5')
    assert_equal [3, 5], sc.stack
  end

  def test_add_removes_and_adds_last_two_integers
    assert_equal '10', sc.process('5 5 +')
  end

  def test_subtract_removes_and_subracts_last_two_integers
    assert_equal '0', sc.process('5 5 -')
  end

  def test_lower_value_is_subtracted_from_larger
    assert_equal '3', sc.process('7 10 -')
  end

  def test_pop_removes_last_element_in_stack
    assert_equal '3', sc.process('3 7 POP')
  end

  def test_duplicate_duplicates_last_element_on_stack
    assert_equal '3', sc.process('3')
    assert_equal 1, sc.stack.length
    assert_equal '3', sc.process('DUP')
    assert_equal 2, sc.stack.length
  end

  def test_complex_example
    assert_equal '7', sc.process("13 DUP 4 POP 5 DUP + DUP + -")
  end
end
