# Guessing game class
#   Method to set an array of characters on initialization
#   Method to set an array of "_" to the length of the string the user enters
#   Method to iterate through the user entered array and compare to any letters guessed
#     Replace the "_" array elements with correctly guessed letters
#   Method to store guesses in an array and only increase guess counter if the guess is not alrady in the array
#   Method to print the "_" array progress to the user

class Game
	attr_accessor :guess, :guess_number, :game_over, :letters_guessed
	
	def initialize(word)
	@right_word = word.downcase
	@word_array = @right_word.split("")
	@guessed_array = Array.new(word.length) {false}
	@guess_number = @word_array.length
	@guess = 0
	@game_over = false
	@zero_left = false
	@letters_guessed = []
	@right_letters = []
	end

	def letter_guess(n)
	@letters_guessed.push(n)
	@guess+=1
		for i in 0...@word_array.length
			if n == @word_array[i]
			@guessed_array[i] = true
			end
		end
		@guessed_array
	end
	
	def status
	current_status = []
	@guessed_array.each_with_index do |x,i|
			if x == false
				current_status.push("_ ")
			else
				current_status.push(@word_array[i])
			end
		end
	current_status
	end
	
	def win
	win = false
		if (@guessed_array.include? false) == false
		@game_over = true
		puts "Congratulations! You are a word guessing divinity. The word was #{@right_word}."
		won = true
		end
		win
	end
end

puts "Hello User 1. Please enter the word to be guessed today."
word = gets.chomp
game = Game.new(word)

	while game.guess < game.guess_number && game.game_over == false
		puts("You have made #{game.guess}/#{game.guess_number} guesses")
		puts("User 2, please enter a letter.")
		
		p game.status.join("")

		guess = gets.chomp
		while game.letters_guessed.include? guess
			puts("You already guessed the letter #{guess}! Please enter a different letter.")
			guess = gets.chomp
		end
		game.letter_guess(guess)
		
		game.win
	end
	if game.game_over == false
		puts "Sorry, you lose. Maybe you should read more."
	end