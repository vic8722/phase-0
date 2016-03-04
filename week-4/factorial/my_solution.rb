# Factorial

# I worked on this challenge with: Kunal.

# Psuedo-code:

# define method with inputs
# counter = 1
# result = 1
# LOOP WHILE counter is less than or equal to input value
# result = result * counter
# counter = counter + 1
# END LOOP



# Your Solution Below
def factorial(number)
  # Your code goes here
  counter = 1
  result = 1
  while counter <= number
    result = result * counter
    counter = counter + 1
  end
  return result

end
