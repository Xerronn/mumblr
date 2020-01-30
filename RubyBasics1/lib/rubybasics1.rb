# Lab 1
# Part I
def sum arr
  total = 0
  arr.each do |x|
    total += x
  end
  return total
end

# Part II
def max_2_sum arr
  total = 0
  arr = arr.sort {|a, b| b <=> a}
  if arr.length < 2
    arr.each do |x|
      total += x
    end
    return total
  else
    for x in (0..1)
      total += arr[x]
    end
    return total
  end
end

# Part III
def sum_to_n? arr, n
  for i in (0..arr.length - 1)
    for j in (i + 1..arr.length - 1)
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
  
end
