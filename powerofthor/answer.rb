STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY,
# if Thor seems not follow your orders.

# light_x: the X position of the light of power
# light_y: the Y position of the light of power
# initial_tx: Thor's starting X position
# initial_ty: Thor's starting Y position
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(' ').collect(&:to_i)
current_x = @initial_tx
current_y = @initial_ty

# game loop
loop do
  remaining_turns = gets.to_i

  direction_x = ''
  direction_y = ''

  if current_x > @light_x
    direction_x = 'W'
    current_x -= 1
  elsif current_x < @light_x
    direction_x = 'E'
    current_x += 1
  end

  if current_y > @light_y
    direction_y = 'N'
    current_y -= 1
  elsif current_y < @light_y
    direction_y = 'S'
    current_y += 1
  end

  # Write an action using puts
  # To debug: STDERR.puts 'Debug messages...'

  puts direction_y + direction_x
  # A single line providing the move to be made: N NE E SE S SW W or NW
end
