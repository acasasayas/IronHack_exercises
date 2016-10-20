class Room
	attr_reader :description, :N ,:S ,:E, :W, :index
	def initialize (description,n,s,e,w,x,y)
		@description = description
		@n = n
		@s = s
		@e = e
		@w = w
		@index_x = x
		@index_y = y
	end
end

class Player
	attr_reader :name, :item, :room_in, :winner
	def initialize (name)
		@name = name
		@item = nil
		@room_in = [1,1]
		@winner = false
	end

	def change_room (direction)
		case direction
		when n 
			if @room_in[1] == 0
				puts " There's no door North"
			else
				@room_in[1] += 1
			end
		when s 
			if @room_in[1] == 2
				puts " There's no door South"
			else
				@room_in[1] -= 1
			end
		when e 
			if @room_in[0] == 2
				puts " There's no door East"
			else
				@room_in[0] += 1
			end
		when w 
			if @room_in[0] == 0
				puts " There's no door West"
			else
				@room_in[0] -= 1
			end
		end
	end
end

room_1 = Room.new("room 1",false,true,true,false,0,0)
room_2 = Room.new("room 2",false,true,true,true,0,1)
room_3 = Room.new("room 3",false,true,false,true,0,2)
room_4 = Room.new("room 4",true,true,false,true,1,0)


map = [room_1, room_2, room_3, room_4, room_5, room_6, room_7, room_8, room_9]

puts "Type you name: \n"

player = Player.new(gets.chomp)

puts map[4].description

puts "Type N,S,E,W"

while player.winner == false

	player.change_room(gets.chomp)
	map.find
	
end
