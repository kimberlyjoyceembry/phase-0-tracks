# 6.4 Modules

module Shout
 	def yell_angrily(words)
		words + "!!!" + " :("
 	end

 	def yelling_happily(words)
 		words + "!!!" + " :)"
 	end
end

class Woman
	include Shout
	def initialize(name, mood)
		@name = name
		@mood = mood
	end

	def name
		@name
	end
end

class Man
	include Shout
	def initialize(name, mood)
		@name = name
		@mood = mood
	end

	def name
		@name
	end
end

woman = Woman.new("Kimberly", "excited")
man = Man.new("Anthony", "hungry")

puts woman.yelling_happily("I am so excited")
puts woman.yell_angrily("Great #{man.name}, I'm bleeding")
puts man.yelling_happily("Well #{woman.name}, I never bleed")
puts man.yell_angrily("Hmph I'm tired")


# puts Shout.yell_angrily("WTF is going on???")
# puts Shout.yelling_happily("This is the best day ever")

