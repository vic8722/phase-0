# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

# def largest_integer(list_of_nums)
#   # Your code goes here!
#   if list_of_nums.length == 0 then return nil end
#   counter = 0
#   largest_num = list_of_nums[0]
#     while counter <= (list_of_nums.length - 1)
#       if list_of_nums[counter] > largest_num
#         largest_num = list_of_nums[counter]
#       end
#       counter += 1
#     end
#     return largest_num
# end

# Refactored Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums.length == 0 then return nil end
  largest_num = list_of_nums.max
  return largest_num
end