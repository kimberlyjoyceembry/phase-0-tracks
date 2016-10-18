# Worked with Nick Devlin

# Release 0
def challenge53
	name1 = "Nick"
	name2 = "Kimberly"
	puts "Who is working on this project?"
	yield
end 

challenge53 { |name1, name2| puts "#{name1} and #{name2} are working on this project."  }


ceo = {
	"Twitter" => "Jack Dorsey", 
	"Slack" => "Stewart Butterfield",
	"SpaceX" => "Elon Musk"}

ceo.each do |company, executive|
	puts "#{executive} is the CEO of #{company}."
end

ceo = ["Jack Dorsey", "Stewart Butterfield", "Elon Musk"]

puts "Original data:"
p ceo

ceo.map! do |executive|
	executive.next 
end

puts "After .map call:"
p ceo

# RELEASE 2: USE THE DOCUMENTATION

# Array and method objectives:
# A method that iterates through the items, deleting any that meet a certain condition
# A method that filters a data structure for only items that do satisfy a certain condition 
# A different method that filters a data structure for only items satisfying a certain condition
# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops

# Array Examples
north_america = ["usa", "mexico", "canada", "dominican republic"]

p north_america.delete_if {|country| country.length < 4 }

p north_america.select {|country| country.length > 8 }

p north_america.reject {|country| country.length != 6 }

p north_america.drop_while {|country| country.length < 3 }

# Hash Examples
state_caps = {
	illinois: "springfield",
	california: "sacramento",
	texas: "austin",
	iowa: "des_moines"
}

p state_caps.delete_if {|state, city| state.length == city.length }

p state_caps.select {|state, city| state.length < city.length }

p state_caps.reject {|state, city| city.length != 10 }

