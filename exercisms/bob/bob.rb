class Bob

  def self.hey(remark)
    if /[A-Za-z]/ =~ remark && remark == remark.upcase
      'Whoa, chill out!'
    elsif remark.rstrip[-1] == '?'
      'Sure.'
    elsif !(/\w+/ =~ remark)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end
