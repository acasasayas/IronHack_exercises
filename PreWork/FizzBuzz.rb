number = 1
output = "nothing"
while number <= 100 
	if number % 3 == 0
		output = "Fizz!"
	elsif number % 5 == 0
		output = output + "Buzz!"
	else 
		output = "#{number}"
	end
	number = number + 1
	puts output
end