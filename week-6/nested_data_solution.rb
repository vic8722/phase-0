# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# def add_five(number_array)
#   number_array.map! do |items|
#     if items.is_a?(Array)
#       items.map! {|number| number + 5}
#     else
#       items + 5
#     end
# end
# number_array
# end
# p add_five(number_array)

# Refactored (after pairing completed, by Victoria)
# Just messing around with recursive functions...

def add_five(number_array)
  number_array.map! {|items| items.is_a?(Array) ? add_five(items) : items + 5 }
end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# def add_ly(string_array)
#   string_array.map! do |first_elements|
#     if first_elements.is_a?(Array)
#       first_elements.map! do |second_elements|

#         if second_elements.is_a?(Array)
#           second_elements.map! do |third_elements|
#             third_elements + "ly"
#           end
#         else
#           second_elements + "ly"
#         end
#       end
#     else
#       first_elements + "ly"
#     end
#   end
# string_array
# end

# Refactored (after pairing completed, by Victoria)
# Just messing around with recursive functions...

def add_ly(string_array)
  string_array.map! {|item| item.is_a?(Array) ? add_ly(item) : item + "ly"}
end

p add_ly(startup_names)


# Release 5: Reflect

=begin
- What are some general rules you can apply to nested arrays?

Nested arrays can be accessed in a similar way to regular arrays. You can just reference the location of an array as you normally would using it's index location, then simply add another set of brackets for each nested location within each array after that.

- What are some ways you can iterate over nested arrays?

You can iterate over nested arrays the same way that you iterate over a regular array. You can use methods like .map or .each. The key is you need to get to the nested array first, which can be done by iterating over the original array and checking if an item is an array or not... if it is then call the map or each function and perform whatever actions you want on the nested array.

- Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

Used methods that we were already familiar with, .map! and .is_a?. Couldn't find anything else out there that seemed more specific to use for this case.

=end