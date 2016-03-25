 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Score as many points as possible, collect 5-of-a-kind of each dice.
// Goals: In each turn get as many matching dice for each category.
// Characters: Player1 and Player2 (who may be computer if time allows)
// Objects: Player1's score, Player 2's score.
// Functions: roll, keep, pass, score

// Pseudocode

/*
Define Player 1's scorecard and set each section to an empty array and 0 points.
Define Player 1's scorecard and set each section to an empty array and 0 points.

Define a roll function to store an array for each dice rolled.

Define a keep function to pass the dice values that the user decides to keep.

Define a pass function that allows the current turn to end

Define a score function that stores the kept dice in the correct location in the Players scorecard.

*/

// Initial Code

var scorecard1 = {ones:   {dice: [],points: 0, value: 1},
twos:   {dice: [],points: 0, value: 2},
threes: {dice: [],points: 0, value: 3},
fours:  {dice: [],points: 0, value: 4},
fives:  {dice: [],points: 0, value: 5},
sixes:  {dice: [],points: 0, value: 6}};

var scorecard2 = {ones:   {dice: [],points: 0, value: 1},
twos:   {dice: [],points: 0, value: 2},
threes: {dice: [],points: 0, value: 3},
fours:  {dice: [],points: 0, value: 4},
fives:  {dice: [],points: 0, value: 5},
sixes:  {dice: [],points: 0, value: 6}};

var current_dice = [0,0,0,0,0];

var kept_dice = ["n","n","n","n","n"];

var scorecard = "scorecard1";

var player = "Player 1";

var turn = 1;

function roll() {
    if (turn > 3){
    console.log("Sorry, time to score!")
    menu();
  }

  for (var i = 0; i < 5; i++) {
    if (kept_dice[i] === "n") {
      current_dice[i] = Math.floor(Math.random() * 6) + 1;
    };
  };
  kept_dice = ["n","n","n","n","n"];
  turn++;
  menu();
};

function keep(num1,num2,num3,num4,num5,num6) {
  if (turn > 3){
    console.log("Sorry, time to score!")
    menu();
  }
  if (num1 === "none") {
//     figure out what to do when they don't want to keep any, re-roll
};

for (var i = 0; i < arguments.length; i++) {
  kept_dice[arguments[i] - 1] = "y";
};
roll();
};


function score(score_location){
  if (eval(scorecard)[score_location]["dice"].length !== 0) {
    console.log("Already scored. Try another category.")
    menu();
  };
  eval(scorecard)[score_location]["dice"] = current_dice;

  for (var i = 0; i < 5; i++) {
    if (current_dice[i] === eval(scorecard)[score_location]["value"]) {
      eval(scorecard)[score_location]["points"] += eval(scorecard)[score_location]["value"];
    };
  };
  switchPlayer();
  menu();
};

function switchPlayer(){
  if (scorecard === "scorecard1"){
    scorecard = "scorecard2";
    player = "Player 2";
  }
  else {
    scorecard = "scorecard1";
    player = "Player 1";
  };
  turn = 1;
};

function showScoreCard(){
console.log("Score Card for " + player + ":");
console.log("----------------------");
var totalScore = 0
for (var prop in eval(scorecard)) {
      if( eval(scorecard).hasOwnProperty( prop ) ) {
        console.log(prop + " - " + eval(scorecard)[prop]["points"] + " points");
        totalScore += eval(scorecard)[prop]["points"]
      };
    }
console.log("----------------------");
console.log("Total Score for " + player + ": " + totalScore)

};

function help(){
console.log("Commands:\n" +
      "Roll: Enter 'roll()'.\n" +
      "Keep: Enter 'keep(#,#,#...)' where # is the position of each number you want to keep.\n" +
      "Score: Enter 'score(<number>)' where you want to put your points. ('ones', 'twos', 'threes', 'fours', 'fives', or 'sixes')\n" +
      "ScoreCard: Enter 'showScoreCard()'.\n");
};

function menu(){
var counter = 0;

  for (var prop in eval(scorecard)) {
    if(eval(scorecard).hasOwnProperty( prop ) ) {
      if(eval(scorecard)[prop]["dice"].length !== 0){
        counter++;
      };
    };

  };

  if (counter === 6){
    gameOver();
  }
  else {
    console.log("It is " + player + "'s turn.")

    if (turn > 3) {
      finishedTurn();
    }
    else if (turn === 1) {
      firstTurn();
    }
    else {
      otherTurn();
    };
  };

  function gameOver(){
    console.log("Game Over! Good game!");
    scorecard = "scorecard1"
    showScoreCard();
    switchPlayer();
    showScoreCard();


      };

  function finishedTurn() {
    console.log("Time to score!");
    console.log("Your current dice: " + current_dice)
  };

  function firstTurn() {
    console.log("Turn number: " + turn)
  };

  function otherTurn() {
    console.log("Turn number: " + turn)
    console.log("Your current dice: " + current_dice)
  };

};

console.log("Time to play Yahtzee! Enter 'help()' at anytime if you need to know what to do.")
menu();

// Refactored Code

/*
So... I worked on the code for a long while... and I forgot to save my code from when I got to my first working solution and when I started refactoring it... whoops.

The things that I changed were in the last section of the "menu". I initially had it all written out in one code block that was very messy, when I refactored I broke it out into separate functions, added the "showScoreCard" method to call to etc.
*/

// Reflection
/*
- What was the most difficult part of this challenge?

It was definitely difficult to know when to stop. I created a "Yahtzee" game, and initially was kind of thinking that it would be a game you could play against the computer. But once I got into coding it became cleear that it would be plenty of work on it's own to just get a game that you could play against another person. Adding in the logic for the computer would be a lot more work.


- What did you learn about creating objects and functions that interact with one another?

I had some interaction issues occasionally when referencing between different functions. I learned that you need to be conscious of where your variables are defined and are being updated.

- Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I learned about the eval() built-in method. It allows you to take a string value and have it evaluated. In my program I used it to evaluate a variable 'scorecard' that contained a string that refered to the name of the two objects I wanted to modify.

- How can you access and manipulate properties of objects?

You can reference and change properties in objects similar to how you access arrays. objectName.propertyName or objectName["propertyName"]. To modify them you just put an equal sign after and update with the new values. If an object's property contains another object you can subsequently reference within that object the same way... objectName.propertyName1.propertyName2 or objectName["propertyName1"]["propertyName2"].

*/