# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@l = gets.to_i
@h = gets.to_i
@t = gets.chomp.upcase.split('').map(&:ord).map { |i| i - 65 }
@output = []
@letter = []

@h.times do
  @row = gets.chomp
  @t.each do |index|
    @letter << @row.split('')[index * @l...(index + 1) * @l].join
    @output << @letter
  end
end

puts @output
# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
