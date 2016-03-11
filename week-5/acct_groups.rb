#
=begin
inputs: array of names

outputs: an array of arrays, each sub-array contains names of members in each accountability group

steps:

define a method called accountability_groups that takes one argument, name_array that is an array of strings
define a variable, num_people as the length of name_array
define a variable, num_groups as num_people divided by 4 (the minimum number of people we want in each group)
define a counter, set to 0
define a new empty array, group_array
iterate through each name in the name_array
push the current name to the group_array at the index of the current counter value
if counter is equal to the (num_groups -1) then set to 0
  otherwise add one to the counter
end iteration
return the group_array

=end

# First Solution

# def accountability_groups(name_array)
#   num_people = name_array.length
#   num_groups = num_people/4
#   group_counter = 0
#   group_array = []

#   for i in 0..(num_groups-1)
#       group_array[i] = []
#   end


#   name_array.each do |name|

#     group_array[group_counter].push(name)

#     if group_counter == num_groups - 1
#       group_counter = 0
#     else
#       group_counter += 1
#     end
#   end

#   return group_array

# end

# Adding Complexity (random order) and refactoring

def accountability_groups(name_array, min_members)
  name_array = name_array.clone
  num_groups = name_array.length/min_members
  group_counter = 0
  group_array = Array.new(num_groups) { [] }

  while name_array.length > 0

group_array[group_counter].push(name_array.delete_at(rand(0...name_array.length)))
    if group_counter == num_groups - 1
      group_counter = 0
    else
      group_counter += 1
    end
  end

  return group_array

end

# Testing code


dev_names = ["Aarthi Gurusami","Abid Ramay","Adam Zmudzinski","Alec Hendrickson","Alex Wen","Alicia Briceland","Allison paul","Andrey Slonski","Anna Lansfjord","Ben Sanecki","Benjamin R Flores","Buck Melton","Caitlin Hoffman","Carlos Gonzalez","Chand Nirankari","Ché Sanders","Chris Henderson","Christopher Lamkin","Christyn Budzyna","Dan Park","David Ramirez","David Tao","David Walden","Bill Deng","Denny Jovic","Dexter Moran","Diana Ozemebhoya Eromosele","Dominick Lombardo","Elan Kvitko","Elizabeth Alexander","Elizabeth Brown","Ena Bekanovic","Esther Leytush","Evan Druce","Frank Lam","Gabriel Zurita","Jack Thatcher","Jason Milfred","John Colella","Jonathan Kaplan","Kelson Adams","Kristal Lam","Kunal Patel","Leland Meiners","Liam Binell","Lisa Buch","Lisa Dannewitz","Lyudmila Arinich","Mohamed Monekata","Parker Smathers","Patrick DeWitte","Renan Martins","Riley Scheid","Robin Soubry","Samantha Holmes","Scott Southard","Shaun R Sweet","Shin Wang","Sibel Ergener","Simon Thomas","Talal Talhouk","Ted Bogin","Traci Fong","Victoria Solorzano"]

print accountability_groups(dev_names, 4)

# Reflection

=begin

- What was the most interesting and most difficult part of this challenge?

Definitely the most interesting/challenging part was thinking through the logic of how to arrange the outputs and then once I had decided to output an array of arrays, having to figure out how to get it to let me push the names to an element of the array that I wanted to be an array. (At the time, I hadn't figured out yet that I needed to initialize the array with blank arrays.)


- Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, I think it's getting easier the more I do it. I find that sometimes when I'm writing out the pseudocode I can just kind of think of how I want it to be done, and then when I get to the actual code writing part is where I need to worry about getting it done. It sometimes requires me to go back and write in extra code I didn't account for in the psedo-code but I think that's fine.


- Was your approach for automating this task a good solution? What could have made it even better?

I think the approach is pretty good, I especially like the version that I have with randomized groups and allowing the option of picking how many minimum people you want in each group. I tried working out a solution for a while using the .slice_each function that would have been more straightforward, but couldn't figure out an elegant want to make sure the last group wasn't potentially smaller than the others.


- What data structure did you decide to store the accountability groups in and why?

I chose to store the groups in an array. I didn't see any valuable reason to store using a hash. I suppose you could give each key a name of something like "Group 1" etc. and then store an array of the names of the groups in the value... but to me that's just adding an extra layer that isn't really necessary. Just titling the groupings for no reason.

- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned a lot while refactoring. First, while I am certain I have read about it several times previously... I learned how to create an array of a certain size with default values using Array.new(size) {default}. I also learned the .delete_at method to return a value from the any position of an array and remove it from the current array. Another method I was familiar with but felt like I learned from was rand(). I previously would have that you could only use rand with an integer value and return values from 0 to the max value (exclusive). Looks like newer versions of ruby allow you to specify a range of values with a min and max and return a random value between them.


=end