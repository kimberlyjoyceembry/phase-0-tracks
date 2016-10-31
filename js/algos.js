// 7.3 SOLO CHALLENGE: Algorithm Practice

// RELEASE 0: Find the Longest Phrase
// Write a function that takes an array of words/phrases
// Iterate through the array to find the longest word 
// Return the word/phase with the longest length
function phrase(word_array) {
	var letters = 0
	var longest_word = null;
	for (var i = 0; i < word_array.length; i++) {
		if (letters < word_array[i].length) {
			letters = word_array[i].length;
			longest_word = word_array[i];
		}
	}
	return longest_word
}

// Driver Code
console.log(phrase(["Mary", "had", "a", "little", "lamb"]));
console.log(phrase(["The", "itsy", "bitsy", "spider"]));
console.log(phrase(["I", "wanna", "make", "you", "smile"]))

// RELEASE 1: Find a Key-Value Match
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair
	// Group functions at the top, testing at the bottom 
// Iterate through the first object by comparing it to the second object
// Function should return true with a match, and false with no matches
// Add driver code that teset both outcomes of your function 
function compare_two_objects(object_1, object_2) {
	var match = false
	for (var key in object_1) {
		for (var key_2 in object_2) {
			if (key == key_2) {
				if (object_1[key] == object_2[key_2]) {
					match = true;
				}
			}
		}
	}
	return match;
}

// Driver Code
console.log(compare_two_objects({month: "January", days: 31}, {month: "February", days: 28}));
console.log(compare_two_objects({month: "March", days: 31}, {month: "April", days: 30}));
console.log(compare_two_objects({month: "June", days: 30}, {month: "July", days: 30}))

// RELEASE 2: Generate Random Test Data
// Write a function that takes an integer for length
// Create an empty array
// Return the array with strings of the given length
	// If you ran the function with an argument of 3, we would get an array of 3 "words" back
	// The words should be of randomly varying length
	// With a minimum of one number and a maximum of 10 letters
		// To generate random number use dot random
		// Create a string of variable for the alphabet for use as a key for letters
// Add driver code that does the follow 10 times:
	// Generates an array
	// Prints the array
	// Feed the array to your "longest word" function
	// Prints the result
function random_data(integer) {
	var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
	var word = ""
	var words = []
	var x = 0
	while (x < integer){
		for(var i = 0; i <  Math.floor((Math.random() * 10) + 1); i++){
			word += (alphabet[Math.floor((Math.random() * alphabet.length))]);
		}
		words.push(word);
		word = ""
		x++
    }
 	return words
}

// Driver Code
console.log(random_data(10));
var random_data_array = random_data(10);
console.log(phrase(random_data_array))

