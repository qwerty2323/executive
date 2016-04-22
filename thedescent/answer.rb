loop do
  max = 0
  imax = 0
  8.times do |i|
    mountain_h = gets.to_i # represents the height of one mountain, from 9 to 0.
    if mountain_h > max
      max = mountain_h
      imax = i
    end
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
  end
  # The number of the mountain to fire on.
  puts imax.to_s
end
