# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

# def array_concat(array_1, array_2)
#   # Your code here
#   if (array_1.length == 0) || (array_2.length == 0) then return []
#   end

#   counter = 0
#   arr1_len = array_1.length
#   while counter <= (array_2.length - 1)
#     array_1[arr1_len + counter] = array_2[counter]
#     counter += 1
#   end
#   return array_1
# end


# Refactored Solution Below

def array_concat(array_1, array_2)
  # Your code here
  if (array_1.length == 0) || (array_2.length == 0) then return []
  end

  array_1.concat(array_2)
  return array_1
end