# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of random elements

# What is the output? (i.e. What should the code return?)
# An array of most frequent elements

# What are the steps needed to solve the problem?

# Define a method called mode
# Create an empty hash
# Iterate over the input array
# IF the element is not in the hash, the element is added as a key and pair with one
# ELSE add one to the value associated with the key in the hash
# END iteration over the array
# Assign a new variable max_value to the maximum value in the hash
# Iterate through the hash to find the items that match max_value and add them to the array
# END iteration over the hash
# Return the new array


# 1. Initial Solution
=begin
def mode(array)
 hash = {}
   array.each do |x|
     if !hash.has_key?(x)
         hash[x] = 1
     else
       hash[x] += 1
     end
   end
 array_new = []
 max_value = hash.values.max
   hash.each do |key, value|
     if value == max_value
       array_new.push(key)
     end
 end
 return array_new
end
=end

# 3. Refactored Solution

def mode(array)
 hash = {}
 array.each do |x|
   if !hash.has_key?(x)
     hash[x] = 1
   else
     hash[x] += 1
   end
 end
 array_new = []
 max_value = hash.values.max
 hash.select! { |key, value| value == max_value }
 return hash.keys
end

# 4. Reflection

=begin
- Which data structure did you and your pair decide to implement and why?

We used a hash to implement the solution. Since we wanted to know for a particular/unique item in the array how many occurances of each there were it made sense to have this arranged in key/value setup. This way it's easy to keep track of the total amounts for each item.

- Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Yes, it definitely was a lot easier this time to break down the problem into chunks and write out the pseudocode for the chunks.

- What issues/successes did you run into when translating your pseudocode to code?

We were pretty successful translating the code from pseudo-code into working code. I thought we wrote out the two iterative portions fairly well in our pseudo-code which made it easy when we got the the coding.


- What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used two .each methods, one to iterate through the initial array and one to iterate through the hash we created. While refactoring we found the .reject! and the .select! methods. They were fairly easy to implement, it made the second half of our code easier to understand.

=end