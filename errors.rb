# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# Ruby lists the error occuring at 170 (end of the file) but really the missing 'end' was from line 16.
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# "unexpected end-of-input, expecting keyword_end". In other words, it was expecting an "end" somewhere and it did not find it.
# 5. Where is the error in the code?
# After line 15.
# 6. Why did the interpreter give you this error?
# Because the method defnwas missing it's end... therefore it kept  defining the method "cartman_hates" with the rest of the document.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 36 is where the error occurs.
# 2. What is the type of error message?
# main:Object (NameError)
# 3. What additional information does the interpreter provide about this type of error?
# The method or variable "south_park" is undefined but is being called on.
# 4. Where is the error in the code?
# Line 36.
# 5. Why did the interpreter give you this error?
# We're trying to call a method or reference to a variable that hasn't been defined yet, so the code doesn't know what to do.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line 51
# 2. What is the type of error message?
# main:Object (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# The method "cartman" is undefined but is being called on.
# 4. Where is the error in the code?
# Line 51.
# 5. Why did the interpreter give you this error?
# We're trying to call a method that hasn't been defined yet, so the code doesn't know what to do.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
# Line 66 / 70
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# The wrong number of arguments have been given to the method, 1 argument given for 0 needed.
# 4. Where is the error in the code?
# After the call to 'cartmans_phrase' where the string is included in the method call.
# 5. Why did the interpreter give you this error?
# Because when you define the method you tell it how many inputs you want to take, and if you provide the wrong number the program doesn't know what to do with the extra (or missing) properties.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says 'I hate Kyle'

# 1. What is the line number where the error occurs?
# Line 85 / 89
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# What additional information does the interpreter provide about this type of error?
# The wrong number of arguments have been given to the method, 0 arguments given for 1 needed.
# 4. Where is the error in the code?
# After the call to 'cartman_says' there should be a string.
# 5. Why did the interpreter give you this error?
# To run the method cartman_says we need to pass him an argument of what to say.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# Line 107 / 111
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# The wrong number of arguments have been given to the method, 1 argument given for 2 needed.
# 4. Where is the error in the code?
# After the first string given in the method call there should be another one.
# 5. Why did the interpreter give you this error?
# We should have given the method a 2nd argument to run in the method cartmans_lie.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 126
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# A string is trying to be turned into a Fixnum
# 4. Where is the error in the code?
# Where we try to * "Respect my authoritay!"
# 5. Why did the interpreter give you this error?
# The order of arguments was switched. It was trying to multiply 5 by a string... which doesn't make sense. Instead, we want to multiply a string a certain number of times. The multiplication method doesn't accept strings.

# --- error -------------------------------------------------------

amount_of_kfc_left = 200


# 1. What is the line number where the error occurs?
# Line 141
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# We are trying to divide by 0
# 4. Where is the error in the code?
# After 20 where we /0.
# 5. Why did the interpreter give you this error?
# A number divided by zero is infinite/undetermined and the computer cannot process this.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 157
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# Ruby is trying to look for a file to load in the same directory as this file, named "cartmans_essay.md" but none exists.
# 4. Where is the error in the code?
# The line "require_relative" where it trying to call a file that doesn't exist.
# 5. Why did the interpreter give you this error?
# No such file exists, so Ruby doesn't know what to do.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# Definitely the one with the end not included that said the error was at the end of the document. It's very confusing to try and look through ALL the code to try to see where the missing end is from (well... assuming our assignment hadn't been ordered.).

# How did you figure out what the issue with the error was?

# Well, in our case it wasn't too bad since the errors were laid out in order. I think in a real world example it would probably be a lot more difficult, going back and verifying all the indentations would probably help to make it more visible.

# Were you able to determine why each error message happened based on the code?

# For the most part, yes. In some cases it was a little subjective because it's hard to know what the intention of the programmer was. For example, with the /0 issue, it's hard to know if the '/' was extraneous or if perhaps it was supposed to be /10 or /9.

# When you encounter errors in your future code, what process will you follow to help you debug?

# I liked the suggestion of adding puts statments within the code to see how things are outputting to give a better understanding of what's going on if you can't figure out where the error is.