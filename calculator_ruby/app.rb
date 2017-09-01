	puts "(b)asic, (a)dvanced,(B)mi"
	options = gets.chomp

	def imperial
		puts "enter weight in pounds"
		weight = gets.chomp.to_f
		puts " enter height in inches"
		height = gets.chomp.to_f
		puts " Your BMI is #{(weight*703)/(height**2)} "
	end
	
	def metric
		puts "enter weight in kilograms"
		weight = gets.chomp.to_f
		puts " enter height in meters"
		height = gets.chomp.to_f
		puts " Your BMI is #{(weight)/(height**2)} "
	end
	
	def body_mass_index
		puts " (m)etric or (i)mperial ?"
		choice = gets.chomp
		if choice == "m"
			metric
		else imperial
		end
	end

	
	def square_root
		puts "Enter number to square root  "
		num_1 = gets.chomp.to_f
		 puts "Your answer is #{Math.sqrt(num_1)}"
	end
	def power
		puts "Enter Number"
		num_1 = gets.chomp.to_f
	    puts "To the power of"
	    num_2 = gets.chomp.to_f
	    puts "Your answer is #{num_1**num_2}"
	end

	def division 
		numbers = get_input
		puts "Your answer is #{numbers[0]/numbers[1]}"
	end
	
	def multiplication
	    puts "first number?"
	    num_1 = gets.chomp.to_f
	    puts "second number >"
	    num_2 = gets.chomp.to_f
	    puts "Your answer is #{num_1*num_2}"
	end


	def subtraction
	    puts "first number?"
	    num_1 = gets.chomp.to_f
	    puts "second number"
	    num_2 = gets.chomp.to_f
	    puts "Your answer is #{num_1-num_2}"
	end

	def addition
	    puts "first number?"
	    num_1 = gets.chomp.to_f
	    puts "second number"
	    num_2 = gets.chomp.to_f
	    puts "Your answer is #{num_1+num_2}"
	end

	def advanced_operation
		puts "(p)ower and (s)quare root"
		operations = gets.chomp
		if operations == 'p'
			power
		else square_root
		end
	end
	def get_input
		puts "first number?"
	    num_1 = gets.chomp.to_f
	    puts "second number ?"
	    num_2 = gets.chomp.to_f

	    numbers = [num_1,num_2]

	end


	def basic_operation
	 puts "(a)ddition , (s)ubtract, (m)ultiplication, (d)ivision  "
	 operations = gets.chomp
		 if operations == 'a'
		 	addition
		 elsif operations == 's' 
		 	subtraction
		 elsif operations == 'm'
		 	multiplication 
		 elsif operations == 'd'
		 	division
		end
	end


	if options == 'b'
		basic_operation
		elsif  options == "a"
			advanced_operation
		elsif options == "B"
			body_mass_index

	end


