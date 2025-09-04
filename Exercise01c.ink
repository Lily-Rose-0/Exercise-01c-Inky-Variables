/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Variable types: integer, float, boolean
 * Variable assignment
 * Printing variables
 * Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something

Varible Checking: 
Equality: "Spot" == "Spot"
Not equality : 1 != 2
Greater: >
Less: < 
Great or equal: >= 
Less or equal: <=


*/

VAR health = 5
VAR pet_name = ""
VAR torches = 0
VAR schizophrenia = 9
VAR luck = 2.5

-> memory

== memory == 
Before you stands the cavern of Josh. You your childhood pet was with you now. What was your pet's name? 

* [Charlie]
    ~ pet_name = "Charlie" 
    -> cave_mouth
* [Susan] 
    ~ pet_name = "Susan" 
    -> cave_mouth 
* [Spot]
    ~ pet_name = "Spot" 
    -> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

You have {torches} torches.

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{ pet_name == "Spot": Spot would love it in the west| }
* [keep walking]
-> west_end
-> END

=== torch_pickup ===
~torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room. You can't believe your luck! 
You have some serious luck. 
Luck stat: {luck} out of 10. 
-> protag_mind
-> END

== protag_mind == 
Things in my life are finally going up! I knew I was due so luck after that schizophrenia diagnosis. 
Your schizophrenia level is {schizophrenia} out of 10. 
* [Celebatrate] 
-> east_end 

-> END

== east_end == 
Lost in your celeibration you forget to reach out and touch the coins. You don't realize their all in your mind. You laugh yourself to death. 
-> END

== west_end == 
You fall off a cliff and die. 
Luck Stat: {luck} out of 10. 
-> END
