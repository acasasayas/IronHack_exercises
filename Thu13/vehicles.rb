class Wheel_count
	
	def initialize (array)
		total_count = array.reduce(0.0) do |sum,wheels|
			wheels.wheels_number
		end
		puts total_count
	end

	
end

class Make_sounds

	def initialize (array)
		array.each do |vehicle|
			puts vehicle.noise
		end
	end

class Bicicle
	attr_reader :noise , :wheels_number
	def initialize
		@wheels_number = 2
		@noise = "RingRing"
	end
end

class Train
	attr_reader :noise , :wheels_number
	def initialize
		@wheels_number = 50
		@noise = "ChuChuuu"
	end
end

class Truck
	attr_reader :noise , :wheels_number
	def initialize
		@wheels_number = 10
		@noise = "MUUUUUUK"
	end
end

array_vehicles = [Truck.new,Truck.new,Train.new,Bicicle.new,Train.new]