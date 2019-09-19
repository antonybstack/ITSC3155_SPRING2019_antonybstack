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
    input = self.split
output = Array.new
input.each_with_index do |str, index|
unless output.any? { |arr| arr.include?(str) }
str_array = Array.new
str_array.push(str)
input[index+1..-1].each do |str2|
if str.is_anagram(str2)
str_array.push(str2)
end
end
output.push(str_array)
end
end
output
  end

def is_anagram(str)
self.downcase.chars.sort.join == str.downcase.chars.sort.join
end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
