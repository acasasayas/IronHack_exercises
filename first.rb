class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end
homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Berta's place", "Barcelona", 5, 48),
  Home.new("Martina's place", "Calella", 7, 89),
  Home.new("Borja's place", "Calella", 2, 44),
  Home.new("Alvaro's place", "Barcelona", 2, 49),
  Home.new("Laura's place", "Calella", 6, 52)
]

homes.each do |city|
	puts city.name
end
# rooms = 0
# average = homes.reduce(0.0) do |sum,price|
# 	sum + price.price
# 	end

# puts average/5

# sorted = homes.sort do |capacity1,capacity2|
# 	capacity1.capacity <=> capacity2.capacity
# end
# sorted.each do |sort|
# 	puts sort.capacity
# 	end

# average = 0
# cities = 0
# prices_total = 0
#  prices.each do |price|
#  	cities += 1
#  	prices_total = prices_total + price
#  end

#  average = prices_total / cities 
#  puts "The average is: " + average.to_s
