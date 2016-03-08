# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?

# input is a positive integer, a fixnum


# What is the output? (i.e. What should the code return?)

# output is a string containing the initial number separated out with commas in standard number format

# What are the steps needed to solve the problem?

=begin

define a new method called separate_commma
method should take one argument, num

convert num to a string, num_string

separate the numbers into separate elements in an array, num_array

store a counter variable to the length of the array (num_digits)

create a new blank array, comma_num_array

create a loop, while the counter greater than 0

push the item in num_array to comma_num_array

IF the counter is less than 4
 do nothing
ELSE IF the (counter mod 3) is equal to 1
  push a comma to comma_num_array
END

return comma_num_array as a string

=end

# 1. Initial Solution

# def separate_comma(num)
#   return nil if !(num.is_a? Integer)

#   num_string = num.to_s
#   num_array = num_string.split(//)
#   num_digits = num_array.length

#   comma_num_array = []

#   num_array.each do |digit|
#     comma_num_array.push(digit)

#     if num_digits < 4
#     elsif num_digits % 3 == 1
#       comma_num_array.push(',')
#     end

#     num_digits -= 1
#   end

#   return comma_num_array.join
# end

# puts separate_comma(6677)


# 2. Refactored Solution
def separate_comma(num)
  return nil if !(num.is_a? Integer)

  num_array = num.to_s.split(//)

  return num_array.collect.with_index { |digit, i|
    num_digits = num_array.length - i

    if num_digits > 3 && num_digits % 3 == 1
      digit + ','
    else
      digit
    end

    }.join

  end

puts separate_comma(100009)

# 3. Reflection


=begin

- What was your process for breaking the problem down? What different approaches did you consider?

I broke down the problem first by thinking about how the commas are spaced out in the numbers. I had two different approaches I was considering, one was going from the beginning of the number forwards and the other was starting at the end of the number and going backwards. Ultimately I decided it would be easier to think about just going from the beginning of the number.

- Was your pseudocode effective in helping you build a successful initial solution?

Yes definitely. The pseudocode was essentially exactly what I ended up writing out in Ruby.


- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I ended up using the .collect and .with_index methods in my refactored solution. I had seen them previously when going through the Ruby documentation... so I kind of knew what I was looking for. It didn't explicity talk about using if statements with collect... so I had to kind of play with that. You have to tell it what to do with your value just one time, you can't kind of mix and match (like tell it to put the value and then if some condition is met add a comma... if that makes any sense). No, the refactoring didn't really change how the code works, just makes it a little neater and easier to follow.



- How did you initially iterate through the data structure?

I iterated through the number array from the start to the end... using a counter that starts at the length of the array and goes down from there.

- Do you feel your refactored solution is more readable than your initial solution? Why?

Yes, I think it is easier to understand that we're just modifying an array... and then once the array has been adjusted we're returning a string of that array. Also, combining the conditions when you need a comma to be added makes it a bit easier.

=end