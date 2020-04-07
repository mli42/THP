puts("Bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?")
print("> ")
nb = gets.to_i
puts("Voici la pyramide :")


for i in 1..nb do

  for piece in 1..i do
    print("#")
  end
  print("\n")

end
