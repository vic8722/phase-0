# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 2 hours on this challenge.

# Pseudocode
=begin
create a new class, BingoScorer. Takes one argument, a 2-dimensional array.

Check for horizontal bingo:

for each row in the board
set a counter to zero
start to iterate through each row
  if the value in the row is marked
  increase the counter by 1
end itteration
if the counter is equal to five return "Bingo!"
iterate to the next row.

Check for vertical bingo:

set two counters, i and j, equal to zero (i is the index of the column, j is in index of each row)

iterate over j where j goes from 0 to 4
set a counter to zero
iterate over i where i goes from 0 to 4
  index the position in the bingo board represented at i, j
  if the value in that position is marked
  increase the counter by 1
end itteration over i
if the counter is equal to 5 return "Bingo!"
end itteration over j

Check for right to left bingo:

set i equal to zero (i is the index of the column)

set a counter to zero
set a variable j to 0 (index over the rows)

iterate over i where i goes from 0 to 4
  index the position in the bingo board represented at i, j
  if the value in that position is marked
  increase the counter by 1

  increase j by 1

end itteration over i
if the counter is equal to 5 return "Bingo!"

Check for left to right bingo:


set i equal to zero (i is the index of the column)

set a counter to zero
set a variable j to 4 (index over the rows)

iterate over i where i goes from 0 to 4
  index the position in the bingo board represented at i, j
  if the value in that position is marked
  increase the counter by 1

  decrease j by 1

end itteration over i
if the counter is equal to 5 return "Bingo!"



end class BingoScorer


=end
# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution


class BingoScorer

  def initialize(bingo_board)
    @bingo_board = bingo_board
  end

  def check_bingo
    checks = [
      horizontal_check,
      vertical_check,
      right_to_left_check,
      left_to_right_check
    ]

    return checks.any? ? 'BINGO' : 'NOT BINGO'

  end

  def horizontal_check()
    @bingo_board.each do |row|
      counter = 0
      row.each do |value|
        if value == 'x'
          counter += 1
        end
      end
      return true if counter == 5
    end
    nil
  end


  def vertical_check()

    for j in 0..4
      counter = 0
      for i in 0..4
        counter += 1 if @bingo_board[i][j] == 'x'
      end
      return true if counter == 5
    end
    nil
  end

    def right_to_left_check()
      counter = 0
        for i in 0..4
          counter += 1 if @bingo_board[i][i] == 'x'
        end
      return true if counter == 5
    end

    def left_to_right_check()
      counter = 0
      i = 4
        for j in 0..4
          counter += 1 if @bingo_board[i][j] == 'x'
          i -= 1
        end
      return true if counter == 5
    end

end


#puts c


bingo = BingoScorer.new(horizontal)
puts(bingo.check_bingo)

print "----------\n"

bingo = BingoScorer.new(vertical)
puts(bingo.check_bingo)

print "----------\n"

bingo = BingoScorer.new(left_to_right)
puts(bingo.check_bingo)

print "----------\n"

bingo = BingoScorer.new(right_to_left)
puts(bingo.check_bingo)

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:


# Reflection
=begin

- What concepts did you review or learn in this challenge?

I reviewed making references to nested arrays and using classes.


- What is still confusing to you about Ruby?

I still have a little trouble with some aspects of classes. I was running into some issues when calling the functions and making sure that it was returning a value or not, and then figuring out how to determine to return bingo overall (or not). Initially I was only returning the value from the last call to a subfunction in my class.

- What are you going to study to get more prepared for Phase 1?

I am going to go through several more of the Ruby challenges hopefully and then go back and review more javascript.

=end