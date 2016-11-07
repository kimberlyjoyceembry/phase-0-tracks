# 5.6 Mandatory Pairing: Solving Problems with Data Structures
# Worked with Dotun

# Write a search_array method that takes an array of integers and an integer to search for
  # The method should return the index of the item or nil if the integer is not present
  # You cannot use .index

# Add a fibonacci method that takes a number of Fibonacci terms to generate
  # Should return an array of the terms

# Sort an array
  # Bubble sort algorithm
  # Take an array of integers using the bubble sort method
  # Implement your bubble_sort method in Ruby


def search_array(x, y)
	result = nil
	index = 0
	x.each do |z| 
		if z == y 
      result = index
    elsif z != y
      result = nil
		end
		index += 1
	end
	return result
end	

x = [88, 65, 92, 75]
search_array(x, 88)


def fibonacci(num)
  fibonacci_sequence = [0,1]
  until fibonacci_sequence.length >= num
    fibonacci_sequence << fibonacci_sequence[-1] + fibonacci_sequence[-2]
  end
  fibonacci_sequence
end 

fibonacci(100)

def bubble_sort(array)
  sorted = false
  until sorted 
    sorted = true
    (array.count - 1).times do |i| 
      if array[i] > array[i + 1]   
        array[i], array[i + 1] = array[i + 1], array[i] 
        sorted = false 
      end
    end
  end

  array
end

x = [25, 13, 19, 288, 26]
bubble_sort(x)