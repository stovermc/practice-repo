require 'minitest/autorun'
require 'minitest/pride'
require './lib/string_permutation'

class StringPermutationTest < Minitest::Test
  def test_it_exists
    sp = StringPermuatation
    assert sp
  end

  def test_false_if_first_string_is_empty
    sp = StringPermuatation.new

    refute sp.permutate('', 'abc')
  end

  def test_false_if_second_string_is_empty
    sp = StringPermuatation.new

    refute sp.permutate('', 'abc')
  end

  def test_for_error_if_both_strings_are_empty
    sp = StringPermuatation.new

    assert_raises(ArgumentError) { sp.permutate('', '') }
  end

  def test_second_is_permutation_of_first
    sp = StringPermuatation.new

    assert_equal true, sp.permutate('abc', 'abc')
  end

  def test_second_is_not_permutation_of_first
    sp = StringPermuatation.new

    assert_equal false, sp.permutate('aba', 'abc')
  end
end
