class Game
	attr_accessor :player, :map
	def initialize (map)
		
		system "clear"

		puts "Welcome to the Lost Island!! \n\nIn this Game you will have to escape from the Island!"
		puts "In order to do that, you can use your inventory and move between the map."
		puts "--------------------"

		puts "Instructions: "

		puts "1 - Move along the map by pressing 'N,S,E,W'"
		puts "2 - You can always type an action to perform (pick, hit, drink...)"
		puts "3 - If you need any help type 'help'"
		puts "Type you name: \n"

		@player = Player.new(gets.chomp)
		@map = map
	end

	def describe_room
		puts map[player.coordenade].description
	end

	def is_end
		if @player.winner == true || @player.dead == true
			return true
		else
			return false
		end
	end

	def start
		
		while self.is_end == false
			
			self.describe_room
			input = gets.chomp
			if is_direction(input.downcase) == true
			
			self.check_available(input.downcase)
			@player.change_room(input.downcase)
		
			
			else
			self.action(input.downcase)
	 		
			end
		end
	end

	def action (action)

		case action
		
		when "pick"
			
			if map[@player.coordenade].item == nil
				puts "There's nothing to pick"
			else
				puts "You picked #{@map[@player.coordenade].item}"
			
				@player.inventory << map[@player.coordenade].item
				map[@player.coordenade].item = nil
				self.chop_description
			end
		
		when "inventory"
			puts "You have in your inventory:"
			@player.inventory.each do |item|
				puts item
			end
		
		when "help"
			puts "Press N,S,E,W to move"
			puts "Press Inventory to show whats on your bag"
			puts "Try Swimm, Pick, Pay, Hit, Pay..."
			puts "Hint: Try to pick things although they didn't show in descriptions. They might be hidden!"
		
		else
			puts "I don't understand"
		end

	end

	def chop_description

		array = (@map[@player.coordenade].description.split('*'))
		@map[@player.coordenade].description = array[0].to_s
	end

	def check_available (input)
		if @player.coordenade == "0,0" && input == "s"
			puts "GRRRRRRR........"
			sleep 1
			puts "AAAAAAAAAARRRGGGGGHHHHHHHHHHHH"
			sleep 1
			puts "The cute monkeys were not that cute. They killed you."
			puts "GAME OVER"
			self.player.dead = true
		end
	end

	def is_direction(input)
	array_directions = ["n","s","e","w"]
	array_directions.each do |letter|
		if letter == input 
			return true
		end
		end
		return false 
	end

end

class Room
	
	attr_accessor :description, :item
	def initialize (description,item)
		@description = description
		@item = item
	end
end



class Player
	attr_reader :name, :item, :room_in
	attr_accessor :winner, :inventory, :dead
	def initialize (name)
		@name = name
		@inventory = []
		@room_in = [1,1]
		@winner = false
		@dead = false
	end

	def coordenade
		
		return (self.room_in[0].to_s + "," + self.room_in[1].to_s)
	end


	def change_room (direction)
		
		case direction
		when "n"
			if @room_in[0] == 0
				puts "There's lots of Sharks in the water! You don't want to go there!"
			else
				@room_in[0] -= 1
			end
		when "s" 
			if @room_in[0] == 2
				puts " There's no door South"
			else
				@room_in[0] += 1
			end
		when "e"
			if @room_in[1] == 2
				puts " There's no door East"
			else
				@room_in[1] += 1
			end
		when "w" 
			if @room_in[1] == 0
				puts " There's no door West"
			else
				@room_in[1] -= 1
			end
		else
			puts "I don't understand that direction"
		end
	end
end

room_1 = Room.new("- You are in a Beach. There are some cute monkeys heading south.\n- They seem hungry.\n* There are some ripped Boat Sails, maybe they could help\n","Boat Sails")
room_2 = Room.new("room 2", "Fresh poisoned Meat")
room_3 = Room.new("room 3", "Fisherman")
room_4 = Room.new("OMG THE SOUND WAS A TIGER!! TRY TO ESCAPE WHERE YOU WERE COMING FROM!!","Tiger")
room_5 = Room.new("- You woke up in a dense Jungle. You hear some terrifing animal noise West. \n- Seems to be light to the north. \n* There are some plants in the west side, maybe you could remove them...",nil)
room_6 = Room.new("- Behind the Plants there was spectacular waterfall coming from north, and a huge lake.\n- It's hot in here!", "Rusty Key")
room_7 = Room.new("- You see more Jungle.\n- Now the scary noise comes from north!\n* You see and old skeleton with an old Axe, that could be helpful!", "Axe") 
room_8 = Room.new("- You're still in the Jungle.\n* There's nothing remarkable despite of an old chest with a huge padlock", "Chest")
room_9 = Room.new("- This Jungle is wonderful. You found some fresh water coming from north.\n- You cannot access north but maybe from another place... ", nil)


map = {
	"0,0" => room_1,
	"0,1" => room_2,
	"0,2" => room_3,
	"1,0" => room_4,
	"1,1" => room_5,
	"1,2" => room_6,
	"2,0" => room_7,
	"2,1" => room_8,
	"2,2" => room_9
}







game = Game.new(map)

game.start












