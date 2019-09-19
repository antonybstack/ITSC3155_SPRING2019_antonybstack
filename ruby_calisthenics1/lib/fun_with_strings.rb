module FunWithStrings
  def palindrome?
    self.gsub( /\W/, '').downcase  ==  self.gsub( /\W/, '').downcase.reverse
  end
  
  def count_words
    arr = self.split(" ")
    puts arr.length;
    words = Hash.new
    words.each do |key,value|
            key = "#{key}"
            words[key] = arr[i]
            i+=1
        end
    return words
  end
  
  def count_words
    words = Hash.new
    self.downcase.gsub(/[^a-z\s]/,'').split.each do |s|
      if words[s] != nil
      words[s] += 1
      else
      words[s] = 1
      end
    end
    return words
  end
  

  def anagram_groups
    words = self.split
    result = Array.new
    words.each_with_index do |s, index|
      unless result.any? { |arr| arr.include?(s) }
        str_arr = Array.new
        str_arr.push(s)
          words[index+1..-1].each do |str2|
            if (words[index].downcase.chars.sort.join == str2.downcase.chars.sort.join)
              str_arr.push(str2)
            end
          end
        result.push(str_arr)
      end
    end
    result
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
