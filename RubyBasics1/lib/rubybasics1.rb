# Lab 1
# Part I
def sum arr
  sum = 0
    arr.each{
      |i| 
      sum=sum+i 
    }
  return sum
end

# Part II
def max_2_sum arr
  arr=arr.sort
  max_2_sum = 0
    if arr.empty?
      max_2_sum = 0
    else if arr.count==1
      max_2_sum = arr[0]
    else
      max_2_sum = (arr[-1]+arr[-2])
    end
  end
  return max_2_sum
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
end