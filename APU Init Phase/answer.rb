require 'benchmark'

STDOUT.sync = true
#
class Grid
  BLANK = '-1 -1'.freeze
  attr_accessor :width, :height, :lines, :nodes
  def initialize
    @lines = []
    @nodes = []
    @width  = gets.to_i
    @height = gets.to_i
    @height.times do
      @lines << gets.chomp.split('')
    end
  end

  def fill
    @lines.each_with_index do |line, lindex|
      line.each_with_index do |item, iindex|
        @nodes << Node.new(iindex, lindex) if item == '0'
      end
    end
    @nodes.compact!
  end

  def neighbours(xcoor, ycoor)
    hor = if h_neighbour(xcoor, ycoor).nil?
            BLANK
          else
            h_neighbour(xcoor, ycoor).to_s
          end
    ver = if v_neighbour(xcoor, ycoor).nil?
            BLANK
          else
            v_neighbour(xcoor, ycoor).to_s
          end
    "#{hor} #{ver}"
  end

  def v_neighbour(xcoor, ycoor)
    @nodes.find { |node| node.x == xcoor && node.y > ycoor }
  end

  def h_neighbour(xcoor, ycoor)
    @nodes.find { |node| node.x > xcoor && node.y == ycoor }
  end
end

Node = Struct.new(:x, :y) do
  def to_s
    "#{x} #{y}"
  end
end

Benchmark.bm do |x|
  x.report('Solution') do
    A = Grid.new
    A.fill
    A.nodes.each do |node|
      puts "#{node} #{A.neighbours(node.x, node.y)}"
    end
  end
end
