class Game
  def initialize(rooms, starting_position)
    @rooms = rooms

    # This method sets the initial position coordinates for use later
    set_position(starting_position)
  end

  def current_room
    room = @rooms[@current_position]
    return room.text
  end

  def finished?
    room = @rooms[@current_position]
    return room.end?
  end

  # Turns a position like "4,2" into the coordinates 4 and 2
  def set_position(position)
    coordinates = position.split(',')
    @current_position = position
    @current_x = coordinates[0].to_i
    @current_y = coordinates[1].to_i
  end

  def move!(action)
    directions = [ "N", "E", "S", "W" ]
    deltas = {
      "N" => [ 0, 1 ],
      "E" => [ 1, 0 ],
      "S" => [ 0, -1 ],
      "W" => [ -1, 0 ]
    }

    # If action isn't a direction print a message
    if !directions.include?(action)
      return "You can't do that."
    else
      change = deltas[action]
      new_x = @current_x + change[0]
      new_y = @current_y + change[1]

      new_position = new_x.to_s + "," + new_y.to_s

      # If new position doesn't have a room print a message
      if !@rooms.has_key?(new_position)
        return "You hit your face against a wall."

      # If new position has a room, set the new room
      else
        self.set_position(new_position)
        return self.current_room
      end
    end
  end
end
