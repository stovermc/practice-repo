require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def append(value)
    node = head
    while node.next_node != nil
      node = node.next_node
    end
    new_node = Node.new(value)
    node.next_node = new_node
  end

  def preppend(value)
    second_node = head
    @head = Node.new(value)
    @head.next_node = second_node
  end
end


# (B) L O G (S)
node = Node.new('L')
ll = LinkedList.new(node)

ll.append('O')
ll.append('G')
ll.preppend('B')
require "pry"; binding.pry
""
