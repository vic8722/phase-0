  # Smallest Integer

  # I worked on this challenge by myself.

  # smallest_integer is a method that takes an array of integers as its input
  # and returns the smallest integer in the array
  #
  # +list_of_nums+ is an array of integers
  # smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
  #
  # If +list_of_nums+ is empty the method should return nil

  # Your Solution Below

  # def smallest_integer(list_of_nums)
  #   # Your code goes here!
  #   if list_of_nums.length == 0 then return nil end
  #     counter = 0
  #     smallest_number = list_of_nums[0]
  #     while counter <= (list_of_nums.length - 1)

  #       if list_of_nums[counter] < smallest_number
  #         smallest_number = list_of_nums[counter]
  #       end

  #       counter += 1
  #     end
  #     return smallest_number
  # end


# refactored code

def smallest_integer(list_of_nums)
    # Your code goes here!
    if list_of_nums.length == 0 then return nil end

      return list_of_nums.min

end