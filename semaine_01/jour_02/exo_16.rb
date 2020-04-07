puts "Bonjour, en quelle année es tu né(e) ?"
print "> "

curr_year = 2020
user_birth_y = gets.to_i
age = 0

while (user_birth_y <= curr_year) do
  puts "Il y a #{curr_year - user_birth_y} ans, tu avais #{age} ans."
  user_birth_y += 1
  age += 1
end
