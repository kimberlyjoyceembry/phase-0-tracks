// 7.3 Solo Challenge: Algorithm Practice

// Release 0: Find the Longest Phrase
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
