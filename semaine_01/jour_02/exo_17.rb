puts "Bonjour, en quelle année es tu né(e) ?"
print "> "

curr_year = 2020
user_birth_y = gets.to_i
age = 0

while (user_birth_y <= curr_year) do
  passed_year = curr_year - user_birth_y
  if (passed_year != age)
    puts "Il y a #{passed_year} ans, tu avais #{age} ans."
  else
    puts "Il y a #{passed_year}, tu avais la moitié de ton âge d'ajd"
  end
  user_birth_y += 1
  age += 1
end
