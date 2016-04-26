STDOUT.sync = true
#
class Grid
  attr_accessor :width, :height, :lines
  def initialize
    @lines = []
    @width  = gets.to_i
    @height = gets.to_i
    @height.times do
      @lines << gets.chomp.split('')
    end
  end
end

@grid = Grid.new
@grid.lines.each do |line|
  line.each do |element|
    
  end
end

# 00
# 0.
# puts "0 0 1 0 0 1"
# puts "1 0 -1 -1 -1 -1"
# puts '0 1 -1 -1 -1 -1'

# 0.0.0
# puts '0 0 2 0 -1 -1'
# puts '2 0 4 0 -1 -1'
# puts '4 0 -1 -1 -1 -1'

# 0
# 0
# 0
# 0

# puts '0 0 -1 -1 0 1'
# puts '0 1 -1 -1 0 2'
# puts '0 2 -1 -1 0 3'
# puts '0 3 -1 -1 0 4'

# 0.0
# ...
# 0.0

# puts '0 0 2 0 0 2'
# puts '2 0 -1 -1 2 2'
# puts '0 2 2 2 -1 -1'
# puts '2 2 -1 -1 -1 -1'

# 000
# .0.
# .0.

# puts '0 0 1 0 -1 -1'
# puts '1 0 2 0 1 1'
# puts '2 0 -1 -1 -1 -1'
# puts '1 1 -1 -1 1 2'
# puts '1 2 -1 -1 -1 -1'

# 0...
# .0..
# ..0.
# ...0

# puts '0 0 -1 -1 -1 -1'
# puts '1 1 -1 -1 -1 -1'
# puts '2 2 -1 -1 -1 -1'
# puts '3 3 -1 -1 -1 -1'
# puts '4 4 -1 -1 -1 -1'

# 00.0
# 0.00
# .0.0
# 000.

# puts '0 0 1 0 0 1'
# puts '1 0 3 0 1 2'
# puts '3 0 -1 -1 3 1'
# puts '0 1 2 1 0 3'
# puts '2 1 3 1 2 3'
# puts '3 1 -1 -1 3 2'
# puts '1 2 3 2 1 3'
# puts '3 2 -1 -1 -1 -1'
# puts '0 3 1 3 -1 -1'
# puts '1 3 2 3 -1 -1'
# puts '2 3 -1 -1 -1 -1'

# ..0....
# .......
# ..0.0.0
# .......
# 0.0.0..
# .......
# ....0..

# puts '2 0 -1 -1 2 2'
# puts '2 2 4 2 2 4'
# puts '4 2 6 2 4 4'
# puts '6 2 -1 -1 -1 -1'
# puts '0 4 2 4 -1 -1'
# puts '2 4 4 4 -1 -1'
# puts '4 4 -1 -1 4 6'
# puts '4 6 -1 -1 -1 -1'
