#hamster program

#hamster name
puts "What is the hamster's name?"
hamsters_name = gets.chomp

#volume level 1 - 10
puts "On a scale of 1 - 10 how noisy is your hamster?"
noise_level = gets.chomp.to_i

#fur color
puts "What color is your hamster's fur?"
fur = gets.chomp

#estimated age
puts "What is the estimated age of the hamster?"
age = gets.chomp.to_i
if age == ""
	age = nil
else
	age = age.to_i
end

#whether the hamster is a good candidate for adoption
puts "Is this hamster a good candidate for adoption? (yes/no)"
adoption = gets.chomp
if adoption == "yes"
	puts "Your hamster's name is #{hamsters_name}. 
	On a scale of 1-10 for noise level, #{hamsters_name} is at a #{noise_level}.
	#{hamsters_name}'s fur color is #{fur} and is #{age} years old. Thank you."
else 
	puts "Sorry #{hamsters_name} is not a good candidate for adoption."
end