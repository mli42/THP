require_relative './03_word_counter'
$corpus_file = "../data/shakespeare.txt"
$dict_file = "../data/swearWords.txt"

def load_data(fd)
  data = fd.read.chomp
  data = data[0..-1]
  return (data)
end

def clear_data(fd)
  fd.close
end


def shakespeare_count_master_piece
  dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on",
    "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
  extern_fd = File.open($dict_file)
  corpus_fd = File.open($corpus_file)
  extern_dict = load_data(extern_fd).split("\r\n")
  corpus = load_data(corpus_fd)

  print("#{word_counter(corpus, dictionnary)}\n\n")
  print("#{word_counter(corpus, extern_dict)}\n")

  clear_data(extern_fd)
  clear_data(corpus_fd)
end



shakespeare_count_master_piece
