# Example:
#
# Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
# Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"

class String
  def toJadenCase
    self.split(/ /).map(&:capitalize).join(" ")
  end
end

def perform(str)
  puts(str.toJadenCase)
end

perform("how can mirrors be real if our eyes aren't real")
