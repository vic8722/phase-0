# 0. Pseudocode

# What is the input? array, minimum delimiter, and value defaulted at nil
# What is the output? (i.e. What should the code return?) permanently modified version of the original array
# What are the steps needed to solve the problem?
#define a method
#method takes 3 inputs: array, integer, object
#return array if minimum delimiter is <= array.length
#start at array.length until min_size - 1
#push values into array at end
#end loop / iterate to next value
#return updated array


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive - return modified version of the original object
  return array if array.length >= min_size
  i = array.length
  while i <= min_size - 1 #while i < min_size
    array << value
    i += 1
  end
  array
end
p pad!([1,2,3], 5, "duck")
=end


# 0. Pseudocode

# What is the input? array, minimum delimiter, and value defaulted at nil
# What is the output? (i.e. What should the code return?) new array with the values appended to the end (not changing original array)
# What are the steps needed to solve the problem?
#define a method
#method takes 3 inputs: array, integer, object

# return array if minimum delimiter is <= array.length

# assign a variable to an empty array

# iterate each value through original array
# push item from original array into the new array
# end loop


# start at array.length until min_size
# push value into the new array
# end loop / iterate to next value

#return new array



# def pad(array, min_size, value = nil) #non-destructive - return new object
#   # Your code here
#   return array if array.length >= min_size

#   pad_array = []

#   array.each do |item|
#     pad_array.push(item)
#   end

#   while pad_array.length < min_size
#     pad_array.push(value)
#   end

#   return pad_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  array
end

def pad(array, min_size, value = nil)
  pad_array = array.clone
  while pad_array.length < min_size
    pad_array.push(value)
  end
  pad_array
end

# p pad!([1,2,3], 5, "duck")

first_array = [1,2,3]
p first_array
p pad(first_array, 5, "duck")
p first_array


=begin

- Were you successful in breaking the problem down into small steps?

Yes! There weren't a ton of steps needed to complete this method but we were able to break it down.

- Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Yeah, we were able to translate the pseudo code into real code fairly easily. A couple of parts of our pseudocode had some issues, like having some of logic backwards that we needed to fix when we implemented the real code.

- Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  As I mentioned before, one of the mistakes we had was with some logic, initially we put if the array length was LESS than the minimum size to return the array... instead of MORE. Our first test case that we did was pretty easy to figure out, when we had a minimum size that was greater than the original array length it was the first place I looked.

- When you refactored, did you find any existing methods in Ruby to clean up your code?

We added .push and .clone. Yes, I think .push vs using << is not necessarily much cleaner... but it is another way to add items to the end of an array. Using .clone definitely made our clone for the non-destructive method cleaner. It allowed us to take out an entire loop that was being used to add items to the new array.

- How readable is your solution? Did you and your pair choose descriptive variable names?

I think the code is pretty readable. Yes, the names are descriptive of what they are. Perhaps we could have renamed "value" to something a little more descriptive, like "pad_value"

- What is the difference between destructive and non-destructive methods in your own words?

A destructive method modifies the object it's operating on, a non-destructive method creates a new object and operates on that... leaving the initial object to the value it had when the method was called.

end=