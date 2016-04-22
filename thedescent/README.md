# The Goal

Destroy the mountains before your starship collides with one of them. For that, shoot the highest mountain on your path.
## Rules

* At the start of each game turn, you are given the height of the 8 mountains from left to right.
* By the end of the game turn, you must fire the highest mountain by outputting its index (from 0 to 7).
* Firing on a mountain will only destroy part of it, reducing its height. Your ship descends after each pass.  
 
## Victory Conditions

You win if you destroy every mountain
 
## Lose Conditions
Your ship crashes into a mountain
You provide incorrect output or your program times out

## Note

Don’t forget to run the tests by launching them from the “Test cases” window. The tests provided and the validators used to calculate your score are slightly different to avoid hard-coded solutions.

## Game Input

Within an infinite loop, read the heights of the mountains from the standard input and print to the standard output the index of the mountain to shoot.
Input for one game turn
8 lines: one integer mountainH per line. Each represents the height of one mountain given in the order of their index (from 0 to 7).

## Output for one game turn

A single line with one integer for the index of which mountain to shoot.

### Constraints
0 ≤ mountainH ≤ 9
Response time per turn ≤ 100ms

### Synopsis

“Captain's log, stardate 1567.9. We are entering the Deneb system two days after receiving a distress call issuing from the unexplored planet XIV of this system. Our mission is to bring aid to whomever is in need of our help on this planet.”
 
“Captain's log, supplemental. While reaching the planet, our rescue ship was drawn to a point on the surface by an invisible force that we have yet to understand. Despite all efforts, the ship continues its downward course and we are at great risk of colliding with the mountains that tower below us.”
 
“Captain's log, supplemental. In a final attempt, Scotty was able to re-engineer the phase cannons so that they can now destroy the mountains from their foundations. This gives us hope of landing safely on the planet. We are now looking for a crew member able to program the firing rate of the phase cannons to get us out safely from what clearly appears to be a trap designed to destroy us.”