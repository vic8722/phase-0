# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: sides, an integer number
# Output:

#   when .sides is called: integer with the number of sides
#   when .roll is called: a random number between 1 and the number of sides
# Steps:

=begin

Create a new class called Die
define a method, initialize, which takes in the variable sides with the integer of number of sides
check if the number of sides is less than 1
IF so, raise an argument error
end IF
define and return an instance variable @sides that is assigned to the input value, sides.
end this method definition

define a method, sides
return the instance variable sides
end method

define a method, roll
pick a random number between a range, 1 to the number of sides
end method
end class definition

=end

# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    if sides < 1
      raise ArgumentError.new("Need to provide a number 1 or greater.")
    end
    @sides = sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    rand(1..@sides)
  end
end


# 3. Refactored Solution

# I did not see any good places to shorter or improve the code.

# 4. Reflection

=begin

- What is an ArgumentError and why would you use one?

An ArgumentError is a message that Ruby can throw when there is an issue with some of the inputs that are being passed to a method. You would want to use one to prevent bad inputs from being given by the user, and to alert the user to the issue.

- What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I had never used the ArgumentsError function before. It was pretty straightforward in how to implement it. Didn't have any issues.

- What is a Ruby class?

A class is a basic map of what a certain object should be able to do that is created under that class. It is an object that you can define and give methods to that can be used for any objects created into that object type in the future. Those created objects will then have access to all the methods defined in the class. It also has the benefit of being able to define insance variables within the class that can be used between different methods.


- Why would you use a Ruby class?

You would use a Ruby class if you potentially want to have several objects that all share the same kinds of methods.


- What is the difference between a local variable and an instance variable?

A local variable is defined within a block of code, like a method, and once the code is finished being executed the variable can no longer be referenced and looses its value. An instance variable once defined within a class can be referenced across all methods within that class, and does not lose its value once the block of code it is defined in has been run.


- Where can an instance variable be used?

Anywhere within the class that they were defined.


=end