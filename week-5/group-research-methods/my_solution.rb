# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution: Shin Wang

def my_array_finding_method(source, thing_to_find)
  final_array = []
  source.each do |word|
    if word.class == thing_to_find.class && word.include?(thing_to_find) ==true
      final_array << word
    end
  end
  return final_array
end

def my_hash_finding_method(source, thing_to_find)
  final_hash = []
  source.each do |k,v|
    if v == thing_to_find
      final_hash << k
    end
  end
  return final_hash
end

# Identify and describe the Ruby method(s) you implemented.
# Methods used: .each .class .include?
# .each is an enumerable that executes an action to each object in the array.
# .class determines the object type in question
# .include? is able to look within a string to find elememts of the string that are matching.

# Person 2: Victoria Solorzano
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

#The ruby methods that I used were:
# .each_with_index - this method is used on arrays, and will go through each item in an array and allow you to assign a variable for the item as well as the index. This method does not inherently change the array it is operating on, you have to reference the array within the block to modify it.
# .is_a? - this method will check the object it is operating on to see if it belongs to a particular class. If it is, returns true... if not returns false.
# .each - this method iterates through each element in your hash or array. It needs to be provided with a variable name, for arrays just one argument, for hashes two arguments, one for the key and one for the value. Like .each_with_index it does not directly modify the object it's indexing through. For example, in a hash you can't just say "hash.each {|k,v| v*2}" to return a hash with the values doubled. You must refer to the hash directly like "hash.each {|k,v| hash[k] = v*2}".

# Person 3: Robin Soubry
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by {|name,age| age}
end

# Identify and describe the Ruby method(s) you implemented.
# I implemented the Ruby method .sort_by to place the array and hash elements in the desired order.
    # Array: I thought I could use the plain .sort method, but because the array in the rspec file contains both strings and integers, I provided a code-block that converts alle elements to strings before placing them in alphabetical order.
    # Hash: The code block, combined with the .sort_by method contains the key (name) and value (age) in the piping. Because I specify that the iteration needs to sort on "age", it will implicitly sort on the "values" of the hash.


# Person 4: Chris Lamkin
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |substring|
    if substring.class == thing_to_delete.class && substring.include?(thing_to_delete) == true
      source.delete(substring)
    end
  end
  return source
  end

def my_hash_deletion_method!(source, thing_to_delete)
  updated_hash = source.reject! {|k,v| k == thing_to_delete}
  return updated_hash
end

# Identify and describe the Ruby method(s) you implemented.
#.class determines the object's class
#.include? will return true if the given object is present.
#.delete will delete an element from an array
#.reject! will remove (destructively) a hash pair from a hash



# Person 5: Buck Melton
def my_array_splitting_method(source)

  split_array = []
  array_1 = []
  array_2 = []

  source.each do | item |
    if item.is_a?(Integer)
      array_1.push(item)
    else
      array_2.push(item)
    end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

def my_hash_splitting_method(source, age)

  split_array = []
  array_1 = []
  array_2 = []

  source.keys.each do | the_key |
    new_item = [the_key, source[the_key]]
    if source[the_key] <= 4
      array_1.push(new_item)
    else
      array_2.push(new_item)
     end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

 #Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# I implemented my_array_splitting method and my_hash_splitting method.
#
# my_array_splitting method takes one array, and splits it into two arrays: the first array containing all the integers
# from the original array, and the second array containing all the other values from the original array.  These two
# arrays are then packaged together into an enclosing array.
#
# To use my_array_splitting_method, pass it an array of values, some integers and some not.
#
# my_hash_splitting_method takes a hash where they key-value pairs are pet names and their ages, and creates two
# arrays: the first array containing all the pets with ages 4 and under, their names and ages expressed as an array of
# two; and the second array containing all the pets aged over 4 similarly.  These two arrays of arrays are then
# packaged together into an enclosing array.
#
# To use my_hash_splitting_method, pass it a hash of pet names and ages.
#
# To use the Ruby Docs, I initially made my best guess as to what the best methods were.  When I received an error
# message, I'd go to the Ruby Docs and Filter on the Class name that I received the error for.  I would scan the
# written text on that Class.  Sometimes it would be helpful and sometimes not.  If not, I wouuld scan the method
# names down the left hand side.  Again, sometimes this was helpful and sometimes not.  When this was not helpful,
# I would either google for an answer or refer to The Well-Grounded Rubyist.
#
# For example, I initially tried to add to an array by doing "my_array.add".  I received an error message that
# "add" was not a method.  I went to RubyDocs, went to the page for Array, and scanned the written text.  One of the
# sections was labelled "Adding Elements", under which I found that I needed to use "push" instead of "add".