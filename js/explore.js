// RELEASE 4: Write a JavaScript program
// function that takes a string as a parameter and reverses the string 
// add driver code that calls the function to reverse a string of your choice
	// use keyword reverse
// store the result of the function in a variable
	// set 
// add driver code to print the variable if it meets a condition
	// if one is equals to one

function reverse(str) {
	var reversed_string = ""
	for (var i = str.length-1; i >= 0; i--) {
		reversed_string += (str[i]);
	}
	return(reversed_string)
}

var conditional_reverse = reverse("meow");

if (1 == 1) {
	console.log(conditional_reverse)
};