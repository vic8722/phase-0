# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Integer/Float
# Steps to solve the problem.

# Define the method
# LOOP WHILE counter <= array length
# new results = array(counter) + results
# counter + 1
# end
# return results
# end


# 1. total initial solution
# def total (array)
#   counter = 0
#   results = 0
#   while counter <= (array.length - 1)
#     results = array[counter] + results
#     counter += 1
#   end
#   return results
# end

# puts total [40, 2, 10]


# 3. total refactored solution

def total (array)
  array.reduce(:+)
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: string
# Steps to solve the problem.

# define the method
# counter = 0
# results = ""
# LOOP WHILE counter <= (array.length - 1)
# IF counter = 0
# result = capitalize array[COUNTER]
# elsif counter == (array.length -1)
# results = results + " " + array[counter] + "."
# else
# results = results + " " + array[counter]
# end
# end

# 5. sentence_maker initial solution

# def sentence_maker (array)
#   counter = 0
#   results = ""
#   while counter <= (array.length - 1)
#     if counter == 0
#       results = array[counter].capitalize.to_s
#     elsif counter == (array.length - 1)
#       results = results + " " + array[counter].to_s + "."
#     else
#       results = results + " " + array[counter].to_s
#     end
#     counter += 1
#   end
#   return results
# end


# 6. sentence_maker refactored solution

def sentence_maker (array)
    array.join(" ").capitalize + "."
end