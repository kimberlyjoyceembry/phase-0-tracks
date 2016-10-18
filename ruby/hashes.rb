# Gathering Client Information for Interior Designers

# This program should do the following:
# Prompt the designer/user for information
# Convert any user input to the appropriate data type
# Print the hash back out to the screen after the user has answered all of the questions
# Give the user the opportunity to update a key 
# Print the latest version of the hash, and exit the program

# Begin Program

# Gather user input 
client_info = Hash.new

puts "What is the client's name?"
client_info[:name] = gets.chomp
	
puts "How old is the client?"
client_info[:age] = gets.chomp.to_i
	
puts "How many children does the client have?"
client_info[:children] = gets.chomp.to_i
	
puts "What is the client's desired decor theme?"
client_info[:theme] = gets.chomp
	
# return the client's information after the questions have been answered
p client_info

# Give the user the opportunity to fix any mistakes or update information
puts "Please review the information you've provided above. If you would like to make any changes, please type what information you would like to update (name, age, children, or theme)  or 'exit' to end the program."
update_info = gets.chomp.downcase
case update_info
	when "name"
		puts "What is the client's name?"
		client_info[:name] = gets.chomp
	when "age"
		puts "How old is the client?"
		client_info[:age] = gets.chomp.to_i
	when "children"
		puts "How many children does the client have?"
		client_info[:children] = gets.chomp.to_i
	when "theme"
		puts "What is the client's desired decor theme?"
		client_info[:theme] = gets.chomp
	when "exit"
end

p client_info