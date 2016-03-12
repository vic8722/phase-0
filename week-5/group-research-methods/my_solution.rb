# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(input_array, add_num)
  input_array.each_with_index do |item, index|
    if item.is_a?(Numeric)
      input_array[index] += add_num
    end
  end
return input_array
end

def my_hash_modification_method!(input_hash, add_years)
  input_hash.each do |k,v|
      input_hash[k] += add_years
    end
return input_hash
end


# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.


# The ruby methods that I used were:
# .each_with_index - this method is used on arrays, and will go through each item in an array and allow you to assign a variable for the item as well as the index. This method does not inherently change the array it is operating on, you have to reference the array within the block to modify it.
# .is_a? - this method will check the object it is operating on to see if it belongs to a particular class. If it is, returns true... if not returns false.
# .each - this method iterates through each element in your hash or array. It needs to be provided with a variable name, for arrays just one argument, for hashes two arguments, one for the key and one for the value. Like .each_with_index it does not directly modify the object it's indexing through. For example, in a hash you can't just say "hash.each {|k,v| v*2}" to return a hash with the values doubled. You must refer to the hash directly like "hash.each {|k,v| hash[k] = v*2}".



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#



# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
