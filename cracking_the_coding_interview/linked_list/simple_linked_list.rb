class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(datum, next_node=nil)
    @datum = datum
    @next = next_node
  end

end

class SimpleLinkedList
  attr_reader :head

  def initialize(array=nil, head=nil)
    @head = head
    array_to_linked_list(array) if array != nil
  end

  def push(element)
    if @head.nil?
      @head = element
      return self
    end

    current_node = @head
    until current_node.next.nil?
      current_node = current_node.next
    end
    current_node.next = element
    self
  end

  def pop
    return nil if @head.nil?
    return @head if @head.next.nil?

    if @head.next.next.nil?
      last_node = @head.next
      @head.next = nil
      return last_node
    end

    current_node = @head
    until current_node.next.next.nil?
      current_node = current_node.next
      last_node = current_node.next
    end
    current_node.next = nil
    last_node
  end

  def to_a
    return [] if @head.nil?
    current_node = @head
    array = []
    until current_node.next.nil?
      array.unshift(current_node.datum)
      current_node = current_node.next
    end
    array.unshift(current_node.datum)
    array.empty? ? array << current_node.datum : array
  end

  def array_to_linked_list(array)
    array.each do |datum|
      new_element = Element.new(datum)
      self.push(new_element)
    end
    self
  end

  def reverse!
    previous = nil
    current = @head

    while current != nil
      next_node = current.next
      current.next = previous
      previous = current
      current = next_node
    end

    @head = previous
    self
  end

end

module BookKeeping
  VERSION = 1
end
