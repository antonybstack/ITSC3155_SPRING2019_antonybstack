# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, #{name}";
end

# Part II
def starts_with_consonant? s
  if s.empty? #if string is empty, return false
  	return false
  elsif (s[0].downcase =~ /[a-z]/ && s[0].downcase =~ /[^aeiou]/) #if first letter a through z AND not aeiou, return true
    return true
  else
    return false
  end
end

# Part III
def binary_multiple_of_4? s
  if(s =~ /^[0-1]/ && s.to_i % 4 == 0)
    return true;
  end
end
