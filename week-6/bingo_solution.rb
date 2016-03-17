# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
=begin
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
create instance variable, bingo_letter, and have it select a random letter from the array including the letters in "BINGO".

create an instance variable, bingo_number, and have it select a random number between 1 and 100.

# Check the called column for the number called.
  #fill in the outline here
create an array with the letters in BINGO.
  search the array in bingo_board associated with the letter in bingo for the number in bingo_number.
  if found return true, else return false.

# If the number is in the column, replace with an 'x'
  #fill in the outline here

select the array found at index corresponding to the location of letter in bingo array

replace the value matching bingo_number with an "X"

# Display a column to the console
  #fill in the outline here
  output the array corresponding to the array found at index corresponding to the location of letter in bingo array

# Display the board to the console (prettily)
  #fill in the outline here

  Print the letters BINGO spaced out

Iterate through the bingo_board
  print the first item in each array, spaced under the letters in BINGO
  go through each array repeating for all numbers

=end

# Initial Solution
class BingoBoard


  def initialize(board)
    @bingo = ["B","I","N","G","O"]
    @bingo_board = board
  end

  def call
    @bingo_letter = @bingo[rand(0..4)]
    @bingo_number = rand(1..100)
    return "#{@bingo_letter}#{@bingo_number}"
  end

  def check
    if @bingo_board[@bingo.index(@bingo_letter)].include?(@bingo_number)
      first_index = @bingo.index(@bingo_letter)
      second_index = @bingo_board[first_index].index(@bingo_number)
      @bingo_board [first_index] [second_index] = "X"
    end
    return @bingo_board[@bingo.index(@bingo_letter)]
  end

  def display
    @bingo.each do |letter|
      print letter.rjust(5)
    end
    puts
    #  @bingo_board[i][j]
    for j in 0..4
      for i in 0..4
        print @bingo_board[i][j].to_s.rjust(5)
      end
      puts
    end

  end


end

# Refactored Solution

class BingoBoard


  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo = ["B","I","N","G","O"]
    @bingo_letter_ind = rand(0..4)
    @bingo_number = rand(1..100)
    return "#{@bingo[@bingo_letter_ind]}#{@bingo_number}"
  end

  def check
    number_index = @bingo_board[@bingo_letter_ind].index(@bingo_number)
    if number_index
      @bingo_board [@bingo_letter_ind] [number_index] = "X"
    end
  end

  def display
    @bingo.each {|letter| print letter.rjust(5)}
    puts
    #  @bingo_board[i][j]
    for j in 0..4
      for i in 0..4
        print @bingo_board[i][j].to_s.rjust(5)
      end
      puts
    end
  end
end

# Release5: True Bingo Board (Optional)

class BingoBoard


  def initialize(board=nil)
    @bingo = ["B","I","N","G","O"]
    board.nil? ? generate_board : @bingo_board = board
  end

  def call
    @bingo_letter_ind = rand(0..4)
    @bingo_number = rand(1..100)
    return "#{@bingo[@bingo_letter_ind]}#{@bingo_number}"
  end

  def check
    number_index = @bingo_board[@bingo_letter_ind].index(@bingo_number)
    if number_index
      @bingo_board [@bingo_letter_ind] [number_index] = "X"
    end
  end

  def display
    @bingo.each {|letter| print letter.rjust(5)}
    puts
    #  @bingo_board[i][j]
    for j in 0..4
      for i in 0..4
        print @bingo_board[i][j].to_s.rjust(5)
      end
      puts
    end
  end

  def generate_board
    board = Array.new(5)
    board.map!.with_index do |array, idx|
      start_num = (idx * 15) + 1
      end_num = start_num + 15
      (start_num..end_num).to_a.sample(5)
    end
    board[2][2] = "FS"
    @bingo.each {|letter| print letter.rjust(5)}
    puts
    #  @bingo_board[i][j]
    for j in 0..4
      for i in 0..4
        print board[i][j].to_s.rjust(5)
      end
      puts
    end
    @bingo_board = board
    return @bingo_board
  end

end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
=begin
- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was definitely more difficult to pseudocode this example than some of the others we have done previously. Some things, like explaining how to iterate through each array to display the bingo board, were difficult to put into words without using code. Other things, like replacing the matching bingo number with an "X", almost seemed too trivial to write down and made me want to put extra lines in.

As for my style, I definitely think it could use work... but it works for me. I am able to understand what I've written and find it to be helpful when putting the code into action. So it gets the job done.

- What are the benefits of using a class for this challenge?

Variables that we want to reference again and again like @bingo, @bingo_board, etc. are easily accessible from each method and don't need to be declared again and again.

- How can you access coordinates in a nested array?

For example, a nested array named "array" can be accessed like:

array[i][j][k]

where i represents the index of the variables found in the first layer of the array, j for any arrays found in the previous elements, and k for any arrays found in the j-layer's elements.

- What methods did you use to access and modify the array?

I used the method to directly call from the nested array using array[i][j]. I also used the .index method to get the indicies of the matching bingo number within the nested array.


- Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

There is a method called .sample that operates on an array, returning a random item from that array. If it is passed an integer (.sample(4)) then it returns an array with that many random items from the array. It uses unique identifiers so it does not repeat values.


- How did you determine what should be an instance variable versus a local variable?

If the variable was going to be something I'd need to reference in another method I made it an instance variable, if it was just something that needed to be used within a particular method and not refered to again after that method call then I just made it a local variable.

- What do you feel is most improved in your refactored solution?

Readability. My first solution had some kind of confusing sections that I pared down a bit in the refactored solution.

=end