
//Your previous Ruby content is preserved below:

// JavaScript Olympics

// I paired with Shin Wang on this challenge.

// This challenge took me 1 hour.


// Bulk Up

var athlete1 = {name: "Tom", event: "100 meter dash"};
var athlete2 = {name: "Bob", event: "200 meter dash"};

var athleteArray = [athlete1, athlete2];

function addWin(array) {
  for (var i in array) {
    array[i].win = function() {
      console.log(this.name + " won the " + this.event + ".");
    };
  }

};

// addWin(athleteArray);

// console.log(athlete1);
// console.log(athlete2);

// athlete1.win();
// athlete2.win();



// Jumble your words

function reverseString(stringInput){
  var stringArray = stringInput.split("").reverse().join("");
  return stringArray;
}


// console.log(reverseString("heythere"))

// 2,4,6,8
function is_even(array){
  function evenNumber(anArray){
    return anArray % 2 == 0;
  }

  var returnedEvens = array.filter(evenNumber);
  return returnedEvens;
}

// console.log(is_even([1,2,3,4,5,6]));
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


// "We built this city"

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

/*
- What JavaScript knowledge did you solidify in this challenge?
  Using "this" hadn't really been something I'd spent much time thinking about before this challenge. Until we had to create a function using it I don't think I really understood it as well as I thought. I think it will sink in even more the more I am able to use it, but it definitely makes more sense now, that it needs to be within a function that's called within an object.

- What are constructor functions?

  Constructor functions are prototype objects that are used to create new instances of objects with the same parameters.

- How are constructors different from Ruby classes (in your research)?

  From what I've read, Ruby classes and constructors are essentially the same. One difference is that in JavaScript constructors, the methods of a prototype are the methods of the objects that the prototype defines. In Ruby Classes, the methods of instances of the class aren't methods of the class, and classes that are created come pre-loaded with a bunch of methods.

*/