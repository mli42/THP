
i = 0
nb_mails = 50
emails = []

while (i < nb_mails) do
  emails << "jean.dupont.%02d@email.fr" %[i]
  i += 1
end

for mail in emails do
  if (mail[13].to_i % 2 == 0)
    puts mail
  end
end
