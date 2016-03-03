# Calculate a Grade

# I worked on this challenge [by myself, with: Gabriel Zurita].


# Your Solution Below

def get_grade(average)

  case average

  when 90..100
    return "A"
  when 80..89
    return "B"
  when 70..79
    return "C"
  when 60..69
    return "D"
  when 0..59
    return "F"
  else
    return "Not a valid grade"
  end

end

puts get_grade(105)