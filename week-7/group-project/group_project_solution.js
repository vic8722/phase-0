// Release 1 User Stories:

// As a user, I want to be able to provide a list of any amount of whole numbers and be able to call 3 calculations on them. I want accuracy on each of these functions, including decimal places.
// The first (function called "sum") should be able to add up and total the numbers in my list.
// The second (function called "mean") should be able to average the numbers in my list.
// The last (function called "median") should be able to tell me what the middle value is for the numbers in my list. If there are two items in the middle it should tell me the number between those two. (Ex: 5 and 7, middle is 6.)

//
// Release 4 User Story:
// As a user, I want to get the sum of all the numbers in a list.
function sum(list) {

  return list.reduce(function(prevVal, curVal, curIndex, array) {
                return prevVal + curVal;
              });

}

// Release 4 User Story:
// As a user, I want to get the mean (also known as the average)
// of all the numbers in a list.
function mean(list) {
  return sum(list) / list.length;
}

// Note from Person #5 (Buck): I believe the function below, 'median'
// may be broken?  I can't know for sure since, per the instructions,
// I don't have access to the original spec/tests. But I do know that
// the function doesn't always calculate the median.  According to the
// instructions, I'm not fixing it and how it functions currently will
// be reflected in the User Story.

// Release 4 User Story:
// As a user, I want to supply a list of numbers.  If the number of
// numbers in my list is odd, I want to know the length of the list
// divided by two.  If the number of numbers in my list is even,
// I want to know the median of the list.
function median(list) {
  var ordered_list = list.sort(function(a,b) {return a - b;} );
  var midPoint = ordered_list.length / 2;
  if(ordered_list.length % 2 != 0)
    return midPoint;
  else
    return (ordered_list[midPoint - 1] + ordered_list[midPoint]) / 2;
}

// Person 5's (Buck's) Driver Code
var list1 = [0];
var list2 = [1,1,1,1,1,1];
var list3 = [1,2,3,4,5,6];
var list4 = [1500,2000,2500,3000,3500,4000,4500,5000,5500];
var list5 = [1234567890, 89764537277838, 1000000000000000000000];
var list6 = [1,1,1,1,1];

console.log("The sums are:");
console.log(sum(list1));
console.log(sum(list2));
console.log(sum(list3));
console.log(sum(list4));
console.log(sum(list5));
console.log(sum(list6));
console.log("");
console.log("The means are:");
console.log(mean(list1));
console.log(mean(list2));
console.log(mean(list3));
console.log(mean(list4));
console.log(mean(list5));
console.log(mean(list6));
console.log("");
console.log("The medians are:");
console.log(median(list1));
console.log(median(list2));
console.log(median(list3));
console.log(median(list4));
console.log(median(list5));
console.log(median(list6));
//


// Tests Summary:

/*
Well, we did pretty well overall! 8 out of 9 tests passed. The error message for the one that failed was: "ERROR: median should return the median value of all elements in an array with an odd length." Here's the function that has an issue:
*/

function median(list) {
  var ordered_list = list.sort(function(a,b) {return a - b;} );
  var midPoint = ordered_list.length / 2;
  if(ordered_list.length % 2 != 0)
    return midPoint;
  else
    return (ordered_list[midPoint - 1] + ordered_list[midPoint]) / 2;
}
/*
Looks like midpoint is receiving a value that's potentially not an integer (if length is odd say 5, midpoint returns 2.5). Also, even if we did round-down (.floor) this number to the correct index... within our if statement we still needed to reference our ordered list with "ordered_list[midPoint]" and not just return the index.

*/