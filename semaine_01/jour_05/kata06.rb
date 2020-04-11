# You are asked to square every digit of a number.
# For example, if we run 9119 through the function,
# 811181 will come out, because 92 is 81 and 12 is 1.
# Note: The function accepts an integer and returns an integer

def perform(nb)
  str = nb.to_s.split("")
  res = String.new
  for digit in str do
    res += (digit.to_i * digit.to_i).to_s
  end
  nb = res.to_i
  puts nb
end

perform(9119)
