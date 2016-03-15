# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of either strings or numbers.
# Output: from sides: a number coresponding to the number of sides on the die. from roll: a random side of the die. (different every time it's called)
# Steps:

# Create a Die class
# Create a new method, initialize, that takes in one variable that is an array called labels.
# if labels is an empty array return an artument error.
# store the new variable labels as an instance variable
# end method initialize
# Create a new method sides
# create an instance variable, sides
# set sides equal to the size of the array, labels
# return the instance variable sides
# end method sides
# Create a new method roll
# generate a random number, corresponding to each location in the array
# return the element corresponding to the random location in the array
# end method roll
# end Die Class


# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Need to provide an array...") if labels.empty?
    @labels = labels
    @sides = @labels.length
  end

  def sides
    return @sides
  end

  def roll
    return @labels[rand(0...@sides)]
  end
end



# Refactored Solution

# Couldn't find any methods to improve upon the code.

# Reflection


=begin

- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

There wasn't much of a difference, biggest difference is instead of taking in an integer like last time it's taking in an array. Some of the logic was a little different, like to figure out the number of sides or how to output a random side... but the structure was fundamentally the same.

- What does this exercise teach you about making code that is easily changeable or modifiable?

It will save you lots of time if you can have code that can easily be changed instead of code that is very specific and only able to be used for one case.

- What new methods did you learn when working on this challenge, if any?

I did not use any new methods when writing this class.

- What concepts about classes were you able to solidify in this challenge?

When I was initially writing the code, I didn't declare @sides in my initialize method, only in the sides method. Then when I was testing .roll I couldn't figure out at first why I was getting errors. Took me a minute to figure out that if I hadn't called sides it didn't have a value stored yet for the @sides variable.

=end