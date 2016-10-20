number = 1
output = "nothing"
while number <= 100 
	if number % 3 == 0
		output = "Fizz!"
	end
	if number % 5 == 0
		output = "Buzz!"
	end
	if number % 3 == 0 && number % 5 == 0
		output = "Fizz!Buzz!"	
	end
	if output == "nothing" && number / 10 != 1
			output = "#{number}"

	end
	if number /10 == 1 && output == "nothing"
		output = "Bang!"
	elsif number / 10 == 1 && output != "Bang!"
		output = "Bang!" + output 
	elsif number / 100 ==1
		output = "Bang!" + output
	elsif number == 1
		output = "Bang!"
	end

	number = number + 1
	puts output
	output = "nothing"
end