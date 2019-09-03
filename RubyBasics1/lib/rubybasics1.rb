# Lab 1
# Part I
def sum arr
  sum = 0
    arr.each do |i| 
      sum=sum+i 
    end
  return sum
end

# Part II
def max_2_sum arr
  arr=arr.sort #sorts array
  max_2_sum = 0
    if arr.empty? #if array is empty, sum is 0
      max_2_sum = 0
    elsif arr.count==1 #if array is single element, sum is the one element
      max_2_sum = arr[0]
    else
      max_2_sum = (arr[-1]+arr[-2])
    end
  return max_2_sum
end


# Part III
def sum_to_n? arr, n
  #checks if single element array
  if arr.count==1
    return false
  end
  
  #nested loop through array, to check the sum of each element with all the other elements
  arr.each do |j|
    arr.each do |k|
      if j!=k #to avoid element summing with itself
        if (j+k)==n
          return true
        end
      end
    end
  end  
  return false
end
