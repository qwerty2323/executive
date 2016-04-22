# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
@n = gets.to_i # the number of temperatures to analyse
# the n temperatures expressed as integers ranging from -273 to 5526
@temps = gets.split(' ').collect(&:to_i)

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
result = @temps.collect(&:abs).min

result *= - 1 if @temps.index(result).nil? && @n != 0

if @n == 0
  puts '0'
else
  result
end
