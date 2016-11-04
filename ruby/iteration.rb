# Release 0
def here_we_go_again
	name1 = "Ethan"
	name2 = "Kimberly"
	puts "Who is working on this project?"
	yield(name1, name2)
end 

here_we_go_again { |name1, name2| puts "#{name1} and #{name2} are working on this project."  }

# Release 1
# Declare an array
beer_brands = ["Blue Moon", "Corona", "Budweiser"]
# Iterate with .each (will not modify data)
beer_brands.each do |brand|
	puts "#{brand} is my favorite kind of beer!"
end

puts "Original Data:"
p beer_brands
# Iterate with .map! (will modify data)
beer_brands.map! do |brand|
	brand.upcase
end

p beer_brands

# Declare a hash
fruit_colors = {"bananas" => "yellow", "oranges" => "orange", "limes" => "green"}
# Iterate with .each (will not modify data)
fruit_colors.each do |fruit, color|
	puts "#{fruit} are #{color}."
end

p fruit_colors

# Release 2
# Find other array and hash methods that take blocks to accomplish the below:
# Declare an array and a hash
# Do the following for each data structure (aka 8 times)
	# 1. Iterates through items and deletes any that meet a certain condition (.delete_if)
	# 2. Iterates through items and returns any that meet a certain condition
	# 3. Iterates through items and returns any that meet a certain condition
	# 4. Iterates through and deletes items in a data structure until the condition in the block evaluates to false

beer_brands = ["Blue Moon", "Corona", "Budweiser"]
fruit_colors = {"bananas" => "yellow", "oranges" => "orange", "limes" => "green"}


########### DRIVER CODE #############

# Arrays
# beer_brands.delete_if { |brand| brand == "Budweiser"}
# p beer_brands

# beer_brands.keep_if { |brand| brand == "Corona"}
# p beer_brands

# beer_brands.select! { |brand| brand == "Blue Moon"} # need to use bang operator to modify original data
# p beer_brands

# beer_brands.reject! { |brand| brand == "Budweiser"} # need to use bang operator to modify original data
# p beer_brands

# Hashes
# fruit_colors.delete_if { |fruit, color| fruit == "limes"}
# p fruit_colors # deletes both key and value that meets this condition

# fruit_colors.keep_if { |fruit, color| fruit != "oranges"}
# p fruit_colors

# fruit_colors.select! { |fruit, color| color == "yellow"}
# p fruit_colors

# fruit_colors.reject! { |fruit, color| color == "yellow"}
# p fruit_colors


################################################
################################################
########### N O T E   T A K I N G ##############
################################################
################################################


# # # Release 1
# # # Video notes
# # # Iterate through array with .each
# # # .each will not modify an array or hash
# # letters = ["a", "b", "c", "d", "e"]
# # new_letters = []

# # puts "Original data:"
# # p letters
# # p new_letters

# # letters.each do |letter|
# # 	new_letters << letter.next # a => b, b => c, c => d
# # end

# # # Iterate through hash with .each
# # numbers = {1 => "one", 2 => "two", 3 => "three"}

# # numbers.each do |digit, word|
# # 	puts "#{digit} is spelled out as #{word}."
# # end

# # # iterate through the array with .map
# # # .map will modify an array and hash
# # letters = ["a", "b", "c", "d", "e"]

# # puts "Original data:"
# # p letters

# # letters.map!  do |letter|
# # 	puts letter
# # 	letter.next # new value must be at bottom or it might not work
# # end

# # puts "After .map call:"
# # p letters # will print modified array with bang operator


