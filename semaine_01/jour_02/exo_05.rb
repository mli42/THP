#     Why This Is a Good Question
#
# This is a tough question to Google for unless you know the right search terms.
# The #{} operator technically performs expression substitution inside a
# string literal.

#     The Answer
# The #{} literal is the operator used for interpolation inside double-quoted 
# strings the same way that the backticks or $() construct would be used in Bash.
# From a practical point of view, the expression inside the literal is evaluated,
# and then the entire #{} expression (including both the operator and
# the expression it contains) is replaced in situ with the result.

# Related Links
# http://www.ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#string
# http://www.ruby-doc.org/docs/ProgrammingRuby/html/language.html
# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#Interpolation
# https://stackoverflow.com/questions/8944125/ruby-on-rails-syntax

puts "On va compter le nombre d'heures de travail à THP"
puts "Travail : #{10 * 5 * 11}"
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

puts "Et en secondes ?"

puts 10 * 5 * 11 * 60 * 60

puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

puts 3 + 2 < 5 - 7

puts "Ça fait combien 3 + 2 ? #{3 + 2}"
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

puts "Ok, c'est faux alors !"

puts "C'est drôle ça, faisons-en plus :"

# Booleans
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"
