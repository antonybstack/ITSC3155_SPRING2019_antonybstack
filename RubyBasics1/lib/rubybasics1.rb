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
  if (arr.length == 0)
    return false
  end
  if (arr.length == 1)
    return false
  end
  sorted_arr = arr.sort
  head =0
  tail = sorted_arr.length-1
  
  while head < tail 
    current_sum = sorted_arr[head] + sorted_arr[tail]
    if current_sum == n
      return true
    elsif current_sum < n
      head = head + 1
    else 
      tail = tail - 1
    end
  end
  return false
end

