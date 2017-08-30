require_relative 'node'

class Trie
  attr_reader :root

  def initialize
    @root = Node.new(nil)
  end

  def insert(word, node=root)
    letter = word[0]

    if root.children.includes?(letter)
      insert(word.delete(letter), node.children[letter])
    else
      node.children[letter] = Node.new(letter)
    end
  end
end
