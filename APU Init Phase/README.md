# The Goal

The game is played on a rectangular grid with a given size. Some cells contain power nodes. The rest of the cells are empty.

The goal is to find, when they exist, the horizontal and vertical neighbors of each node.

## Rules

To do this, you must find each (x1,y1) coordinates containing a node, and display the (x2,y2) coordinates of the next node to the right, and the (x3,y3) coordinates of the next node to the bottom within the grid.

* If a neighbor does not exist, you must output the coordinates -1 -1 instead of (x2,y2) and/or (x3,y3).

## You lose if:

* You give an incorrect neighbor for a node.
* You give the neighbors for an empty cell.
* You compute the same node twice.
* You forget to compute the neighbors of a node.
 
## Victory Conditions

You win when all nodes have been correctly displayed.

## Example

In this example, there are three nodes in a 2 by 2 grid. The cell at (1,1) is empty.

``` 
00
0.
```
 
* The node at (0,0) has 2 neighbors.

```
0 0 1 0 0 1
```
 
* The node at (1,0) has no neighbors.

```
1 0 -1 -1 -1 -1
```
 
* The node at (0,1) has no neighbors.

```
0 1 -1 -1 -1 -1
```

## Note

Don’t forget to run the tests by launching them from the “Test cases” window.

Warning: the tests provided are similar to the validation tests used to compute the final score but remain different. This is a "hardcoding" prevention mechanism. Harcoded solutions will not get any points.

Regarding the viewer, note that:
A debug mode is available from the settings panel (the dented wheel)
You can zoom/unzoom with the mouse wheel and move using drag'n drop (useful for large grids)

## Game Input

The program must first read the initialization data from standard input. Then, provide to the standard output one line per instruction.

## Initialization input

* Line 1: one integer width for the number of cells along the x axis.
* Line 2: one integer height for the number of cells along the y axis.
* Next height lines: A string  line  containing  width  characters. A dot . represents an empty cell. A zero 0 represents a cell containing a node.

## Output for one game turn

One line per node. Six integers on each line:   x1  y1  x2  y2  x3  y3

Where:
* (x1,y1) the coordinates of a node
* (x2,y2) the coordinates of the closest neighbor on the right of the node
* (x3,y3) the coordinates of the closest bottom neighbor
* If there is no neighbor, the coordinates should be -1 -1.

### Constraints

* 0 < width ≤ 30
* 0 < height ≤ 30
* 0 ≤ x1 < width
* 0 ≤ y1 < height
* -1 ≤ x2, x3 < width
* -1 ≤ y2, y3 < height
* Alloted response time to first output line ≤ 1s.
* Response time between two output lines ≤ 100ms

### 25th of April 2699, 12:01 - Zion...

The machines are closing in on Zion, the human defenses are setting up for one last stand.
The human army is largely comprised of APUs (Armored Personal Unit), giant exoskeletons equipped with fully automatic firearms controlled via a grip-sensor relayed to a mechanical machine gun trigger. Every single one of the pilot's movements is mapped onto the robotic bones of the APU, effectively creating a super-soldier.

Each APU is equipped with an 'R-Chip'. These contain a little group of programs that regulate ammunition flow, namely to avoid bullets getting stuck in the mechanism during the chaos of battle. A single squib would cause immediate neutralization of the soldier.
There are several layers of abstraction on the R-Chips from low-level hardware programming to high-level software.

You are part of the team of programmers for the top abstraction layer of the R-Chips.

Your assignment is as follows: Create the initialization code for the R-Chip which must verify the connections in the APU's systems and output all the links between components.
This will enable the soldiers to activate their weapons. Without a working piece of code, many soldiers will be lost without having been able to fire a single shot.

## Hardcoded solutions

### Example

```
00
0.
```

Solution

```ruby
puts '0 0 1 0 0 1'
puts '1 0 -1 -1 -1 -1'
puts '0 1 -1 -1 -1 -1'
```

### Horizontal

```
0.0.0
```

Solution

```ruby
puts '0 0 2 0 -1 -1'
puts '2 0 4 0 -1 -1'
puts '4 0 -1 -1 -1 -1'
```

### Vertical

```
0
0
0
0
```

Solution

```ruby
puts '0 0 -1 -1 0 1'
puts '0 1 -1 -1 0 2'
puts '0 2 -1 -1 0 3'
puts '0 3 -1 -1 0 4'
```

### Square

```
0.0
...
0.0
```

Solution

```ruby
puts '0 0 2 0 0 2'
puts '2 0 -1 -1 2 2'
puts '0 2 2 2 -1 -1'
puts '2 2 -1 -1 -1 -1'
```

### T

```
000
.0.
.0.
```

Solution

```ruby
puts '0 0 1 0 -1 -1'
puts '1 0 2 0 1 1'
puts '2 0 -1 -1 -1 -1'
puts '1 1 -1 -1 1 2'
puts '1 2 -1 -1 -1 -1'
```

### Diagonal

```
0...
.0..
..0.
...0
```

Solution

```ruby
puts '0 0 -1 -1 -1 -1'
puts '1 1 -1 -1 -1 -1'
puts '2 2 -1 -1 -1 -1'
puts '3 3 -1 -1 -1 -1'
puts '4 4 -1 -1 -1 -1'
```

### Complex

```
00.0
0.00
.0.0
000.
```

Solution

```ruby
puts '0 0 1 0 0 1'
puts '1 0 3 0 1 2'
puts '3 0 -1 -1 3 1'
puts '0 1 2 1 0 3'
puts '2 1 3 1 2 3'
puts '3 1 -1 -1 3 2'
puts '1 2 3 2 1 3'
puts '3 2 -1 -1 -1 -1'
puts '0 3 1 3 -1 -1'
puts '1 3 2 3 -1 -1'
puts '2 3 -1 -1 -1 -1'
```

## Shuriken
```
..0....
.......
..0.0.0
.......
0.0.0..
.......
....0..
```

Solution

```ruby
puts '2 0 -1 -1 2 2'
puts '2 2 4 2 2 4'
puts '4 2 6 2 4 4'
puts '6 2 -1 -1 -1 -1'
puts '0 4 2 4 -1 -1'
puts '2 4 4 4 -1 -1'
puts '4 4 -1 -1 4 6'
puts '4 6 -1 -1 -1 -1'
```
