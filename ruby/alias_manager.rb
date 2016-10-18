# 5.5 Solo Challenge: Manipulating Strings with Iteration

# RELEASE 0: Attempt a Tricky Algorithm
# Release Objectives:
# Write a method that takes a spy's real name and creates a fake name
# 1. Swapping the first and last names
# 2. Changing all of the vowels and the consonants to the subsequent vowel and consonant
def create_alias(name)
  name.downcase!
  name_letters = name.split('')
  name_letters.map! do |letter|
    if letter == " "
      letter = letter
    elsif letter == "a" 
      letter = "e"
    elsif letter == "e"
      letter = "i"
    elsif letter == "i"
      letter = "o"
    elsif letter == "o"
      letter = "u"
    elsif letter == "u"
      letter = "a"
    elsif letter == "d"
      letter = "f"
    elsif letter == "h"
      letter = "j"
    elsif letter == "n"
      letter = "p"
    elsif letter == "t"
      letter = "v"
    elsif letter == "z"
      letter = "b"
    else
      letter.next!
    end
  end
  fake_name = name_letters.join.split(' ')
  fake_name.reverse!
  fake_name.map! {|name| name.capitalize!}
  fake_name.insert(1, " ")
  fake_name = fake_name.join  
end

# RELEASE 1 and 2: Provide a User Interface, Store the Aliases
# Release Objectives:
# Provide a user interface that lets a user enter a name and get a fake name back
# Let the user do this repeatedly until they type "quit"
# Use a data structure to store the fake names as they are entered
alias_database = []

puts "Hello agent! What is your first and last name?"
agent_name = gets.chomp
until agent_name.downcase == "quit"
  alias_database << {real_name: agent_name, agent_alias: create_alias(agent_name)}
  puts "Please enter a first and last name for another agent or enter 'quit' if finished."
  agent_name = gets.chomp
end
# When the user exits the program, iterate through the data structure
# Print all of the data the user entered in sentence form
alias_database.each do |agent|
  puts "The identity of agent #{agent[:agent_alias]} is #{agent[:real_name]}."
end

puts "This information will now self destruct."
puts "Goodbye."