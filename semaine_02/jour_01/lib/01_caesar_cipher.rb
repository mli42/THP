def is_alpha(char)
  if ((char >= 'a'.chr && char <= 'z'.chr) ||
      (char >= 'A'.chr && char <= 'Z'.chr))
    return (true)
  end
  return (false)
end

def caesar_cipher(str, nb)
  str.split("").map!{|x| (!is_alpha(x) ? x :
  (is_alpha((x.ord + nb).chr) ? (x.ord + nb).chr : (x.ord + nb - 26).chr))
  }.join("")
end




# To be more clear
=begin

def caesar_cipher(str, nb)
  str = str.split("").map do |x|
    next_ = (x.ord + nb).chr
    if !is_alpha(x)
      x
    elsif is_alpha(next_)
      next_
    else 
      (next_.ord - 26).chr
    end
  end
  str = str.join("")
end

=end

puts caesar_cipher("What a string!", 5)
