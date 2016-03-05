# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

# def count_between(list_of_integers, lower_bound, upper_bound)
#   # Your code goes here!
#   if list_of_integers.length == 0 then return 0
#   end
#   counter = 0
#   in_range_count = 0
#   while counter <= (list_of_integers.length - 1)
#     if list_of_integers[counter] <= upper_bound && list_of_integers[counter] >= lower_bound
#     in_range_count += 1
#     end
#     counter += 1
#   end
#   return in_range_count

# end

# Refactored Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  if list_of_integers.length == 0 then return 0
  end
  new_array = list_of_integers.select { |x| x.between?(lower_bound,upper_bound) }
  return new_array.length

end
