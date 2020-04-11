# Create a function that takes a list of non-negative integers and
# strings and returns a new list with the strings filtered out.

# Example
# filter_list([1,2,'a','b']) == [1,2]
# filter_list([1,'a','b',0,15]) == [1,0,15]
# filter_list([1,2,'aasf','1','123',123]) == [1,2,123]

def filter_list(lst)
  lst.reverse_each{|data| lst.delete(data) if (data.class == String)}
end

def perform
  print("#{filter_list([1, 2, 'a', 'b'])}\n")
end

perform
