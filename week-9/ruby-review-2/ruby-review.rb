# Cipher Challenge

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# Release 2: Read the Code

# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

=begin

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
# Takes the input string, makes all letters lower case, splits into an array where every character is its own element in the array.
  decoded_sentence = []
# Creates an empty array that we're going to put the decoded letters/symbols into
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
# tells us what letter to change to for the coded message, each letter is 4 letters earlier in the alphabet (unless it's the first part of the alphabet then it wraps around to the end).

  input.each do |x| # What is #each doing here?
# For each character in the message.
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
# We set found_match to false at the beginning and then each time we go through a part of the decoding, if the character matches whatever our key knows what to do with it we will change found_match to true. This way we know at the end if we have already replaced this character. If not, just input the character as-is without transforming it.
    cipher.each_key do |y| # What is #each_key doing here?
# Go through each letter in the cipher (so we can see if it matches the current character we're trying to decode.)
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
# x is the current character in our coded message, y is the character/key in cipher.
        decoded_sentence << cipher[y]
# if the letter was in cipher, add it to our decoded_message array...
        found_match = true
# and say we already decoded that character.
        break  # Why is it breaking here?
# break ends the current itteration of the loop and goes to the next value. Once our character has been deciphered and added to the decoded_message we can go to the letter. However, I don't see why we use this AND change found_match to true since that's never going to be false if we always break...
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
# Checking to see if the code-character is one of the symbols above
        decoded_sentence << " "
        found_match = true
        break
# 3 lines above: add a space to the message, change the found_match verification to true, break and move to the next character... rendering the found_match useless again.
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
# Takes the range of numbers 0-9 and puts them in an array, verifies if the character from our coded message is in the array.
        decoded_sentence << x
        found_match = true
        break
# 3 lines above: add the number to the message, change the found_match verification to true, break and move to the next character... rendering the found_match useless again.
      end
    end
    if not found_match  # What is this looking for?
# if none of the decoding methods above were used, found_match will stay fales (although even if they were changed to true we're breaking and skipping this part of the code anyway...)
      decoded_sentence << x
# Just add the character as it is to the message.
    end
  end
  decoded_sentence = decoded_sentence.join("")
# method returns the value of decoded_sentence... this is a string that is linked together
  #What is this method returning?
end

=end

# Release 3: Refactor

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("")
#   decoded_sentence = []
#   cipher = ('a'..'z').to_a

#   input.each do |code_char|
#     found_match = false
#       if cipher.include?(code_char)
#         next_char = cipher[cipher.index(code_char) - 4]
#       elsif code_char == "@" || code_char == "#" || code_char == "$" || code_char == "%"|| code_char == "^" || code_char == "&"|| code_char =="*"
#         next_char = " "
#       else
#       next_char = code_char
#     end

#     decoded_sentence << next_char
#   end
#   decoded_sentence = decoded_sentence.join("")
# end

# Release 4: Make more Object-Oriented (Optional)
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = ('a'..'z').to_a

  input.each do |code_char|
    found_match = false
      if cipher.include?(code_char)
        decoded_sentence << letter_convertor(code_char, cipher)
      elsif code_char == "@" || code_char == "#" || code_char == "$" || code_char == "%"|| code_char == "^" || code_char == "&"|| code_char =="*"
        decoded_sentence << punctuation_convertor()
      else
      decoded_sentence << code_char
    end
  end
  return output_decoded_message(decoded_sentence)
end

def letter_convertor(code_char, cipher)
  return cipher[cipher.index(code_char) - 4]
end

def punctuation_convertor()
  return " "
end

def output_decoded_message(decoded_sentence)
  return decoded_sentence.join("")
end


#   Shift letters from one to another based on a shift that is defined when the method is called. (i.e. letter_convertor(4))
# A method to convert punctuation.
# A method to combine outputs from the above methods and "join" a sentence.

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"

p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin
- What concepts did you review in this challenge?

I reviewed looking at other people's code to refactor and improve for DRYness and readability.

- What is still confusing to you about Ruby?

I still don't entirely understand the best ways to do tests and the correct way to implement them. But practicing I think is helping.

- What are you going to study to get more prepared for Phase 1?

Going to keep going through these Ruby challenges and looking things up when I don't understand them!

=end