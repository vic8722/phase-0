#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: Input to initialize method in NameData is a string, a name.
# Output: Out put from hello method in Greetings is a string.
# Steps:

=begin
Create a new class, NameData
assign symbol name as an attribute reader
create an initialize method, should take one argument, name
create an instance variable name and assign it the input argument, name.
end initialize method
end class, NameData

create a new class, Greetings
create an initialize method, should take one argument, name
create an instance variable, name_data that initializes a new instance of NameData
end initialize method

create a hello method
have it output a string with a greeting, including the instance variable name_data with reference to the instance variable name.
end hello method
end class, Greetings

=end

class NameData
  attr_reader :name
  def initialize
    @name = "Victoria"
  end
end


class Greetings
  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hey what's up, #{@name_data.name}?"
  end

end

greet = Greetings.new

greet.hello

# Reflection

=begin

Release 1:

- What are these methods doing?

These methods are either reading a variable (and returning it when it is called) or writing a variable (changing the value of the instance variable in the class). The print_info method is displaying results to the console and initialize method is defining each instance variable with initial conditions.


- How are they modifying or returning the value of instance variables?

The writing methods (change_my_age=, change_my_name=, and change_my_occupation=) each take in an argument and overwrite the instance variable that corresponds to it using the = operator.

The reading methods (what_is_age, what_is_name, what_is_occupation) each just have one line containing the instance variable, when called ruby always returns the last evaluated line in the method.

print_info uses puts statements and calls each instance variable and outputs to the console.

Release 2:

- What changed between the last release and this release?

The way that the @age instance variable is returned.


- What was replaced?

Instead of defining age as:

 def what_is_age
    @age
  end

We wrote it as

attr_reader :age

So now, instead of calling #.what_is_age to return the age we can just call #.age to do the same thing. We have to name the symbol the same thing as the instance variable to use the attr_reader method.

- Is this code simpler than the last?

Yes, it's a lot shorter, and knowing how it works it's simpler to understand.

Release 3:

-What changed between the last release and this release?

The way the @age instance variable is written.

- What was replaced?

Instead of overwriting age with:

  def change_my_age=(new_age)
    @age = new_age
  end

We wrote it as

attr_writer :age

So now, instead of calling #.change_my_age = <number> to overwrite the age we can just call #.age = <number> to do the same thing. We have to name the symbol the same thing as the instance variable to use the attr_writer method.

- Is this code simpler than the last?

Yep, like before it's shorter and easier once you understand how attr_writer works.

Release 4:

-


Release 5:

-


Release 6:

- What is a reader method?

A reader method, when called, returns the contents of an instance variable from a class.

- What is a writer method?

A writer method, when called, overwrites the contents of an instance variable in a class.

- What do the attr methods do for you?

The attr methods (attr_reader, atter_writer, and attr_accessor) take the place of defining new methods for an instance variable with the same name as the method you want to call to either read or write that instance variable.

- Should you always use an accessor to cover your bases? Why or why not?

No, if what you actually want is just to have something be read or written you should specify exactly what you want that variable to be able to do. It could allow someone to overwrite a variable that you didn't want changed.

- What is confusing to you about these methods?

In general I think I understand how these methods work. It's a little odd to me that we declare the attr on a symbol... which is actually representing an instance variable. But other than that it makes sense.

=end
