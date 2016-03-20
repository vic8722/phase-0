# Your Names
# 1) Victoria Solorzano
# 2) Mila

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)


  base_servings = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  library_extra_ingredients = {"cookie" => "cookie crust", "cake" =>  "cupcakes", "pie" => "jelly"}

# #   set error counter equal to the number of items in the library hash
#   error_counter = 3


#   library.each do |food|
# #     compare the input food item with the items in the library hash
#     if library[food] != library[item_to_make]
# #       if not found in the hash, remove one from the error_counter variable
#       error_counter += -1
#     end
#   end


# #   if the item was not in the library hash, the error_counter will be >0
#   if error_counter > 0
# #     alert the user that the item isn't in the recipe
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

    raise ArgumentError.new("#{item_to_make} is not a valid input") if !base_servings.has_key?(item_to_make)

# serving_size, lookup the amount associated with the input food item
  # serving_size = library.values_at(item_to_make)[0]
  serving_size = base_servings[item_to_make]
#   remaining_ingredients, the remaining amount of ingredients
  remaining_ingredients = num_of_ingredients % serving_size


# next make a case statement for what to output based on how many ingredients are left
#   case remaining_ingredients
#   when 0
# #     When there isn't a remainder of ingredients, when remaining_ingredients is zero then output the number of items that were made of the item
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
# #     When there is a remainder of ingredients, output how many of that item were made, and how much is remaining of that ingredient.
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{library_extra_ingredients[item_to_make]}"
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
