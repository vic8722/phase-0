puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp

puts 'Hello there, ' + first_name + ' ' + middle_name + ' ' + last_name

puts 'What\'s your favorite number?'
favorite_number = gets.chomp.to_i
better_number = favorite_number + 1
puts 'Ah, ' + favorite_number.to_s + ' is a pretty good number. But don\'t you think that ' + better_number.to_s + ' is just a little bit better? ;)'

=begin

- How do you define a local variable?

Type the name of the variable you're interested in followed by an "=" symbol and then whatever you want the variable to be equal to.

- How do you define a method?

Type "def" followed by the name of your method. Then, within parenthesis define your inputs that the method will take (if any). On the next lines, put whatever code you want your method to execute on the inputs. Include "return" at the end with whatever you want your method to output. On the last line conclude with "end".

- What is the difference between a local variable and a method?

A local variable is an object that has a certain value assigned to it that can be redefined at any point. A method is a named set of code that you want to perform specific actions when called upon.


- How do you run a ruby program from the command line?

By typing "ruby <file name>" where file name is a file with a .rb extention containing ruby code.


- How do you run an RSpec file from the command line?

By typing "rspec <file name>" where file name is a file with a .rb extention containing ruby code and the word "spec" in the file name.

- What was confusing about this material? What made sense?

Most of this material made sense. I didn't have much issues with my initial passes getting the tests to pass. However, when I intentionally put mistakes in the code to see what the tests would tell me I had a hard time interpreting the output.


Assignment 4.3.1 - Return a Formatted Address:
https://github.com/vic8722/phase-0/blob/master/week-4/address/my_solution.rb

Assignment 4.3.2 - Defining Math Methods:
https://github.com/vic8722/phase-0/blob/master/week-4/math/my_solution.rb



=end
