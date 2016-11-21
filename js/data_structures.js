// 7.2 Mandatory Pairing: Data Structures
// Worked with Dotun

// Release 0: Work with Arrays
// Declare two separate arrays:
	// An array of four colors
	// An array of four names 
// Write additional code to another name and another color

var color_array = ["brown", "black", "white", "green"]
var name_array = ["Bob", "Sam", "John", "Tim"]

color_array.push("purple")
console.log("Color Array:")
console.log(color_array)
name_array.push("Nick")
console.log("Name Array:")
console.log(name_array)

// Release 1: Build an Object
// Add code that will use your two arrays to create an object
	// Keys should be horse names, values should be colors
var horse = {};

for (var i = 0; i < name_array.length; i++) {
  horse[name_array[i]] = color_array[i];
}
console.log("Horsie names and horsie colors")
console.log(horse)

// Release 2: Build Many Objects Using a Constructur
// Write a constructor function for a car
// Give it a few different properties of various data types
// Include at least one function
// Demonstrate that your function works by creating a few cars with it


// Constructor Function
function Car(make, color, year) {
	this.make = make; 
	this.color = color; 
	this.year = year;
	this.alarm = function(){console.log("Beep!"); };
}

console.log("Making new car...")
var car1 = new Car("Porsche", "Red", 2016);
console.log(car1.make);
console.log(car1.color);
console.log(car1.year);
car1.alarm();
console.log("Car complete!")
console.log("-----")

console.log("Making new car...")
var car2 = new Car("Tesla", "Black", 2017);
console.log(car2.make);
console.log(car2.color);
console.log(car2.year)
car2.alarm();
console.log("Car complete!")
console.log("-----");

console.log("Making new car...")
var car3 = new Car("BMW", "White", 2016);
console.log(car3.make);
console.log(car3.color);
console.log(car3.year);
car3.alarm();
console.log("Car complete!")