
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Dexter Morgan.

// Pseudocode
/*
Input: an Integer
output: String

if the length of the integer is less than 4 just return the number as a string.
convert the integer to a string and assign it to a new variable.
initilize a counter that is set to the length of the string minus 3
while the counter is greater than zer0, iterate backwards through the string by three and inset a comma at each index.
return the new variable.



*/

// Initial Solution
/*

function commaInserter(number){
  var numberString = String(number);
  var counter = numberString.length - 3;


  while(counter > 0){
    numberString = numberString.slice(0, counter) + "," + numberString.slice(counter);
    counter -= 3;
  }
  return numberString;
}
*/
console.log(commaInserter(12452145))
console.log(commaInserter(45))
console.log(commaInserter(1245218934752938545))

var output = commaInserter(12345345);


// Refactored Solution

function commaInserter(number){
  var numberString = String(number);

  for(var counter = numberString.length-3; counter > 0; counter -= 3){
    numberString = numberString.slice(0, counter) + "," + numberString.slice(counter);
  }
  return numberString;
}





// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
    (typeof(commaInserter(23456)) === "string"),
    "The method should return a string.",
    "1."
  )

assert(
    (commaInserter(1234) === "1,234" ),
    "Output is not correctly inserting commas",
    "2."

  )

// Reflection

/*

- What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

JavaScript definitely doesn't have nearly as many methods available to make things easy. We eneded up approaching the problem the same way my partner did it in Ruby. It was fairly easy to translate from the Ruby way to JavaScript.

- What did you learn about iterating over arrays in JavaScript?

We didn't use any arrays in our solution. It was fairly similar to iterating in Ruby, just needed a counter and to tell the counter how much to change by each iteration.


- What was different about solving this problem in JavaScript?

Where Ruby has nice methods to allow you insert values, JavaScript does not have this automatically built in. We were able to achieve the same result, just needed to write a bit more code.

- What built-in methods did you find to incorporate in your refactored solution?

We didn't find anything better when refactoring, but we initially used the .slice() method to take a portion of a string. I suppose we could have implemented the .concat() method instead of just using the + way, but I don't think that would have been much of an improvement.


*/
