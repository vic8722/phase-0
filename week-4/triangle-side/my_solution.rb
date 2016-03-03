# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

  if (a + b > c) && (a + c > b) && (b + c > a)
    return true
  else
    return false
  end

end
