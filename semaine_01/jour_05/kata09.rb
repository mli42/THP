# Write a function which changes all but the last four characters into '#'.

def ft_masky(str)
  res = str.dup
  for i in 0..(str.length - 5)
    res[i] = '#'
  end
  return (res)
end

def perform
  puts(ft_masky("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))
end

perform
