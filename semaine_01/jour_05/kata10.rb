# The Western Suburbs Croquet Club has two categories of membership,
# Senior and Open. They would like your help with which category members
# will be placed.

# To be a senior, a member must be:
# at least 55 years old,
# have a handicap greater than 7.

# Input will consist of a list of lists containing two items each.
# Each list contains information for a single potential member.
# Information consists of the person's age and an int for the handicap.

# Example Input
# [[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]]

# Output will consist of a list of string values stating whether
# the respective member is to be placed in the senior or open category.

# Example Output
# ["Open", "Open", "Senior", "Open", "Open", "Senior"]

def filter_members(lst)
  res = []
  for member in lst
    res << (member[0] >= 55 && member[1] > 7 ? "Senior" : "Open")
  end
  return (res)
end

def perform
  print filter_members([[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]])
  print("\n")
end

perform
