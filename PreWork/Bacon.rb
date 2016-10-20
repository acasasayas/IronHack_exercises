def taste(food)
	if food == "bacon"
    	puts "Yummy!!! BACON!!!"
	elsif food == "spinach"
		puts "Arghh!"
	else 
		puts "Can I have some Bacon in the side?"
  end
end

puts "What do you want?"
taste (gets.chomp)
