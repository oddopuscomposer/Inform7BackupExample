"My Grusome Tomato Kill" by PCAD


Book 1 - Locations

[Defining a "kill" actions...]
Kitchen is a room. "A clean kitchen."

part 1 - kitchen

[Different room looking result - though it woudl probably be better to just define a different action
like examine or use a multiple read out like "first time" or "if visited" or "if carrying microscope"]
check looking:
	if the location is kitchen:
		say "upon closer inspection the tomato basket is rather moldy" instead.
	
[Action]
killing is an action applying to two visible thing.
Understand "kill [someone] with [something]" as killing.

[Creating a monster to kill and things to kill it with]
tomato monster is an person in kitchen.
spatula is in kitchen.

red apple is in kitchen.
The description of red apple is "It's a red apple.".

green apple is nowhere.
The description of green apple is "It's a green apple which had appeared!".

Instead of examining apple:
	say "The apple gleams, so happy to be picked it explodes and a green apple appears";
	now the green apple is in kitchen;
	now the red apple is nowhere.



wisk is in kitchen.



[What happens when we kill it!?]
[we could use Instead or report or check, then I am utalizing if statements to conveinantly
report back on which item was used to dispose of the tomato monster.
Also placing it nowhere to remove from the game.]
report killing tomato monster:
	if the second noun is spatula:
		say "Ouch! So flattening!";
		now tomato monster is nowhere instead;
	if the second noun is apple:
		say "bleh! So healthy! Uggh!";
		now tomato monster is nowhere instead;
	if the second noun is wisk:
		say "Merr! I'm all mixed up!";
		now tomato monster is nowhere instead;
	otherwise:
		say "you can't!" instead.
		
[End game every turn win condition check]
Every turn:
	If tomato monster is nowhere:
		end the story saying "Hooray you won and your kitchen is tomato free!".