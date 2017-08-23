class Phrase
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence.downcase.gsub(/[!&@$%^&.]/, '').gsub(/( '|' )/, ' ')
  end

  def word_count sentence.split(/[\s,:]+/).reduce({}) do |hash, word|
      hash[word] ? hash[word] += 1 : hash[word] = 1
      hash
    end
  end
end

module BookKeeping
  VERSION = 1
end
