# GPS 2.2 RUBY
# Create an Electronic Grocery List
# Worked with Brian Schleiffer

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a method that contains the string of items, change/convert the list of items into a hash
  # set default quantity = 1
  # print the list to the console by printing out the hash
# output: hash data 
def grocery_list(items)
  new_grocery_list = Hash.new(0)
  each_item = items.split(" ")
  each_item.each do |item|
    new_grocery_list[item] = 1
  end
  return new_grocery_list
end
  
groceries = grocery_list("wine cheese salami")


# Method to add an item to a list

# input: item name and optional quantity
# steps: create a method that adds an item and its quantity to our existing grocery list
# output: returning updated grocery list along with their corresponding quantities in a hash

# Comments/Suggestions from Bane
# args = {shopping_list: groceries, item: item, quantity: 1}
# if args[quantity]
#  quantity = args[quantity]
#  else
#  1
# end

def add_items(shopping_list, item, quantity = 1) # makes the quantity optional
  shopping_list[item] = quantity
end

add_items(groceries, "lemonade", 2)
add_items(groceries, "tomatoes", 3)
add_items(groceries, "onions", 1)
add_items(groceries, "ice cream", 4)
add_items(groceries, "ice cream sandwiches")


# Method to remove an item from the list
# input: item name that will be removed from the grocery list 
# steps: create a method that removes items from our grocery list
# output: updated grocery list using a hash

def remove_items(shopping_list, item)
  shopping_list.delete(item)
end

remove_items(groceries, "lemonade")

# Method to update the quantity of an item
# input: the item to be updated and its new value
# steps: create a method that changes the current quantity to the desired quantity 
# output: updated quantity

def update_quantity(shopping_list, item, quantity)
  shopping_list[item] = quantity
end

update_quantity(groceries, "ice cream", 1)

# Method to print a list and make it look pretty
# input: a method that gathers all data into one grocery list
# steps: iterate over each item in our list and print it out nicely! 
# output: on separated lines with the item and its corresponding quantity

def print_list(shopping_list)
  puts shopping_list.each {|item, quantity| puts "#{item}: #{quantity}"}
end

print_list(groceries)

# RELEASE 4: Reflect
# What did you learn about pseudocode from working on this challenge?
  # Pseudocode is insanely helpful! It keeps you on track with your ideas but also the purpose of the code.
# What are the tradoffs of using arrays and hashes for this challenge?
  # Whilst maybe not the cleanest way or most direct way to achieve the desired results, it helped thinking through each step and gain better understanding of the logic behind the code
# What kind of things can you pass into methods as arguments?
  # It seems just about anything, from strings to integers to variables.
# How can you pass iformation between methods?
  # As parameters (thanks Bane!)
# What concepts were solidified in this challenge, and what concepts are still confusing?
  # Oh goodness, hashes FOR SURE. The repetitive nature of this code really helped me with that. And also repeated implementation of the methods we created. 

