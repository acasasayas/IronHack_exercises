number = 1
output = ""
while number <= 100 
	if number / 10 == 1 || number / 100 == 1 || number == 1
		output <<"Bang!"
	end
	if number % 3 == 0
		output << "Fizz!"
	end
	if number % 5 == 0
		output << "Buzz!"
	end
	if output == ""
		output = "#{number}"
	end
	puts output
	output = ""
	number =  number + 1
end