


def hash_add(hash, key)
  if (hash.key?(key))
    hash[key] += 1
  else
    hash[key] = 1
  end
end

def word_counter(str, dictionnary)
  corpus = str.split(" ")
  res = {}

  for word in corpus do
    for known_word in dictionnary do

      if (word.downcase.include?(known_word.downcase))
        hash_add(res, known_word)
      end

    end
  end

  return (res)
end

def count(corpus)
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy",
  "it", "i", "low", "own", "part", "partner", "sit"]
  print word_counter(corpus, dictionnary)
  puts
end




__END__

count("Howdy partner, sit down! How's it going?")
# {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3,
# "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})

count("below")
# {"below"=>1, "low"=>1}
