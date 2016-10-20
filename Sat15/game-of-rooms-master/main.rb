require_relative("lib/game")
require_relative("lib/room")

# Rooms with end: true can end the game when you reach them
rooms = {
  "2,0" => Room.new({ text: "You are in a room full of strangers. Naked. There is a (safe) trapdoor to the north.", end: false }),
  "2,1" => Room.new({ text: "You are in a library. You feel a breeze from the north. You smell tacos to the east.", end: false }),
  "3,1" => Room.new({ text: "You are in a mexican restaurant. Try any direction.", end: false }),
  "4,1" => Room.new({ text: "A black hole appears (you can't see it). You are turned into molecular spaghetti.", end: true }),
  "0,2" => Room.new({ text: "You are surrounded by treasure. And a PS4. You start playing Bloodborne", end: true }),
  "2,2" => Room.new({ text: "You smell pizza but all you see is a bunch of clay statues with chef hats. The smell is coming from the north.", end: false }),
  "0,3" => Room.new({ text: "You find yourself in a luxury apartment. Is that a real tiger? It is... You see a glow from a door to the south.", end: false }),
  "1,3" => Room.new({ text: "You are in the kitchen. The chefs are trying to turn you into a clay statue. They seem to be avoiding the door to the West.", end: false }),
  "2,3" => Room.new({ text: "You are in a pizzeria. Nobody is taking your order. The kitchen is to the West.", end: false }),
}

game = Game.new(rooms, "2,0")

puts ""
puts game.current_room
puts ""

input = nil

# Continue the loop until user says "exit" or game is finished.
while input != "exit" && !game.finished?
  puts "What would you like to do?"
  print "> "
  input = gets.chomp

  # Have game attempt to move and return the appropriate output
  puts game.move!(input)
  puts ""
end

puts "Come back again sometime."
