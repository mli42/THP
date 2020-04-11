# You are asked to square every digit of a number.
# For example, if we run 9119 through the function,
# 811181 will come out, because 92 is 81 and 12 is 1.
# Note: The function accepts an integer and returns an integer

def ft_shortest_w_len(str)
  if ((lst = str.split(" ")).empty? == true)
    return (0)
  end
  res = lst[-1].length
  for word in lst do
    if (word.length < res)
      res = word.length
    end
  end
  return (res)
end

def perform
  puts(ft_shortest_w_len(""))
  puts(ft_shortest_w_len("A Long String"))
  puts(ft_shortest_w_len("Just Some Words"))
end

perform
