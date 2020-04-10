# Example:
#
# Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
# Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"

def perform(str)
  puts (str.split(/ /).map(&:capitalize).join(" "))
end

perform("how can mirrors be real if our eyes aren't real")
