/*
Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)
*/

/*
Pseudo-code:
Inputs: [Add Item] - item (string) and quantity (number), [Remove Item] - item (string), [Update Item] - item (string) and quantity (number), [Print List] - none.
Outputs: object literal, [Remove Item] - object literal, [Update Item] - object literal, [Print List] - console output of the items in the object literal.

-Procedure-
Create a constructor function groceryList
give it a property "list" with an empty object literal;
give it a property "addItem" as a function that takes in two arguments, item and quantity.
  have it check if the item already exists as a key in the object "list"
  if so, have it output "Item already added"
  otherwise, have it a new key as the item and a new value as the quantity
give it a property "removeItem" as a function that takes in one argument, item.
  have it check if the item already exists as a key in the object "list"
  if so, have it delete the key from the list
  otherwise, have it output "Item not on list"
give it a property "updateItem" as a function that takes in two arguments, item and quantity.
  have it check if the item already exists as a key in the object "list"
  if so, have it find the key that matches item and enter the new quantity for the value
  otherwise, have it output "Item not on list"
give it a property "printList" as a function that takes no arguments
  have it output "Grocery List" to the display
  have it output a line to the display
  have it go through each item in the "list" object literal and first output the key, then space over and output the value assosicated with the key.



*/

function groceryList() {
    this.list = {};
    this.addItem = function(item, quantity) {
        if (this.list.hasOwnProperty(item)) {
          console.log("Already have " + item + "on the list.")
        }
        else {
          this.list[item] = quantity;
        }
    }
    this.removeItem = function(item) {
        if (this.list.hasOwnProperty(item)) {
          delete this.list[item];
        }
        else {
          console.log(item + " is not on the list.")
        }
    }
    this.updateItem = function(item, quantity) {
        if (this.list.hasOwnProperty(item)) {
          this.list[item] = quantity;
        }
        else {
          console.log(item + " is not on the list.")
        }
    }
    this.printList = function() {
      console.log("Grocery List");
      console.log("-".repeat(20));
      for (var item in this.list) {
        var spaceString = " ".repeat(20 - item.length);
      console.log(item + spaceString + this.list[item])

    }

    }


}

var newList = new groceryList();
newList.addItem("apples", 5);
newList.updateItem("oranges",3);
newList.addItem("oranges", 2);
newList.removeItem("bananas");
newList.addItem("bananas", 3);
newList.addItem("grapes", 1);
newList.updateItem("oranges",3);
newList.removeItem("grapes");

newList.printList();

/*

Reflection:

- What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

I reviewed using constructors and objects.


- What was the most difficult part of this challenge?

I didn't have a particularly hard time on any part of this challenge.


- Did an array or object make more sense to use and why?

It made more sense to use an object, the order of the list isn't particularly important and it's much easier to look up the items on the list as the keys than to have to search through an array to find the item that matches.


*/