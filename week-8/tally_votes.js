// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Kunal Patel.
// This challenge took me 1.5 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*

Test 1-4:
Iterate over each voter in votes object.
Iterate over each position for each voter.
Tally amount of times string is cast per each position.
Add tally to voteCount object.

Test 5-8:
Iterate over each position in voteCount.
Iterate over each person in each position.
Compare each person to the highestTally var.
Create var for highestTally.
Create var for Winners.
IF person has higher tally count, replace key in Winners array and replace highestTally value with tally count.
ELSE IF person has the same tally count, push both keys into Winners array.
After iterating through each position, add Winners to officers object.

*/


// __________________________________________
// Initial Solution

for (var voter in votes) {
  if (!votes.hasOwnProperty(voter)) continue;
  var voterObj = votes[voter];
  for (var position in voterObj) {
    if (!voterObj.hasOwnProperty(position)) continue;
    var voteCast = voterObj[position];
    if (voteCount[position].hasOwnProperty(voteCast)){
      voteCount[position][voteCast] ++;
    }
    else {
      voteCount[position][voteCast] = 1;
    }
  }
}

// console.log(voteCount);

for (var position in voteCount) {
  if (!voteCount.hasOwnProperty(position)) continue;
  var positionObj = voteCount[position];
  var highestTally = 0;
  var winners = [];

  for (var candidate in positionObj) {
    if (!positionObj.hasOwnProperty(candidate)) continue;
    if (positionObj[candidate] > highestTally){
      highestTally = positionObj[candidate];
      winners = [candidate];
    }
    else if (positionObj[candidate] === highestTally){
      winners.push(candidate);
    }
  }
  officers[position] = String(winners);
}

// console.log(officers);

// __________________________________________
// Refactored Solution

// Didn't find any opportunities to refactor that would improve upon the current code.

// __________________________________________
// Reflection
/*
- What did you learn about iterating over nested objects in JavaScript?

When we first started writing out the code for nested objects we were refering to the key instead of the object associated with that key. That caused quite a bit of confusion. I learned from this that it's really useful to give those variable names a clearly identifiable name because it can get really confusing to remember where you are within the objects.

- Were you able to find useful methods to help you with this?

We didn't find any methods for iterating over nested objects, from researching the topic it seems like the best way is just using the nested for...in loops to drill down into the objects.

- What concepts were solidified in the process of working through this challenge?

I feel like I have a better understanding of accessing nested objects and using the .hasOwnProperty method.



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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)