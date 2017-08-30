require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/trie'

class TestTrie < Minitest::Test
  def test_trie_exists
    trie = Trie.new
    assert trie
  end

  def test_root_node
    trie = Trie.new
    assert Node, trie.root
    refute trie.root.value
  end

  def test_insert
    trie = Trie.new
    trie.insert('cat')
    assert 'c', trie.root.value
    assert 'a', trie.root.children.keys
  end
end
