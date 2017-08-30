require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node'

class NodeTest < Minitest::Test
  def test_node_exists
    node = Node.new('c')
    assert node
    assert 'c', node.value
  end

  def test_its_children
    node = Node.new('c')
    assert Hash, node.children
  end
end
