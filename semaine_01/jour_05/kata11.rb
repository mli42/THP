# You are given an array (which will have a length of at least 3,
# but could be very large) containing integers. The array is either
# entirely comprised of odd integers or entirely comprised of even
# integers except for a single integer N. Write a method that takes
# the array as an argument and returns this "outlier" N.

# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

def filter_numbers(lst)
  odd = 1
  even = 0
  res = [[], []]
  for nb in lst
    res[nb % 2] << nb

    if (res[odd].size == 1 && res[even].size > 1)
      return (res[odd][0])
    elsif (res[odd].size > 1 && res[even].size == 1)
      return (res[even][0])
    end

  end
  return (res)
end

def perform
  puts filter_numbers([2, 4, 0, 100, 4, 11, 2602, 36])
  puts filter_numbers([160, 3, 1719, 19, 11, 13, -21])
end

perform
