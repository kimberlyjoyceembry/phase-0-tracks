# 6.2 Mandatory Pairing: Instance Methods
# Worked with Dotun
# Release 0 and Release 1
# Objectives of Releases:
	# Initialize an instance of Puppy
	# Add a speak method that takes an integer, and then prints "Woof!" that many times
	# Add a roll_method that just prints "*rolls over*".
	# Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer
	# Add one more trick
	# Update driver code to demonstrate that all of these methods work as expected

class Puppy

 def fetch(toy)
   puts "I brought back the #{toy}!" 
   toy 
 end

 def speak(integer)
      integer.times do
      	puts "Woof!"
      end
 end

 def roll_over()
     puts "*rolls over*"     
 end

 def dog_years(human_years)
    dog_years = human_years.to_i * 7
    p dog_years.to_i
 end

 def play_dead
     puts "*plays dead*"
 end

 def initialize
     puts "Initializing new puppy instance ..."  
 end

end

Obie = Puppy.new
Obie.fetch("newspaper")
Obie.speak(4)
Obie.roll_over()
Obie.dog_years(2)
Obie.play_dead

# Release 2: Write Your Own Class, and Experiment!
# Release Objectives:
	# Design and implement your own class
	# Should have an initialize mehod and at least two other instance methods
	# Then do the following:
		# Use a loop to make 50 instances of your class
		# Modify your loop so that it stores all of the instances in a data structure
		# Iterate over the data structure using .each and call the instance methods you wrote on each instance 
class Snake
	def initialize()
		puts "Fetching you a snake."
	end

	def what_to_eat(animal)
    	puts " Time to eat a #{animal}!"
	end

	def slither_time(integer)
    	puts "Your snake has been slithering for #{integer} minutes."
	end
end

Oberyn = Snake.new
# Oberyn.what_to_eat("mouse")
# Oberyn.slither_time(60)

Snakes = Array.new

i = 0
while i < 50
	Snakes[i] = Snake.new
	p Snakes
	i += 1
end

Snakes.each do |x|
	x.what_to_eat("mouse")
	x.slither_time(60)
end