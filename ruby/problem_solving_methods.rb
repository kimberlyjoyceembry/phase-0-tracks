# 5.6 Mandatory Pairing: Solving Problems with Data Structures
# Worked with Dotun


# RELEASE 1
# Fibonacci Method

# Method Objectives:
# Takes a number of Fibonacci terms to generate and returns an array of the terms
x = [88, 65, 92, 75] #The array being used. 

def search_array(x, y) #The name of the method is search_array and the parameters are x & y. 
	result = nil
	index = 0 #Sets the index value to 0 and gives the other items in the array an index. 
	x.each do |z| #The method begins to iterate through the array. 
		if z == y #If the array is equal to y which is the value that we enter when we call the method, 
			result = index #results will now equal the index of that number, which is possible since we assigned the index values by making index = 0. 
		end
		index += 1 #The method goes through the array with a + 1 increment. 
	end
	return result
end	
p search_array(x, 88) #Here is where we call the method with an input and the result will be 0 since 88 occupies the 0 index. 

#Fibonacci Terms
def fibonacci(n)
   n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end
puts fibonacci(10)


# RELEASE 2: Sort an Array

# Release Objectives:
# Choose a simple sorting algorithm to learn about. We chose the bubble sort algorithm.
# Take an array of integers and use the bubbe sorting alogorithm.
# Implement the sorting method in Ruby

#Bubble Sort Algorithm
def bubble_sort(array) # Defining our bubble sort method and setting the arguement to the parameter array.
  sorted = false # We start off by setting sorted to false. 
  until sorted  #until sorted becomes true, we are going to run the code in lines 30-40. 
    sorted = true
    (array.count - 1).times do |i| # we are counting the number of separate values in the array and subtracting that number by 1.. 
    								# Then the .times method is used on that number to repeat the code on lines 33 and 34 
    								# that amount of times
      if array[i] > array[i + 1]   
        array[i], array[i + 1] = array[i + 1], array[i] 
        sorted = false  # we set sorted to true and false over and over again in order to make sure that the whole array is sorted. 
      end
    end
  end

  array
end

x = [25, 13, 19, 288, 26]
bubble_sort(x)