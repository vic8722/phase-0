# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below


# def shortest_string(list_of_words)
#   # Your code goes here!
#   if list_of_words.length == 0 then return nil
#   end
#   counter = 0
#   shortest_word = list_of_words[0]
#   while counter <= (list_of_words.length - 1)
#     if list_of_words[counter].length < shortest_word.length
#       shortest_word = list_of_words[counter]
#     end
#     counter += 1
#   end
#   return shortest_word
# end

#Refactored Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  if list_of_words.length == 0 then return nil
  end
  shortest_word = list_of_words.min_by { |x| x.length }
  return shortest_word
end
