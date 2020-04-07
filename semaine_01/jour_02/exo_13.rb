puts "Bonjour, en quelle année es tu né(e) ?"
print "> "

curr_year = 2020
user_birth_y = gets.to_i


while (user_birth_y <= curr_year) do
  puts user_birth_y
  user_birth_y += 1
end
