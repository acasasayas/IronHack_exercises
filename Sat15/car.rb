class Car
	def initialize (engine)
		@engine = engine
		@noise = "BrumBrum"
	end

	def start
		puts @noise
		puts @engine.move_pistons
	end
end

class Electric_Engine
	def move_pistons
		"Bzzzzzz"
	end
end

class Gas_Engine
	def move_pistons 
		"BRROOOAAAAAAMMM"
	end
end


big_engine = Gas_Engine.new
electric_engine = Electric_Engine.new
a_car = Car.new(big_engine)
e_car = Car.new(electric_engine)
a_car.start

