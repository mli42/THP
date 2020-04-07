puts "Bonjour, en quelle année es tu né(e) ?"
print "> "

curr_year = 2020
user_birth_y = gets.to_i
age = 0

while (user_birth_y <= curr_year) do
  puts user_birth_y.to_s + " " + age.to_s
  user_birth_y += 1
  age += 1
end
