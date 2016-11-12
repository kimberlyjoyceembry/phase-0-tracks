# 6.3 ATTRIBUTES
# Release 0: Bring Santa to Life ---------------------------

# Release 1: Give Santa Attributes for Christmas -----------
# Update Santa class with gender, ethnicity, reinder_ranking, and age

# Release 2: Change an Attribute with a Method
# Add three attribute-changing methods to Santa class
	# celebrate_birthday should age Santa by one year
	# get_mad_at takes's a reindeer's name as an argument, and moves that reinder to last place
	# @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition
	# two "getter" methods
		# method age should return @age
		# method ethnicity should return @ethnicity

# Release 3: Refactor with attr_reader and attr_accessor

# Release 4: Build Many, Many Santas
	# Use arrays to randomly select Santa's gender and ethnictiy
	# Set Santa's age to a random number between 0 and 140
	# Print out the attributes of Santa using instance methods

class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity, age = 0)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reinder_ranking << name

	# getter methods (make attributes readable)
	def age
		@age
	end

	def ethnictiy
		@ethnicity
	end

	# setter methods (make attributes writable)
	def gender=(new_gender)
		@gender = new_gender
	end
end

# Test Code
# santa = Santa.new()
# santa.speak
# santa.eat_milk_and_cookies("snickerdoodle")

santa_array = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

50.times do
	random_gender = example_genders.sample
	random_ethnicity = example_ethnicities.sample
	santa_array << Santa.new(random_gender, random_ethnicity, rand(0..140))
	end

santa_array.each do |x|
	puts x.ethnicity
	puts x.gender
	puts x.age
	end
end