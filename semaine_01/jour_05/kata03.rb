# You are going to be given a word. Your job is to return
# the middle character of the word.
# If the word's length is odd, return the middle character.
# If the word's length is even, return the middle 2 characters.

def perform(str)
  len = str.length / 2.0
  res = str[len.to_i]
  if (len == len.to_i)
    res.insert(0, str[len.to_i - 1])
  end
  puts("The middle of \"#{str}\" is [#{res}]")
end

perform("Test")
perform("Testing")
perform("Middle")
perform("A")
