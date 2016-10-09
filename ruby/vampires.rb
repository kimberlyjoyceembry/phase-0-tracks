# 4.4 Solo Challenge: Control Flow Practice

puts "How many employees need to be processed?"
employee_number = gets.chomp.to_i
until employee_number == 0

	puts "Hello, what is your name?"
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.chomp.to_i
	
	puts "What year were you born?"
	birth_year = gets.chomp.to_i
	current_year = 2016
	if (current_year - birth_year) == age
		valid_age = true
	else
		valid_age = false
	end

	puts "Our company serves garlic bread. Should we order some for you? (yes/no)"
	garlic_bread = gets.chomp
	if garlic_bread == "yes"
		order_garlic_bread = true
	else 
		order_garlic_bread = false
	end


	puts "Would you like to enroll in the company's health insurance? (yes/no)"
	health_insurance = gets.chomp
	if health_insurance == "yes"
		enroll_in_health_insurance = true
	else 
		enroll_in_health_insurance = false
	end

	puts "Moving onto allergies. Please answer with 'yes' to confirm."
	allergies = gets.chomp
	if allergies == "yes"
		list_allergies = true
		while list_allergies
		puts "Please name your allergies, one at time. When finished or if not applicable, type 'done.'"
		allergy = gets.chomp
			if allergy == "sunshine"
				results = "Probably a vampire."
				list_allergies = false
				sunshine_allergy = true
			elsif allergy == "done"
				list_allergies = false
			end
		end
	end

	if sunshine_allergy != true
		results = String.new
		if valid_age && (order_garlic_bread || enroll_in_health_insurance)
			results = "Probably not a vampire."
		elsif !valid_age && (order_garlic_bread || enroll_in_health_insurance)
			results = "Probably a vampire."
		end
		if !valid_age && !(order_garlic_bread && enroll_in_health_insurance)
			results = "Almost certainly a vampire."
		end
		if name == "Drake Cula" || name == "Tu Fang"
			results = "Definitely a vampire"
		end
		if results == ""
			results = "Results inconclusive"
		end
	end
	puts results
	employee_number -= 1
	sunshine_allergy = false
end	
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."