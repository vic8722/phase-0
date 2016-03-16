# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer, to the method initialize. An integer, to the method guess, nothing to method solved?
# Output: From guess: :high/:low/:correct based on how the input guess matches up to the initial integer. From solved?: true/false based on if the correct answer has been guessed or not.
# Steps:

=begin

Create a new class, GuessingGame

define a new method, initialize. Should take in one argument, answer, which is an integer.
Store an instance variable of answer
store an instance variable of solved? as false
end method initialize

define a new method, guess. Should take in one argument, new_guess, which is an integer.
evaluate if new_guess is greater than, less than, or equal to the variable answer
IF new_guess is greater than answer, store new instance variable solved? as false and return symbol high
IF new_guess is less than answer, store new instance variable solved? as false and return symbol low
IF new_guess is equal to answer, store new instance variable solved? as true and return symbol correct
end method guess

define a new method, solved?. Shouldn't take any arguments.
return the instance variable solved?
end method solved?


end Class GuessingGame
=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = false
  end

  def guess(new_guess)
    if new_guess > @answer then @solved = false; return :high
    elsif new_guess < @answer then @solved = false; return :low
    else @solved = true; return :correct
    end
  end

  def solved?
    return @solved
  end

  # Make sure you define the other required methods, too
end




# Refactored Solution


class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = false
  end

  def guess(new_guess)
    @solved = new_guess == @answer
    if @solved then return :correct end
    return new_guess > @answer ? :high : :low

  end

  def solved?
    return @solved
  end

  # Make sure you define the other required methods, too
end




=begin
Release 5: Reflect

- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables and methods are more permenant than local variables and methods. They can be shared between methods in a class. The variables keep their values and can be referenced back to as long as the object created by the class exists.

- When should you use instance variables? What do they do for you?

Instance variables are useful within classes where they can be referenced between different methods and refered back to at a later time. You should use them when you're going to want to refer to a particular value at a later time or in another method.

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is parts of the code that only run when certain conditions exist. I used if statements in this code. I didn't have much issue with using it.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  I suppose potentially if we were guessing a whole bunch of times it could take up a lot of memory if we're returning strings. Also, for the rspec tests I think potentially to test to see if we're returning the right value you can't check to see if two strings are equivalent, because each time they're created they create a new object variable.

  Symbols are good because they're immutable and each time you reference one it's referencing the exact same object, as opposed to strings that create a new objectid.


=end