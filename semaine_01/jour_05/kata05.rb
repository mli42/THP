# Your task is to write a function that takes a string and
# return a new string with all vowels removed. (aeiou, not y)


def perform(str)
  lst = str.split("")
  lst.map!{ | c | c if not "AEIOUaeiou".include? c}
  # [or] lst.each.with_index{|c, i| lst.delete_at(i) if "AEIOUaeiou".include? c}
  # Actually doesn't work perfectly
  res = lst.join("");
  puts("[#{str}] without vowels becomes [#{res}]")
end


perform("Hey It Works") # [Hy t Wrks]
