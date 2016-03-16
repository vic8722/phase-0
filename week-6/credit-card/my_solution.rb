# Class Warfare, Validate a Credit Card Number


# I worked on this challenge Victoria Solorzano and Samantha Holmes.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16-digit integer
# Output: boolean, true/false
# Steps:

=begin

Define a class, CreditCard

create a new method, initialize that takes in one argument card_number that is a 16-digit integer
  create an instance variable, card_number that is equal to the input card_number.
  send an argument error if the input is not 16-digits.
end method, initialize

create check_card method

  call double_digit method
  call sum_digits method
  call multiple_ten? method

end method credit_card

create double_digits method

Make an array of instance variable card_number
  iterate through the array with indexes
  IF the position in the card number is even (index is odd)
  THEN multiply the digit by two
  ELSE leave the digit alone
  end IF
end method double digits

create sum_digits method
  create variable sum_value

  iterate through instance variable card_number

  add element to sum
  IF element is greater than 9 THEN subtract 9

  end method sum_digits

  create multiple_ten? method
    IF the sum modulus 10 is equal to 0 return true
    ElSE return false
end method multiple_ten?


end class, CreditCard


=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(card_number)
#     if card_number.to_s.length != 16
#       raise ArgumentError.new ("Card number must be 16 digits")
#     end
#     @card_number = card_number
#   end

#   def double_digits
#     @card_number = @card_number.to_s.split(//)
#     @card_number.map!.with_index do |number, index|
#       if index.even?
#         number.to_i * 2
#       else
#         number.to_i
#       end
#     end
#     p @card_number
#   end

#   def sum_digits
#     @sum_value = 0
#     @card_number.each do |number|
#       @sum_value += number
#       if number > 9
#         @sum_value -= 9
#       end
#     end
#     p @sum_value
#   end

#   def multiple_ten?
#     @sum_value % 10 == 0 ? true : false
#   end

#   def check_card
#     double_digits
#     sum_digits
#     multiple_ten?
#   end
# end

# new_card = CreditCard.new(4563960122001999)
# p new_card.check_card

# Refactored Solution

class CreditCard

  def initialize(card_number)
      raise ArgumentError.new ("Card number must be 16 digits") if card_number.to_s.length != 16
    @card_number = card_number
  end

  def double_digits
    @card_number = @card_number.to_s.split(//)
    @card_number.map!.with_index do |number, index|
      index.even? ? number.to_i * 2 : number.to_i
    end
  end

  def sum_digits
    @sum_value = @card_number.join.split(//).map{|string| string.to_i}.inject(:+)
  end

  def multiple_ten?
    @sum_value % 10 == 0 ? true : false
  end

  def check_card
    double_digits
    sum_digits
    multiple_ten?
  end

end

# Release 5: Reflect
=begin
- What was the most difficult part of this challenge for you and your pair?

When we were refactoring we had a bit of trouble figuring out if we could add methods in one line or not. The issue ended up being that the methods we were using did not modify in place, so we weren't getting the results to stay. In our double_digits method we tried adding .to_s.split(//) to the next line before .map!. Our thinking was that @card_number would modify @card_number and then .map! would modify it in place. I think, when you use a destructive method like .map! it tries to change the variable it's acting on... in this case it wasn't @card_number but @card_number.to_s.split(//). This is why it wasn't "saving" our results.

- What new methods did you find to help you when you refactored?

We used .inject(:+) to sum over an array. We also used .join and .split(//) to quickly get our numbers into an array after we did the doubling and needed to get each digit into it's own index.

- What concepts or learnings were you able to solidify in this challenge?

The idea of a class and why you would want to use one makes a little more sense to me now. Also, I feel like I'm getting more comfortable with the differences in practice between using each vs map and destructive methods vs non-destructive.

=end
