def is_mult_3_5(nb)
  return ((nb % 3 == 0 || nb % 5 == 0) ? true : false)
end

def sum_mult_3_5_from?(max)
  if (max.class != Integer || max < 0)
    return (puts("Give me an positive integer"))
  end

  res = 0
  for number in 2..(max - 1) do
    res += number unless not is_mult_3_5(number)
  end
  return (res)
end

def perform
  puts sum_mult_3_5_from?(1000) # 233168
end

#perform
