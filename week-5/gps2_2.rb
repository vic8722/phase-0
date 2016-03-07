# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define a method called "create_list" with string inputs
  # Create a new empty hash
  # set default quantity
  # Split out each word between the spaces into keys for the hash
  # Add keys to hash
# return new hash called "list"
  # print the list to the console [can you use one of your other methods here?]
# output: Hash.


# list = Hash.new(1)
# p list["a"]
# p list #
# More reading http://lukaszwrobel.pl/blog/ruby-hash-default-value for later; not now finish code

def create_list(list)
  default = 1
  list_hash = {}
  items = list.split
  items.each do |item|
    list_hash[item] = default
  end
  return list_hash
end

list = create_list("carrots apples cereal pizza")
p list


# Method to add an item to a list
# input: hash we created in create_list, item name, and optional quantity
# steps: define a method add_item that takes in three arguments
  #first argument is original hash returned from creat_list
  #second argument is a string of the item name
  #third argument is an integer of the quantity
# Add key-value pair to existing hash
# Return updated hash
# output: list hash (with new key-value pair)


def add_item(hash, item, quantity)
  if !hash.has_key?(item)
    hash[item] = quantity
  end
  return hash
end

list_hash = create_list("carrots apples cereal pizza")
p add_item(list_hash, "bananas", 3)


# Method to remove an item from the list
# input: list hash, item needing to be removed
# steps:

# define a method "remove_item"
# find key with matching name to the item to be removed
# remove from hash
# return updated hash
# output: list hash (with item removed)

def remove_item(hash, item)
  if hash.has_key?(item)
    hash.delete(item)
  end
  return hash
end

p remove_item(list_hash, "apples")





# Method to update the quantity of an item
# input: list hash, item whose quantity is to be updated, new quantity
# steps:

# define a method update_quantity
# find a key with matching name to the item whose quantity is to be updated
# replace existing value with new quantity
# return updated hash
# output: list hash (with updated quantity)

def update_quantity(hash, item, quantity)

    if hash.has_key?(item)
    hash[item] = quantity
  end
  return hash

end


p update_quantity(list_hash, "cereal", 5)





# Method to print a list and make it look pretty
# input: list hash
# steps:
# define a method "print_list"
# print title for table
# print line with headers for item column and quantity column
# print line to divide header from content

# start a loop to iterate through hash
# print each key/value pair of the hash with item and quantity spaced out
# end loop
# output: pretty table

def print_list(hash)
  width= 50
  puts "Shopping List".center(width)
  puts "".rjust(50,"-")
  print "Item".ljust(width/2)
  print "-"
  puts "Quantity".rjust(width/2)
  puts "".rjust(50,"-")
  hash.each do |item, quantity|
    puts "#{item.ljust(width/2)}-#{quantity.to_s.rjust(width/2)}"
  end
end




print_list(list_hash)

new_list= create_list("")
add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Onions", 1)
add_item(new_list, "Ice Cream", 4)
p new_list

p remove_item(new_list, "Lemonade")
p update_quantity(new_list, "Ice Cream", 1)
print_list(new_list)


# - What did you learn about pseudocode from working on this challenge?

# I think the idea of pseudocode is making a little more sense now for me. I learned that you're just writing out what you want the code to do, not necessarily what the code is going to be. So instead of putting "my_hash = {}" you would just write "Create a new empty hash called 'my_hash'" or something along those lines.

# - What are the tradeoffs of using Arrays and Hashes for this challenge?

# We mainly uses hashes on this challenge. If we had been using an array to begin with creating a lit we only would have to have put the initial items on the list, without having to define a default for the value pair for the keys. However, ultimately it's easier to use hashes from the beginning and then modify the hash to include the quanitities, so when we want to change them to be something other than 1 it's easy to modify.

# - What does a method return?

# A method returns whatever you tell it to return after writing "return ____" otherwise it returns the last executed line of code in the method.

# - What kind of things can you pass into methods as arguments?

# I think just about anything, in this challenge we passed strings, integers, and hashes into the methods.

# - How can you pass information between methods?

# You can pass information between two methods by making one method output (return) a particular value to a variable defined in the main body of the code and then call that variable in the next method. Also, if you pass a hash into a method and modify the hash it will modify it outside of the method as well. So after running the method the hash that was passed to the method will be changed.

# - What concepts were solidified in this challenge, and what concepts are still confusing?

# I think I'm definitely getting better with pseudo-code but could definitely still need some more practice. Same thing with hashes in general, every time I work with them things become a little more clear but definitely far from mastered.
#