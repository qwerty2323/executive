@l = 4
@h = 5
puts 'Enter the word'
@t = gets.chomp.upcase.split('').map(&:ord).map { |i| i - 65 }
@output = []
@output_row = []
@letter = []

@h.times do
  @row = gets.chomp
  @t.each do |index|
    @letter << @row.split('')[index * @l...(index + 1) * @l].join
    puts 'letter is: '
    puts @letter
    @output_row << @letter
    puts 'row is: '
    puts @output_row
  end
  @output << @output_row
end

puts @output
