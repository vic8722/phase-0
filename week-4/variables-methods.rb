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
