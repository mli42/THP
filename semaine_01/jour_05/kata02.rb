# Task
#
# Given an array of integers, remove the smallest value.
# Do not mutate the original array/list. If there are
# multiple elements with the same value, remove the one with
# a lower index.
# If you get an empty array/list, return an empty array/list.
# Don't change the order of the elements that are left.

def perform(tab)
  cpy = tab.dup
  cpy.delete_at(cpy.index(cpy.min))
  print("The new list : #{cpy}\n")
end

tab = [1, 0, 9, 2, 1, 3, 4, 5, 0]
perform(tab)
print("The original leaves unchanged : #{tab}\n")
