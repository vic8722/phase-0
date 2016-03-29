/*
Gradebook from Names and Scores

I worked on this challenge with Traci Fong.
This challenge took me .75 hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]




// __________________________________________
// Write your code below.

// var gradebook = {
//                 "Joseph": {testScores: scores[0]},
//                 "Susan": {testScores: scores[1]},
//                 "William": {testScores: scores[2]},
//                 "Elizabeth": {testScores: scores[3]},
//                 };


// gradebook.addScore = function (name,score) {
//   this[name].testScores.push(score);

// };

// gradebook.getAverage = function (name) {
//   return average(gradebook[name].testScores);
// };

// function average(array) {
//   var total = 0;
//   for (var i = 0; i < array.length; i++) {

//     total += array[i];

// };
//   return total/array.length;

// }

// console.log(gradebook.getAverage("Susan"));


// __________________________________________
// Refactored Solution


var gradebook = {
                "Joseph": {testScores: scores[0]},
                "Susan": {testScores: scores[1]},
                "William": {testScores: scores[2]},
                "Elizabeth": {testScores: scores[3]},
                };


gradebook.addScore = function (name,score) {
  this[name].testScores.push(score);

};

gradebook.getAverage = function (name) {
  return average(gradebook[name].testScores);
};

function average(array) {

  var total = array.reduce(function(a,b) {return a + b; });
  return total/array.length;

}

console.log(gradebook.getAverage("Susan"));


// __________________________________________
// Reflect
/*

- What did you learn about adding functions to objects?

Functions can be added to objects either directly by adding a function that does something or by calling another function within the function.

- How did you iterate over nested arrays in JavaScript?

Hmm, technically once we started iterating over the array it wasn't really nested. We called the array of interest when defining the testScores property in the gradebook object. In our initial average function we passed to it the value of the array. Then we used a for loop that defined a counter to reference the index of the array, and increased the counter after each iteration to go to the next location in the array.

- Were there any new methods you were able to incorporate? If so, what were they and how did they work?

Yes, we used the .reduce() method to sum over our array. It gets passed a function with two arguments to represent the resulting total of the calculations of the function and the value of an item in the array. Also it's given a function of what action to do to the two variables. It repeats
going through the array until it reaches the end, then outputs the resulting total from the calculations performed from each item in the array.
*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)