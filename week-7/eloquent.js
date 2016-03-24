// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number = 5;

number * 10;

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

/*
prompt("What's your favorite food?")

alert("Hey! That's my favorite too!")
*/

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (i = "#"; i.length < 8; i += "#") {
  console.log(i);
}

// Functions

// Complete the `minimum` exercise.

function min(number1, number2) {
  if (number1 < number2)
    return number1;

    return number2;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Victoria",
  age: 28,
  "favorite foods": ["french fries", "pizza", "boba tea"],
  quirk: "Loves boba tea. Like a lot."
}