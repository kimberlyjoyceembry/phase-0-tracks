# Release 0
def challenge53
	name1 = "Nick"
	name2 = "Kimberly
	puts "Who is working on this project?""
	yield
end 

challenge53 { |name 1, name 2| puts "#{name1} and #{name2} are working on this project."  }


# Release 1 Video 1 
letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters
p new_letters

# iterate through the array with .each
# .each is good for looping through and printing, but usually not best for modifying an array
# the best method for modifiy an array is .map
letters.each do |letter|
	new_letters << letter.next
end


puts "After .each call:"
p letters
p new_letters

####################

numbers = {1 => 'one', 2 => 'two'. 3 =>'three'}

# iterate through the hash with .each

numbers.each do |digit, word|
	puts "#{digit} is spelled out as #{word}"
end


# Release 1 Video 2 .map and .map!
letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

# iterate through the array with .map
letters.map do |letter|
	puts letter
	letter.next
	"Hi!"
end

puts "After .map call:"
p letters


