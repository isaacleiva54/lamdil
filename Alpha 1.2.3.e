Volume 1 - Mechanics

Include Combat Mechanics by Lamdil.
Include Armour Mechanics by Lamdil.
Include Enemy Mechanics by Lamdil.
Include Miscellaneous Mechanics by Lamdil.
Include Dope Weapons by Lamdil.
Include Locksmith by Emily Short.
Include Common Commands Sidebar by Alice Grove.
Include Leveling by Lamdil.
Include Shadow Enemies by Lamdil.
Include Shadow Bosses by Lamdil.
Include Secret Doors by Andrew Owen.
	
Sound of levelup is the file "levelup.ogg".

Use MAX_STATIC_DATA of 1000000.

Volume 1 - Story 

Book 1 - Inner Prison

Part 1 - Prison Chapter

When play begins:
	now the left hand status line is "";
	now the right hand status line is "";
	now the time of day is 10:00 AM.
	
Rule for listing nondescript items:
	do nothing.
	
Instead of going nowhere:
	say "It appears you can't go that way.".
	
Scene Change is a recurring scene.
Scene Change begins when the time of day is 10:05 AM.
When Scene Change begins:
	now the time of day is 9:59 AM.
Scene Change ends when the time of day is 9:59 AM.
	
Cell 1 is a room. "You wake up in a cold, damp room that appears to look like a cell. Your head is throbbing as you wonder how you got here. With the light from a nearby torch in the room, you see a note.".
Note is a thing in Cell 1.
Flaming Torch is a thing in Cell 1. Flaming Torch is lit.
Walkway 1 is north of Cell 1. Walkway 1 is a dark room. "A strange silence fills the air. You look around and notice that you are in the corner cell and ahead of you is a long dark hallway and surrounding you are cold walls of stone."
Rule for printing the name of Walkway 1:
	say "Walkway".
Rule for printing the name of Cell 1:
	say "Cell".
	
Walkway 2 is east of Walkway 1. Walkway 2 is a dark room. "You take a step forward and see something odd. The cell to the south is open."
Rule for printing the name of Walkway 2:
	say "Walkway".

Cell 2 is south of Walkway 2. Cell Key is in Cell 2. Cell 2 is a dark room. "There's a warmth here as if someone recently left. In the corner of the room you see what appears to be a key."
The Cell Door is south of Walkway 3. The Cell Door is a door. The Cell Door is scenery. The Cell Door is locked. Cell Key unlocks the Cell Door. Walkway 3 is east of Walkway 2. Walkway 3 is a dark room. The description of Walkway 3 is "[if Rusty Knife is in Cell 3]Your courage shakes as you take more steps. You wonder curiously about the note you just read.[end if][if Rusty Knife is not in Cell 3]You wonder what could lie ahead of you that requires a knife...[end if]".
Rule for printing the name of Walkway 3:
	say "Walkway".
Rule for printing the name of Cell 2:
	say "Cell".

Cell 3 is south of Cell Door. Rusty Knife is in Cell 3. Cell 3 is a dark room. "[if Rusty Knife is in Cell 3]There's a page attached to a knife strangely laid in the center of the room."
Page is in Cell 3.
Walkway 4 is east of Walkway 3. Walkway 4 is a dark room. "[if Deranged Prisoner is not dead]You hear someone muttering quietly and a slight rumble in the floor beneath you."
Rule for printing the name of Walkway 4:
	say "Walkway".
Rule for printing the name of Cell 3:
	say "Cell".
Instead of listening to Walkway 4:
	if Deranged Prisoner is not dead:
		say "I'll kill those bastards... I'll kill 'em...";
	otherwise:
		say "You see the dark mist that replaced the body of the Deranged Prisoner.".

Cell 4 is south of Cell Door 2. Cell 4 is a dark room. Cell Door 2 is south of Walkway 4. Cell Door 2 is a door. Cell Door 2 is scenery. Cell Door 2 is closed. The description of cell 4 is "In the cell there is an enormous hole in the center of the room. The edges are cracked and leave the foundation exposed. Something red and dry stain the corners of the cracks."
Rule for printing the name of Cell 4:
	say "Cell".
Instead of listening to Cell 4:
	if Mutated Prisoner is not dead:
		say "As you enter the cell, you hear what appears to be a low growling underneath you.";
	otherwise:
		say "You're glad to be out of that hell hole.".
Rule for printing the name of Cell Door 2:
	say "Cell Door".

Prison Tunnel is below Cell 4. Prison Tunnel is a dark room. The Mutated Prisoner is a man in the Prison Tunnel. "As you drop down the hole, a human-like body slowly turns its head around. As it realizes what you are - a human - it stands and charges at you."
Prison Tunnel Fight is a recurring scene.
Prison Tunnel Fight begins when the player is in the Prison Tunnel.
Every turn during the Prison Tunnel Fight:
	now the left hand status line is "Mutated Prisoner: [current hit points of Mutated Prisoner]";
	now the player is hostile;
	if the Mutated Prisoner is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Mutated Prisoner: Deceased";
		now the Mutated Prisoner is nowhere.
Prison Tunnel Fight ends when the player is not in the Prison Tunnel.	
When Prison Tunnel Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".
	
The Tunnel Extension is south of Prison Tunnel. Tunnel Extension is a dark room. "[if Tunnel Wall is not broken]The wall here is oddly cracked and with the right tools you think you can break it down." The Tunnel Wall is in Tunnel Extension. The Tunnel Wall is scenery. Diamond Pickaxe is a thing.
Tunnel Wall Breaking is a scene.
Tunnel Wall Breaking begins when Tunnel Wall is broken.
When Tunnel Wall Breaking begins:
	say "With a forceful hit of your hammer, the wall crumbles and reveals to you a bright, shining diamond pickaxe.".
Tunnel Wall Breaking ends when Tunnel Wall is nowhere.
	
The Prison Staircase is east of Walkway 4. Prison Staircase is a dark room. A Deranged Prisoner is a man in the Prison Staircase. "You step out into an open room and see a staircase at the end of the wall, but hear a gut-wrenching scream as from behind you what appears to be a mentally unstable prisoner lunges at you.".
Prison Staircase Fight is a scene.
Prison Staircase Fight begins when the player is in the Prison Staircase.
Every turn during Prison Staircase Fight: 
	now the left hand status line is "Deranged Prisoner: [current hit points of Deranged Prisoner]";
	now the player is hostile;
	if the Deranged Prisoner is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Deranged Prisoner: Deceased";
		now the Deranged Prisoner is nowhere.
Prison Staircase Fight ends when the Deranged Prisoner is dead.

When Prison Staircase Fight ends:
	say "The body of the deranged prisoner slowly disappears and turns into a black mist that hovers in the place of the body. You take a closer look at the mysterious hovering cloud. As your face nears the edges of the cloud, everything turns to black.".

Part 2 - Shadow Realm

Shadow Introduction is a scene.
Shadow Introduction begins when Prison Staircase Fight ends.
Shadow Realm is an unmappable room.
When Shadow Introduction begins:
	wait for any key;
	wait for any key;
	clear main window;
	move player to Shadow Realm;
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "";
	say "You see nothing in the cloud and pull your head out, but when you do, you're no longer in the prison. You look around and see a mysterious entity that resembles a man. You want to look away, but feel the urge to examine him and see what he looks like.".
In the Shadow Realm is a man called Mysterious Entity.
Understand "Mysterious Man" and "Him" and "Man" as Mysterious Entity.
Instead of examining the Mysterious Entity for the first time:
	now the printed name of Mysterious Entity is "Ethiram";
	now the Mysterious Entity is proper-named;
	say "'You don't need to look that closely to figure out who I am,' says the mysterious entity. 'I am Ethiram,' and as he spoke his name, his body and face became unshadowed. 'I'm the one that's been communicating with you in what you perceive as the real world. Come with me, I want to show you something.' He takes a step forward and vanishes in a puff of black.";
	wait for any key;
	move player to Shadow Prison.
Shadow Introduction ends when the player is in Shadow Prison.
Shadow Prison Scene is a scene.
Shadow Prison Scene begins when Shadow Introduction ends.
Shadow Prison is an unmappable room.
In Shadow Prison is a man called Ethiram.
When Shadow Prison Scene begins:
	say "You take a step forward and instantly you transport back into your cell. You stare at the door in front of you."
Shadow Door is a thing in Shadow Prison. Shadow Door is fixed in place.
Instead of opening Shadow Door:
	say "Ethiram appears in front of you and says, 'Welcome to the prison. But this isn't the prison you grew to know. This is the prison I knew. I, along with many others, lived in the prison for decades. Just like you, we all awoke one day within the cold walls. In time, we met the Warden.'";
	now the Shadow Door is nowhere;
	wait for any key;
	move player to The Warden's Quarters.
Shadow Prison Scene ends when player is in The Warden's Quarters.
Shadow Warden is a scene.
Shadow Warden begins when Shadow Prison Scene ends.
The Warden's Quarters is an unmappable room.
When Shadow Warden begins:
	say "After hearing the words, 'The Warden' you feel a gust of air and appear in another room. There is a man here, in full metal armour, grasping a chain in one hand and a sword in the other, getting ready to strike a man in ragged clothes. However, everything is frozen in time. Nothing is moving.";
	wait for any key;
	say "Except Ethiram.";
	wait for any key;
	say "He walks around the room and says, 'One by one we entered The Warden's Quarters. And one by one our numbers decreased. No one came back from that dreadful room.'";
	wait for any key;
	say "You watch Ethiram traipse around the room. When he finishes talking, he looks at you and says, 'Follow me,' and sinks into the floor.";
	wait for any key;
	say "You stare at your feet and notice you're not exactly standing on anything. There's a dark, purplish cloud where the ground should be, but it doesn't feel like anything. You think to yourself 'Sink'";
	wait for any key;
	say "[line break]You repeat it in your head. 'Sink'";
	wait for any key;
	say "[line break]'Sink'";
	wait for any key;
	say "[line break]'SINK'".
Understand "sink" as casting sink.
Casting sink is an action applying to nothing. 
Carry out casting sink:
	move the player to Shadow Dimension. 
Shadow Warden ends when player is in Shadow Dimension.
Shadow Dimension is an unmappable room.
Rule for printing the name of Shadow Dimension:
	say "Shadow Realm".				
Shadow Finale is a scene.
Shadow Finale begins when Shadow Warden ends.
When Shadow Finale begins:
	say "Your body passes through the purple clouds and you appear back where you first met Ethiram. He notices your presence.[line break]'He killed everyone...' his voice trails off.";
	wait for any key;
	say "'...but he didn't get me. Some prisoners and I made a break for it. We found a way out of the prison and we ran. We ran as far as our legs would take us. And we discovered, the Jungle. I need you to get to the Jungle. I'm trapped here, but with your help, you can get me out, and in turn, I'll take you back to your home.'";
	wait for any key;
	say "'You'll encounter another foe in The Jungle, much stronger than the Warden. Thus, I will infuse your soul with the ability to absorb the powers of those you've slain.'"; 
	wait for any key;
	say "He lifts his arm and points at the center of your body. Your body wrenches and squirms. You feel something deep in your body. It's not your heart... it's not your brain... You don't know what it is but you're not the same.";
	wait for any key;
	say "'Say 'Porteum' and you will be back in the prison. Good luck.' Ethiram blinks out of existence and you're left alone in the shadows.".
Understand "xyzzy" as casting xyzzy.
Casting xyzzy is an action applying to nothing. 
Carry out casting xyzzy:
	clear main window;
	move the player to Prison Staircase. 
Report casting xyzzy:
	say "You skeptically mutter the random jumble of letters Ethiram commands you to speak, and after a moment you appear back in the Prison and you can feel solid ground under your feet. You see a black cloud hovering over a pool of red. As you stare at the cloud, you feel a strange deepness in your soul. ".
Shadow Finale is a scene.
Shadow Finale ends when the player is in Prison Staircase.

Part 3 - Captain's Chapter

The Captain's Staircase is a dark room above the Prison Staircase. "There's not a soul in sight, but the air feels warm as if someone had scurried away in a hurry."
The Guard's Quarters is west of the Captain's Staircase. The Guard's Quarters is a dark room. "You enter what appears to be the room where the guards of the prison sleep. By each bed is a chest full of belongings. Each chest is chained and locked shut, except for one. ".
In the Guard's Quarters is an openable container called Chest. Chest is closed. The Chest is fixed in place. "[if open]The chest is open.[else]You see one chest, in the corner of the room hidden from the light, might be able to open if you pry enough." In Chest is a thing called Iron Key. In Chest is a thing called Stale Bread. In Chest is a thing called Guard's Satchel.
Rule for printing the name of Guard's Chest: 
	say "[printed name of Guard's Chest]";
	omit contents in listing.
	
The Iron Door is east of the Captain's Staircase and west of the Armoury. The Iron Door is a door. The Iron Door is scenery. The Iron Door is locked. Iron Key unlocks the Iron Door. The Armoury is a dark room. "As you enter the room, the light from your torch reveals an armoury. However, little remains. You think to yourself that it was all taken in Ethiram's skirmish. Scrawled across the floor is a broken sword and a rugged cap." In the Armoury is Broken Sword and Rugged Cap.
North of the Captain's Staircase is a Hallway. The Hallway is a dark room. 
North of the Hallway is the Warden's Staircase. "You stare at the long hallway in front of you. You can't help but feel deja vu."
The Warden's Staircase is a dark room. "[if Warden is not dead]Above you hear heavy thuds and metal scraping across stone. You gulp. 'This is it' you think to yourself. You take a deep breath.[else]You hear nothing unexpected.".

Part 4 - Warden's Chapter

The Warden's Staircase is below the Warden's Room. Above the Warden's Staircase is a dark room called the Warden's Room. The Warden is a man in the Warden's Room. "Climbing up the staircase, you see a man in full metal armour."
Warden Introduction is a scene.
Warden Introduction begins when the player is in the Warden's Room.
When Warden Introduction begins:
	say "Climbing up the staircase, you see a man in full metal armour.";
	wait for any key;
	say "'I've been waiting for you.' He patiently slaps his steel sword against the stone cold floor and brandishes his steel chain awaiting your move.".
Warden's Room Fight is a recurring scene.
Warden's Room Fight begins when the player is in the Warden's Room.
Every turn during Warden's Room Fight: 
	now the left hand status line is "Warden: [current hit points of Warden]";
	now the player is hostile;
	if the Warden is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Warden: Deceased";
		now the Prison Exit is unlocked;
		now the Armoury Door is unlocked;
		say "The Warden's heavy body thumps to the ground, and over his corpse you see an opening in the massive wall at the far end of the room. To the left you see a plaque above another room labled, 'Armoury'.";
		now the Warden is nowhere.
Warden's Room Fight ends when the player is not in the Warden's Room.
When Warden's Room Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".
	
Armoury Door is west of the Warden's Room. Armoury Door is a door. Armoury Door is scenery. Armoury Door is locked. Warden's Armoury is west of Armoury Door. Warden's Armoury is a dark room. "The walls of the room are stacked with weapons upon weapons. Random pieces of gear litter the floor. Armour Racks and Mannequins display full metal armour.[line break]A few weapons call to you: Sacrificial Kris, Steel Sword, and the Warden's Flail. It would be wise to only choose one of these three.[line break]You see enough pieces of equipment to complete a set of gear: Guard Helmet, Damaged Chainmail, Rusty Bracelets, Torn Trousers, Battered Shoes, and a Wooden Buckler.".
Sacrificial Kris is in the Warden's Armoury. Steel Sword is in the Warden's Armoury. Warden's Flail is in the Warden's Armoury. Damaged Chainmail is in the Warden's Armoury. Rusty Bracelets is in the Warden's Armoury. Torn Trousers is in the Warden's Armoury. Battered Shoes is in the Warden's Armoury. Wooden Buckler is in the Warden's Armoury. Guard Helmet is in the Warden's Armoury.

The Prison Exit is north of the Warden's Room. The Prison Exit is a door. The Prison Exit is scenery. The Prison Exit is locked. The Prison Opening is north of the Prison Exit. The Prison Opening is a room. "As you walk through the opening, you are greeted by rays of sunlight and a cool breeze grazes your skin. You're free. But this feeling of freedom doesn't last. You feel your soul being sucked into nothingness. The rays of sun and the breeze disappear and the coolness you feel is from the coldness of nothing."

Instead of going north when the Player is in Prison Opening:
	move the Player to Shadow Realm 2.
	
Part 4 - Shadow Realm (Again)

Shadow Meeting is a scene. Shadow Meeting begins when the player is in Shadow Realm 2.
Shadow Realm 2 is a room. "You see Ethiram standing, waiting for you to talk to him."
Rule for printing the name of Shadow Realm 2:
	say "Shadow Realm".
When Shadow Meeting begins:
	move Ethiram to Shadow Realm 2.
	
Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing.
	
Instead of talking to Ethiram during Shadow Meeting:
	say "'Sorry for the intrusion, but there's more I have to tell you. Congratulations for killing the warden. However, the task ahead is far more daunting, but if you succeed, you and I can finally get off this god forsaken island. In the jungle there's a marble tower. And in this tower awaits the Overseer. Kill him and you'll obtain the key to what used to be a prison below a prison. Cast the Mobilieum spell to go back to the material world.' Ethiram vanishes in a black puff.";
	now the Player is in the Prison Yard.
	
Understand "Mobilieum" as casting xyzzyz.
Casting xyzzyz is an action applying to nothing. 
Carry out casting xyzzyz:
	clear main window;
	move the player to Prison Yard. 
Report casting xyzzyz:
	say "This time with confidence you say 'Mobilorus' and a black swirl envelopes you and for a moment you are covered in darkness. The swirling cloud of blackness starts to unravel itself, and you appear back in the normal world and realize that the prison is behind you. In front of you is what looks like a yard. Tall stone walls surround you. Hopefully there's a way out.".
	
Part 5 - Yard Chapter

Prison Yard 5 is north of the Prison Opening. Prison Yard 5 is a room. "You appear back in the normal world and realize that the prison is behind you. In front of you is what looks like a yard. Tall stone walls surround you. Hopefully there's a way out."
Rule for printing the name of Prison Yard 5:
	say "Prison Yard". 

Prison Yard 4 is west of Prison Yard 5. Prison Yard 4 is a room. "There is a wall here."
Rule for printing the name of Prison Yard 4:
	say "Prison Yard". 

Prison Yard 6 is east of Prison Yard 5. Prison Yard 6 is a room. "There is a wall here."
Rule for printing the name of Prison Yard 6:
	say "Prison Yard". 

Prison Yard 3 is north of Prison Yard 6. Prison Yard 3 is a room. Rock Hammer is in Prison Yard 3. Paper is a thing in Prison Yard 3. Understand "piece of paper" as Paper. "You stumble across what appears to be a hammer. Wrapped around its handle is a piece of paper with writing on it." 
Rule for printing the name of Prison Yard 3:
	say "Prison Yard". 

Prison Yard 2 is east of Prison Yard 1 and north of Prison Yard 5 and west of Prison Yard 3. Prison Yard 2 is a room. "Freedom is within your grasp..." The Prison Gate is north of Prison Yard 2. The Prison Gate is a door. The Prison Gate is scenery. The Prison Gate is locked.
Rule for printing the name of Prison Yard 2:
	say "Prison Yard". 

Prison Yard 1 is north of Prison Yard 4. Prison Yard 1 is a room. "[if Prison Wall is not broken]The wall here is old and degrading and full of cracks.[else]You can now escape the prison." The Prison Wall is in Prison Yard 1. The Prison Wall is scenery.
Rule for printing the name of Prison Yard 1:
	say "Prison Yard". 
Prison Wall Breaking is a scene.
Prison Wall Breaking begins when Prison Wall is broken.
When Prison Wall Breaking begins:
	say "With one swift and forceful swing of your hammer, the wall gives and crumbles to the ground. A tropical jungle reveals itself.".
Prison Wall Breaking ends when Prison Wall is nowhere.
Instead of going north when the player is in Prison Yard 1:
	if Prison Wall is not broken:
		say "There is still a wall in your way.";
		stop the action;
	otherwise:
		move player to Near Prison 2.

Book 2 - Prison Island

Part 1 - Island Chapter

Near Prison 2 is north of Prison Yard 1. Near Prison 2 is a room. "There is a dense jungle up ahead."
Rule for printing the name of Near Prison 2:
	say "Near Prison".
Instead of going south when the player is in Near Prison 2:
	move player to Prison Yard 1.
	
Near Prison 1 is west of Near Prison 2. Near Prison 1 is a room. 
Rule for printing the name of Near Prison 1:
	say "Near Prison".
Instead of going west when the player is in Near Prison 1:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Front of Prison Gate is east of Near Prison 2 and north of Prison Gate. Front of Prison Gate is a room. "You can see the prison in the background and think to yourself how much you won't miss it, but at the same time, what more there is to come..."
Near Prison 4 is east of Front of Prison Gate. Near Prison 4 is a room.
Rule for printing the name of Near Prison 4:
	say "Near Prison".

Near Prison 5 is east of Near Prison 4. Near Prison 5 is a room.
Rule for printing the name of Near Prison 5:
	say "Near Prison".
Instead of going east when the player is in Near Prison 5:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 1 is north of Near Prison 1. Jungle 1 is a room. 
Rule for printing the name of Jungle 1:
	say "Jungle".
Instead of going west when the player is in Jungle 1:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 2 is east of Jungle 1 and north of Near Prison 2. Jungle 2 is a room.
Rule for printing the name of Jungle 2:
	say "Jungle".
	
Jungle 3 is east of Jungle 2 and north of Front of Prison Gate. Jungle 3 is a room. "[if Southern Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name of Jungle 3:
	say "Jungle".
	
Jungle 4 is east of Jungle 3 and north of Near Prison 4. Jungle 4 is a room.
Rule for printing the name of Jungle 4:
	say "Jungle".
	
Jungle 5 is east of Jungle 4 and north of Near Prison 5. Jungle 5 is a room.
Rule for printing the name of Jungle 5:
	say "Jungle".
Instead of going east when the player is in Jungle 5:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 6 is west of Jungle 7. Jungle 6 is a room.
Rule for printing the name of Jungle 6:
	say "Jungle".
Instead of going west when the player is in Jungle 6:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
Instead of going south when the player is in Jungle 6:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 7 is north of Jungle 1. Jungle 7 is a room. 
Rule for printing the name of Jungle 7:
	say "Jungle".
	
Jungle 8 is east of Jungle 7 and north of Jungle 2. Jungle 8 is a room. "[if Southern Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name of Jungle 8:
	say "Jungle".
Instead of going north when the player is in Jungle 8:
	say "A tall, marble wall blocks your path.";
	stop the action.
	
Southern Tower Entrance is east of Jungle 8 and north of Jungle 3. Southern Tower Entrance is a room. The Southern Tower Sentinel is a man in the Southern Tower Entrance. "[if Southern Tower Sentinel is not dead]A sentinal sees you round the corner of his post and yells 'HALT!' He readies his blade, awaiting your strike." Southern Tower Door is north of Southern Tower Entrance. Southern Tower Door is south of Ground Floor 8. Southern Tower Door is a secret door. Southern Tower Door is locked. Southern Tower door is scenery.
Southern Tower Entrance Fight is a recurring scene.
Southern Tower Entrance Fight begins when the player is in the Southern Tower Entrance .
Every turn during the Southern Tower Entrance Fight:
	now the left hand status line is "Southern Tower Sentinel: [current hit points of Southern Tower Sentinel]";
	now the player is hostile;
	if the Southern Tower Sentinel is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Southern Tower Sentinel: Deceased";
		now the Southern Tower Door is revealed;
		now the Southern Tower Door is open;
		say "With the sentinel dispatched, the southern entrance to the Marble Tower is unblocked.";
		now the Southern Tower Sentinel is nowhere.
Southern Tower Entrance Fight ends when the player is not in the Southern Tower Entrance .	
When Southern Tower Entrance Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".

Jungle 10 is east of Southern Tower Entrance and north of Jungle 4. Jungle 10 is a room. "[if Southern Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name of Jungle 10:
	say "Jungle".
Instead of going north when the player is in Jungle 10:
	say "A tall, marble wall blocks your path.";
	stop the action.
	
Jungle 11 is east of Jungle 10 and north of Jungle 5. Jungle 11 is a room.
Rule for printing the name of Jungle 11:
	say "Jungle".
	
Jungle 12 is east of Jungle 11. Jungle 12 is a room.
Rule for printing the name of Jungle 12:
	say "Jungle".
Instead of going south when the player is in Jungle 12:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
Instead of going east when the player is in Jungle 12:
	say "The jungle thickens and prevents you from going further.";
	stop the action.

Jungle 13 is north of Jungle 6. Jungle 13 is a room.
Rule for printing the name of Jungle 13:
	say "Jungle".
Instead of going west when the player is in Jungle 13:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 14 is east of Jungle 13 and north of Jungle 7. Jungle 14 is a room. "[if Western Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name Jungle 14:
	say "Jungle".
Instead of going east when the player is in Jungle 14:
	say "A tall, marble wall blocks your path.";
	stop the action.
	
Jungle 18 is north of Jungle 11. Jungle 18 is a room. "[if Eastern Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name of Jungle 18:
	say "Jungle".
Instead of going west when the player is in Jungle 18:
	say "A tall, marble wall blocks your path.";
	stop the action.
	
Jungle 19 is east of Jungle 18 and north of Jungle 12. Jungle 19 is a room.
Rule for printing the name of Jungle 19:
	say "Jungle".
Instead of going east when the player is in Jungle 19:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 20 is north of Jungle 13. Jungle 20 is a room. "[if Western Tower Sentinel is not dead]You feel someone watching you."
Rule for printing the name of Jungle 20:
	say "Jungle".
Instead of going west when the player is in Jungle 20:
	say "The jungle thickens and prevents you from going further.";
	stop the action.

Western Tower Entrance is east of Jungle 20 and north of Jungle 14. Western Tower Entrance is a room. Western Tower Sentinel is a man in Western Tower Entrance. "[If Western Tower Sentinel is not dead]A sentinel sees you round the corner of his post and yells 'HALT!'. He readies his blade, awaiting your strike." Western Tower Door is east of Western Tower Entrance. Western Tower Door is west of Ground Floor 4. Western Tower Door is a secret door. Western Tower Door is locked. Western Tower Door is scenery.
Western Tower Entrance Fight is a recurring scene.
Western Tower Entrance Fight begins when the player is in the Western Tower Entrance.
Every turn during the Western Tower Entrance Fight:
	now the left hand status line is "Western Tower Sentinel: [current hit points of Western Tower Sentinel]";
	now the player is hostile;
	if the Western Tower Sentinel is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Western Tower Sentinel: Deceased";
		now the Western Tower Door is revealed;
		now the Western Tower Door is open;
		say "With the sentinel dispatched, the western entrance to the Marble Tower is unblocked.";
		now the Western Tower Sentinel is nowhere.
Western Tower Entrance Fight ends when the player is not in the Western Tower Entrance.	
When Western Tower Entrance Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".
	
Eastern Tower Entrance is north of Jungle 18. Eastern Tower Entrance is a room. Eastern Tower Sentinel is a man in Eastern Tower Entrance. "[if Eastern Tower Sentinel is not dead]A sentinel sees you round the corner of his post and yells 'HALT!'. He readies his blade, awaiting your strike." Eastern Tower Door is west of Eastern Tower Entrance. Eastern Tower Door is east of Ground Floor 6. Eastern Tower Door is a secret door. Eastern Tower Door is locked. Eastern Tower Door is scenery.
Eastern Tower Entrance Fight is a recurring scene.
Eastern Tower Entrance Fight begins when the player is in the Eastern Tower Entrance.
Every turn during the Eastern Tower Entrance Fight:
	now the left hand status line is "Eastern Tower Sentinel: [current hit points of Eastern Tower Sentinel]";
	now the player is hostile;
	if the Eastern Tower Sentinel is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Eastern Tower Sentinel: Deceased";
		now the Eastern Tower Door is revealed;
		now the Eastern Tower Door is open;
		say "With the sentinel dispatched, the western entrance to the Marble Tower is unblocked.";
		now the Eastern Tower Sentinel is nowhere.
Eastern Tower Entrance Fight ends when the player is not in the Eastern Tower Entrance.	
When Eastern Tower Entrance Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".
	
Jungle 26 is east of Eastern Tower Entrance and north of Jungle 19. Jungle 26 is a room. "[if Eastern Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name of Jungle 26:
	say "Jungle".
Instead of going east when the player is in Jungle 26:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 27 is north of Jungle 20. Jungle 27 is a room. 
Rule for printing the name of Jungle 27:
	say "Jungle".
Instead of going west when the player is in Jungle 27:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 28 is east of Jungle 27 and north of Western Tower Entrance. Jungle 28 is a room. "[if Western Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name of Jungle 28:
	say "Jungle".
Instead of going east when the player is in Jungle 28:
	say "A tall, marble wall blocks your path.";
	stop the action.
	
Jungle 32 is north of Eastern Tower Entrance. Jungle 32 is a room. "[if Eastern Tower Sentinel is not dead]You feel someone watching you..."
Rule for printing the name of Jungle 32:
	say "Jungle".
Instead of going west when the player is in Jungle 32:
	say "There is a tall wall here.";
	stop the action.
	
Jungle 33 is east of Jungle 32 and north of Jungle 26. Jungle 33 is a room.
Rule for printing the name of Jungle 33:
	say "Jungle".
Instead of going east when the player is in Jungle 33:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
	
Jungle 34 is north of Jungle 27. Jungle 34 is a room. 
Rule for printing the name of Jungle 34:
	say "Jungle".
Instead of going west when the player is in Jungle 34:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
Instead of going north when the player is in Jungle 34:
	say "There are dangerous creatures in the water.";
	stop the action.
	
Jungle 35 is east of Jungle 34 and north of Jungle 28.
Rule for printing the name of Jungle 35:
	say "Jungle".
	
Jungle 36 is east of Jungle 35. Jungle 36 is a room.
Rule for printing the name of Jungle 36:
	say "Jungle".
Instead of going south when the player is in Jungle 36:
	say "A tall, marble wall blocks your path.";
	stop the action.
	
Northern Tower Entrance is east of Jungle 36. Northern Tower Entrance is a room. "There doesn't appear to be anyone protecting the northern entrance of the Marble Tower." Northern Tower Door is south of Northern Tower Entrance. Northern Tower Door is a door. Northern Tower Door is scenery. 
Jungle 38 is east of Northern Tower Entrance. Jungle 38 is a room.
Rule for printing the name of Jungle 38:
	say "Jungle".
Instead of going south when the player is in Jungle 38:
	say "A tall, marble wall blocks your path.";
	stop the action.
	
Jungle 39 is east of Jungle 38 and north of Jungle 32. Jungle 39 is a room.
Rule for printing the name of Jungle 39:
	say "Jungle".

Jungle 40 is east of Jungle 39 and north of Jungle 33. Jungle 40 is a room. 
Rule for printing the name of Jungle 40:
	say "Jungle".
Instead of going east when the player is in Jungle 40:
	say "The jungle thickens and prevents you from going further.";
	stop the action.
Instead of going north when the player is in Jungle 40:
	say "There are dangerous creatures in the water.";
	stop the action.
	
Beach 1 is north of Jungle 35. Beach 1 is a room. "The ocean breeze refreshes you. You can't wait to be off this god forsaken island."
Rule for printing the name of Beach 1:
	say "Beach".
Instead of going west when the player is in Beach 1:
	say "Unfortunately you don't know how to swim. It would be unwise to jump into the water.";
	stop the action.
Instead of going north when the player is in Beach 1:
	say "You peer out into the ocean and see a gigantic figure wading in the waters below. You fear what sort of creatures and monsters reside in the deep ocean depths.";
	stop the action.
	
Beach 2 is east of Beach 1 and north of Jungle 36. Beach 2 is a room. "You see a broken up rowboat with two paddles strewn across the sand. The wood is rotting and the paddles are covered in algae."
Rule for printing the name of Beach 2:
	say "Beach".
Instead of going north when the player is in Beach 2:
	say "The ocean breeze refreshes you. You can't wait to be off this god forsaken island.";
	stop the action.
	
Beach 4 is east of Beach 3 and north of Jungle 38. Beach 4 is a room. "You see a broken up rowboat with two paddles strewn across the sand. The wood is rotting and the paddles are covered in algae."
Rule for printing the name of Beach 4:
	say "Beach".
Instead of going north when the player is in Beach 4:
	say "Unfortunately you don't know how to swim. It would be unwise to jump into the water.";
	stop the action.
	
Beach 5 is east of Beach 4 and north of Jungle 39. Beach 5 is a room. Dented Compass is in Beach 5.
Rule for printing the name of Beach 5:
	say "Beach".
Instead of going north when the player is in Beach 5:
	say "You peer out into the ocean and see a gigantic figure wading in the waters below. You fear what sort of creatures and monsters reside in the deep ocean depths.";
	stop the action.
Instead of going east when the player is in Beach 5:
	say "The ocean breeze refreshes you. You can't wait to be off this god forsaken island.";
	stop the action.
	
Beach 3 is east of Beach 2 and north of Northern Tower Entrance. Beach 3 is a room. "There's a boat here but it appears to be out of commission."
Rule for printing the name of Beach 3:
	say "Beach".

Part 2 - Marble Tower Chapter

Ground Floor Staircase is west of Ground Floor 2 and north of Ground Floor 4. Ground Floor Staircase is a room. "[if Overseer is not dead]You fear what lives up above in the Marble Tower."
Ground Floor 2 is south of Northern Tower Door. Ground Floor 2 is a room. "You're greeted by a musky scent and a wave of paranoia. 'What's a Marble Tower doing randomly in the middle of a jungle?'"
Rule for printing the name of Ground Floor 2:
	say "Ground Floor".
	
Ground Floor 3 is east of Ground Floor 2 and north of Ground Floor 6. Ground Floor 3 is a room. Powerful weapon is a thing in Ground Floor 3. Living Statue is a man in Ground Floor 3. "There is a statue of a guard holding a weapon. The weapon is free from his hands and looks like you can take it."
Rule for printing the name of Ground Floor 3:
	say "Ground Floor".
Living Statue Fight is a scene. 
Runic Claymore is in the Void. 
Instead of taking the Powerful weapon: 
	say "As you reach out to grab the powerful weapon the eyes of the statue begin to glow as it comes to life! Its stone hands grip the handle of the weapon readying itself for battle.";
	now the powerful weapon is nowhere. 
Living Statue Fight begins when the powerful weapon is nowhere. 
Every turn during the Living Statue fight: 
	now the left hand status line is "Living Statue: [current hit points of Living Statue]";
	now the player is hostile;
	if the Living Statue is dead:
		now the player is docile;
		now the player is notHit;
		now the Living Statue is docile; 
		now the left hand status line is "Living Statue: Deceased";
		if the Runic Claymore is in the Void:
			now the Runic Claymore is in Ground Floor 3;
			say "The Living Statue crumbles to rocks and rubble, and the weapon falls to the floor. Upon further inspection, it looks like a Runic Claymore.";
		now the Living Statue is nowhere. 
Living Statue Fight ends when the player is not in Ground Floor 3.
When Living Statue Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".
	
Ground Floor 4 is east of Western Tower Door. Ground Floor 4 is a room. "You notice that the walls are crystal clean and that everything remains polished. Extremely odd for a wretched island."
Rule for printing the name of Ground Floor 4:
	say "Ground Floor".
	
Ground Floor 6 is east of Ground Floor Center and west of Eastern Tower Door. Ground Floor 6 is a room. "The furniture of the room is grandeur. A red velvet carpet is the centerpiece of the room, with a chandelier hanging from the ceiling. Display cases showcasing formidable weapons are placed strategically as to boast about one's collection of unique gear."
Rule for printing the name of Ground Floor 6:
	say "Ground Floor".
	
Ground Floor 7 is south of Ground Floor 4. Ground Floor 7 is a room. "Four mannequins stand in the four corners of the room. Each are outfitted with a set of full armour: mithril, adamant, rune, and dragon."
Rule for printing the name of Ground Floor 7:
	say "Ground Floor".
In Ground Floor 7 is an openable container called Overseer's Chest. Overseer's Chest is closed. The Overseer's Chest is fixed in place. "[if open]The Overseer's Chest is open.[else]The Overseer's Chest is closed." In Overseer's Chest is a thing called Dried Fish. In Overseer's Chest is a thing called Knightly Plate. In the Overseer's Chest is a thing called Leather Pouch.
Rule for printing the name of Overseer's Chest:
	say "[printed name of Overseer's Chest]";
	omit contents in listing.
	
Ground Floor 8 is east of Ground Floor 7 and south of Ground Floor Center and north of Southern Tower Door. Ground Floor 8 is a room. "The room here is brighty lit and gives you a good view of the room. You marvel at how spectacular it looks."
Rule for printing the name of Ground Floor 8:
	say "Ground Floor".
	
Ground Floor 9 is east of Ground Floor 8 and south of Ground Floor 6. Ground Floor 9 is a room. Loose Brick is a thing in Ground Floor 9. Loose Brick is fixed in place."One of the bricks of the Marble Tower slightly protrudes from the wall." Diamond is a thing.
Rule for printing the name of Ground Floor 9:
	say "Ground Floor".
Instead of pulling the Loose Brick:
	say "You move the loose stone out of the way to reveal a small compartment that contains a single, shining diamond.";
	now the Loose Brick is nowhere.
Loose Brick Moving is a scene.
Loose Brick Moving begins when the Loose Brick is nowhere.
When Loose Brick Moving begins:
	move Diamond to Ground Floor 9.
Loose Brick Moving ends when Diamond is in Ground Floor 9.

Ground Floor Center is east of Ground Floor 4 and south of Ground Floor 2. Ground Floor Center is a room. Carpet is a thing in Ground Floor Center. "You stand in the middle of the room. You look at the carpet you're standing on and you realize that it's slightly at an angle. And at the section where it reveals the marble floor beneath you, you notice a sliver of something metal." Metal Grating is below Ground Floor Center. Metal Grating is a door. Metal Grating is locked. The Cryptic Key unlocks the Metal Grating. Metal Grating is scenery.
Instead of pushing Carpet:
	say "You push the carpet out of the way and you reveal a metal grating underneath the floor.".

Second Floor Entrance is above Ground Floor Staircase. Second Floor Entrance is a room. "You wonder how long you've been on this island."
Northern Tower Window is east of Second Floor Entrance. Northern Tower Window is a room. "You can see the edge of the island from here."
Dim Hallway is south of Northern Tower Window. Dim Hallway is a room. Armoured Guard is a man in the Dim Hallway. "'None will see the Overseer without my permission,' an armoured guard says, raising his shield."
Dim Hallway Fight is a recurring scene.
Dim Hallway Fight begins when the player is in the Dim Hallway.
Every turn during the Dim Hallway Fight:
	now the left hand status line is "Armoured Guard: [current hit points of Armoured Guard]";
	now the player is hostile;
	if the Armoured Guard is dead:
		now the left hand status line is "Armoured Guard: Deceased";
		now the player is docile;
		now the player is notHit;
		now the Second Floor Door is unlocked;
		say "With the armoured guard dead, you can proceed up through the tower.";
		now the Armoured Guard is nowhere.
Dim Hallway Fight ends when the player is not in the Dim Hallway.	
When Dim Hallway Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".

Second Floor Door is south of Dim Hallway. Second Floor Door is a door. Second Floor Door is locked. Second Floor Door is scenery.
Southern Tower Window is south of Second Floor Door. Southern Tower Window is a room. "The prison does not look any better from above."
Tower Supply Closet is west of Southern Tower Window. Tower Supply Closet is a room. "You wonder why such a pristine tower built of marble has such a dirty supply closet."
In Tower Supply Closet is an openable container called Supply Chest. Supply Chest is closed. Supply Chest is fixed in place. "[if open]In the cest you see a set of armour that looks better than your current gear: Defender Sallet, Righteous Armour, Leather Gloves, Plated Leggings, Steel Boots, and an Armoured Kite Shield.[else]In the closet however, is a sturdy chest." Defender Sallet is in Supply Chest. Righteous Armour is in Supply Chest. Leather Gloves is in Supply Chest. Plated Leggings is in Supply Chest. Steel Boots is in Supply Chest. Armoured Kite Shield is in Supply Chest.

Second Floor Staircase is east of Southern Tower Window. Second Floor Staircase is a room. "You wonder how high the tower goes up."
Third Floor Entrance is above Second Floor Staircase. Third Floor Entrance is a room. "As you move through the tower, you wonder about the Overseer."
Eastern Tower Window is north of Third Floor Entrance. Eastern Tower Window is a room. "You see birds flying out from the tops of trees."
Tower Hallway is west of Eastern Tower Window. Tower Hallway is a room. Reinforced Guard is a man in the Tower Hallway. "'If you think you can get past me just because you killed the Armoured Guard, that doesn't mean a thing,' says another guard."
Tower Hallway Fight is a recurring scene.
Tower Hallway Fight begins when the player is in the Tower Hallway.
Every turn during the Tower Hallway Fight:
	now the left hand status line is "Reinforced Guard: [current hit points of Reinforced Guard]";
	now the player is hostile;
	if the Reinforced Guard is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Reinforced Guard: Deceased";
		now the Third Floor Door is unlocked;
		say "You're starting to get tired of killing these worthless enemies. You hope the Overseer can put up a match.";
		now the Reinforced Guard is nowhere.
Tower Hallway Fight ends when the player is not in the Tower Hallway.	
When Tower Hallway Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".

Third Floor Door is west of Tower Hallway. Third Floor Door is a door. Third Floor Door is locked. Third Floor Door is scenery.
Western Tower Window is west of Third Floor Door. Western Tower Window is a room. "There are things stirring in the jungle."
Third Floor Staircase is north of Western Tower Window. Third Floor Staircase is a room. "The stairs ahead are dark."
Dusty Stairwell is above Third Floor Staircase. Dusty Stairwell is a room. "The dust from the steps make you cough."
Dusty Stairwell Corner is east of Dusty Stairwell. Dusty Stairwell Corner is a room. "You see some light near the top of the stairwell."
Rule for printing the name of Dusty Stairwell Corner:
	say "Dusty Stairwell".
	
Dusty Stairwell End is south of Dusty Stairwell Corner. Dusty Stairwell End is a room. "The light is really bright here."
Rule for printing the name of Dusty Stairwell End:
	say "Dusty Stairwell".
	
Top Floor is above Dusty Stairwell End. Top Floor is a room. "[if Overseer is not dead]Ahead of you lies a person quietly looking out to the sea with his back turned to you."
Western Outlook is west of Top Floor. Western Outlook is a room. "The jungle stretches beyond the horizon."
Eastern Outlook is east of Top Floor. Eastern Outlook is a room. "The jungle looks beautiful yet scary."
Southern Outlook is south of Top Floor. Southern Outlook is a room. "The prison looks small in this immense jungle."
Northern Outlook is north of Top Floor. Northern Outlook is a room. The Overseer is a man in Northern Outlook. "'I see you've made it this far,' the man says without turning around. 'I do not underestimate you. But you haven't a clue what you're up against. Kill me if you wish, but don't trust Ethiram.' The Overseer readies himself for combat."

Northern Outlook Fight is a recurring scene.
Northern Outlook Fight begins when the player is in the Northern Outlook.
Every turn during the Northern Outlook Fight:
	now the left hand status line is "Overseer: [current hit points of Overseer]";
	now the player is hostile;
	if the Overseer is dead:
		now the Overseer is nowhere; 
		now the left hand status line is "Corrupted Entity: [current hit points of Corrupted Entity]";
		now the Corrupted Entity is in the Northern Outlook;
	if the Corrupted Entity is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Corrupted Entity: Deceased";
		now the Overseer's Door is unlocked;
		say "With the fight over, you're free to roam the Overseer's room which lies to the east.";
		now the Corrupted Entity is nowhere;
		move the Overseer's Flail to Northern Tower Entrance;
		now Overseer's Exit is revealed;
		now Overseer's Exit is open.
Northern Outlook Fight ends when the player is not in the Northern Outlook.	
When Northern Outlook Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".
Overseer's Door is east of Northern Outlook. Overseer's Door is a door. Overseer's Door is locked. Overseer's Door is scenery.
Overseer's Room is east of Overseer's Door. Overseer's Room is a room. Overseer's Exit is a secret door. Overseer's Exit is inside from Overseer's Room and outside from the Ground Floor Center.
In Overseer's Room is an openable container called Overseer's Cache. Overseer's Cache is closed. Overseer's Cache is fixed in place. Understand "chest" as Overseer's Cache. "[if open]In the chest you see a key with a note attached to it that reads, 'The Cryptic Key will unlock what lies below the tower.'[else]The room is filled with fancy decor and a grandeur bed. At the foot of the bed is a chest. You see an opening in the floor that you believe will take you to the base of the tower." In Overseer's Cache is a thing called Cryptic Key.

Book 3 - Below Ground

Desolate Cavern is below Metal Grating. Desolate Cavern is a room. Lantern is a thing in Desolate Cavern. Lantern is lit. "You muster up the courage to hop down the hole in the floor, but you fall for what seemed like ages. Eventually you stopped falling and when you opened your eyes you were greeted by the flame of a lantern, suspended in the air, surrounded by darkness."

Foreboding Hallway is north of Desolate Cavern. Foreboding Hallway is a dark room. "You walk through the darkness. Below you is a skinny, rocky pathway leading to more darkness. If you lean too far left or right, you could fall. Who knows how much further down you can fall..."

Heretic's Ledge is southeast of Abandoned Cages. Heretic's Ledge is a dark room. "A strange aura radiates from the cage. There is an inscription carved into the door."
Heretic's Inscription is a thing in Heretic's Ledge. Heretic's Inscription is fixed in place. Heretic's Inscription is scenery. The description of Heretic's Inscription is "Alva, Preacher of False Gods"

Arsonist's Ledge is west of Abandoned Cages. Arsonist's Ledge is a dark room. "Half of the cage has been melted away. There is an inscription carved into the door."
Arsonist's Inscription is a thing in Arsonist's Ledge. Arsonist's Inscription is fixed in place. Arsonist's Inscription is scenery. The description of Arsonist's Inscription is "Agrias, Omen of Flame"

Charlatan's Ledge is east of Abandoned Cages. Charlatan's Ledge is a dark room. "The door of the cage is wide open. There is an inscription carved into the door."
Charlatan's Inscription is a thing in Charlatan's Ledge. Charlatan's Inscription is fixed in place. Charlatan's Inscription is scenery. The description of Charlatan's Inscription is "Philea, Weaver of Lies"

Cutthroat's Ledge is south of Abandoned Cages. Cutthroat's Ledge is north of Foreboding Hallway. Cutthroat's Ledge is a dark room. "There are two blood-stained cages here. There is an inscription carved into each door."
Left Cutthroat's Inscription is a thing in Cutthroat's Ledge. Left Cutthroat's Inscription is fixed in place. Left Cutthroat's Inscription is scenery. The description of Left Cutthroat's Inscription is "Syth, Disciple of Death[line break]Underneath the inscription it reads: 'The first number is the number of rooms there resides in this hell hole, not including the centerpiece.'".
Right Cutthroat's Inscription is a thing in Cutthroat's Ledge. Right Cutthroat's Inscription is fixed in place. Right Cutthroat's Inscription is scenery. The description of Right Cutthroat's Inscription is "Xanus, Herald of Agony[line break]Underneath the inscription it reads: The number after Syth's is the number that means Trinity.'"

Abandoned Cages is a dark room. The Safe is here. The safe is a container. The Safe is closed and fixed in place. Understand "dial" and "glass dial" as the Safe. "[if the player is in Abandoned Cages for the first time]In the center of this room is a pedastal. Attached to the pedastal is a glass dial. You wonder curiously what a dial could have to do with everything going on.[else]Do you think you have all the numbers to crack the dial?"
Spinning it to is an action applying to one thing and one number. Check spinning it to: if the noun is not the Safe, say "[The noun] does not spin." instead. Report spinning it to: say "You dial in a number."
Understand "spin [something] to [a number]" as spinning it to.
After spinning the closed Safe to 8318: now the Safe is open; say "After spinning in all four numbers in, a portal materializes behind you. 'Go through it,' a voice in your head that vaguely sounds like Ethiram whispers.";
	now Portal is revealed;
	now Portal is open.
Portal is a secret door. Portal is inside from the Abandoned Cages and outside from the Edge of Shadows. 

Necromancer's Ledge is northwest of Abandoned Cages. Necromancer's Ledge is a dark room. "The cage's walls are marked with cryptic symbols. There is an inscription carved into the door."
Necromancer's Inscription is a thing in Necromancer's Ledge. Necromancer's Inscription is fixed in place. Necromancer's Inscription is scenery. The description of Necromancer's Inscription is "Ivvanus, Bridge of the Afterlife[line break]Underneath the inscription it reads: 'The last number you seek is equal to the first.'"

Cannibal's Ledge is northeast of Abandoned Cages. Cannibal's Ledge is a dark room. "The floor of the cage is littered with human limbs. There is an inscription carved into the door."
Cannibal's Inscription is a thing in Cannibal's Ledge. Cannibal's Inscription is fixed in place. Cannibal's Inscription is scenery. The description of Cannibal's Inscription is "Drothos, Consumer of Flesh[line break]Underneath the inscription it reads: 'The third digit you seek is the number of mysterious beings you have encountered.'"

Alchemist's Ledge is southwest of Abandoned Cages. Alchemist's Ledge is a dark room. "The stench of ancient remedies seeps from the cage. There is an inscription carved into the door."
Alchemist's Inscription is a thing in Alchemist's Ledge. Alchemist's Inscription is fixed in place. Alchemist's Inscription is scenery. The description of Alchemist's Inscription is "Wyvir, Occultist of the Arcane"

Traitor's Ledge is north of Abandoned Cages. Traitor's Ledge is a dark room. "The cage here is empty yet there is an inscription on the door."
Traitor's Inscription is a thing in Traitor's Ledge. Traitor's Inscription is fixed in place. Traitor's Inscription is scenery. The description of Traitor's Inscription is "Exalted King Zoric, Betrayer of his Kin"
	
Book 4 - Shadow Realm

Edge of Shadows is a room.
Shadow Realm Starting is a scene.
Shadow Realm Starting begins when the player is in Edge of Shadows.
When Shadow Realm Starting begins:
	now the time of day is 12:00 PM;
	say "'Where are you?' a voice echoes in your head.[line break]You look around you, confused. All you can see is darkness. You fear taking a single step in any direction. The fear subsides as a dark purple hue emerges from nowhere with Ethiram's voice saying, 'Start walking. The portal didn't take you to me. You're at the edge of the Shadow Realm. Just find your way to me, but be careful, dangerous spectres lurk in the shadows.'";
	now Portal is unrevealed;
	now Portal is closed.
Shadow Realm Starting ends when the player is in Edge of Shadows.
	
At 12:14 PM:
	say "'You have to keep a move on. Neither of us can get back to the real world without you.' Ethiram is somehow able to telepathically talk to you. You warily wonder what else he is capable of.".
	
S1 is a room. S1 is north of Edge of Shadows.
Rule for printing the name of S1:
	say "Plane of Nonexistence".
	
S2 is a room. S2 is west of Edge of Shadows.
Rule for printing the name of S2:
	say "Plane of Nonexistence".
	
S3 is a room. S3 is west of S2.
Rule for printing the name of S3:
	say "Plane of Nonexistence".
	
S4 is a room. S4 is south of S3.
Rule for printing the name of S4:
	say "Plane of Nonexistence".
	
S5 is a room. S5 is west of S4.
Rule for printing the name of S5:
	say "Plane of Nonexistence".
	
S6 is a room. S6 is south of S4. In S6 is a man called the Ghostly Apparition 1. 
Rule for printing the name of S6:
	say "Plane of Nonexistence".
S6 Fight is a scene.
S6 Fight begins when the player is in S6.
When S6 Fight begins:
	say "You see a Ghostly Apparition";
Every turn during S6 Fight: 
	now the left hand status line is "Ghostly Apparition: [current hit points of Ghostly Apparition]";
	now the player is hostile;
	now the printed name of Ghostly Apparition 1 is "Ghostly Apparition";
	now the Ghostly Apparition 1 is proper-named;
	if the Ghostly Apparition 1 is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Ghostly Apparition: Deceased";
		now the Ghostly Apparition 1 is nowhere.
S6 Fight ends when the Ghostly Apparition 1 is dead.
	
S7 is a room. S7 is south of S6.
Rule for printing the name of S7:
	say "Plane of Nonexistence".
	
S8 is a room. S8 is southeast of S7.
Rule for printing the name of S8:
	say "Plane of Nonexistence".
	
S9 is a room. S9 is northeast of S8.
Rule for printing the name of S9:
	say "Plane of Nonexistence".
	
S10 is a room. S10 is southeast of S9.
Rule for printing the name of S10:
	say "Plane of Nonexistence".
	
S11 is a room. S11 is east of S10.
Rule for printing the name of S11:
	say "Plane of Nonexistence".
	
S12 is a room. S12 is east of S11.
Rule for printing the name of S12:
	say "Plane of Nonexistence".
	
S13 is a room. S13 is northeast of S12.
Rule for printing the name of S13:
	say "Plane of Nonexistence".
	
S14 is a room. S14 is northwest of S13.
Rule for printing the name of S14:
	say "Plane of Nonexistence".
	
S15 is a room. S15 is west of S14.
Rule for printing the name of S15:
	say "Plane of Nonexistence".
	
S16 is a room. S16 is north of S9.
Rule for printing the name of S16:
	say "Plane of Nonexistence".
	
S17 is a room. S17 is southeast of Edge of Shadows and northeast of S16 and northwest of S15.
Rule for printing the name of S17:
	say "Plane of Nonexistence".
	
S18 is a room. S18 is northeast of S14.
Rule for printing the name of S18:
	say "Plane of Nonexistence".
	
S19 is a room. S19 is east of S18.
Rule for printing the name of S19:
	say "Plane of Nonexistence".
	
S20 is a room. S20 is northeast of S19.
Rule for printing the name of S20:
	say "Plane of Nonexistence".
	
S21 is a room. S21 is southeast of S20.
Rule for printing the name of S21:
	say "Plane of Nonexistence".
	
S22 is a room. S22 is southeast of S21.
Rule for printing the name of S22:
	say "Plane of Nonexistence".
	
S23 is a room. S23 is east of S22.
Rule for printing the name of S23:
	say "Plane of Nonexistence".
	
S24 is a room. S24 is northeast of S23.
Rule for printing the name of S24:
	say "Plane of Nonexistence".
	
S25 is a room. S25 is north of S24.
Rule for printing the name of S25:
	say "Plane of Nonexistence".
	
S26 is a room. S26 is northwest of S25.
Rule for printing the name of S26:
	say "Plane of Nonexistence".
	
S27 is a room. S27 is northeast of S25.
Rule for printing the name of S27:
	say "Plane of Nonexistence".
	
S28 is a room. S28 is northeast of S26 and northwest of S27.
Rule for printing the name of S28:
	say "Plane of Nonexistence".
	
S29 is a room. S29 is north of S28.
Rule for printing the name of S29:
	say "Plane of Nonexistence".
	
S30 is a room. S30 is west of S29.
Rule for printing the name of S30:
	say "Plane of Nonexistence".
	
S31 is a room. S31 is west of S30.
Rule for printing the name of S31:
	say "Plane of Nonexistence".
	
S32 is a room. S32 is southwest of S31.
Rule for printing the name of S32:
	say "Plane of Nonexistence".
	
S33 is a room. S33 is west of S32.
Rule for printing the name of S33:
	say "Plane of Nonexistence".
	
S34 is a room. S34 is northwest of S33.
Rule for printing the name of S34:
	say "Plane of Nonexistence".
	
S35 is a room. S35 is southwest of S34.
Rule for printing the name of S35:
	say "Plane of Nonexistence".
	
S36 is a room. S36 is south of S35.
Rule for printing the name of S36:
	say "Plane of Nonexistence".
	
S37 is a room. S37 is west of S36.
Rule for printing the name of S37:
	say "Plane of Nonexistence".
	
S38 is a room. S38 is west of S37.
Rule for printing the name of S38:
	say "Plane of Nonexistence".
	
S39 is a room. S39 is northwest of S38 and northeast of S1.
Rule for printing the name of S39:
	say "Plane of Nonexistence".
	
S40 is a room. S40 is northwest of S5.
Rule for printing the name of S40:
	say "Plane of Nonexistence".
	
S41 is a room. S41 is north of S40.
Rule for printing the name of S41:
	say "Plane of Nonexistence".
	
S42 is a room. S42 is northeast of S41.
Rule for printing the name of S42:
	say "Plane of Nonexistence".
	
S43 is a room. S43 is northeast of S42.
Rule for printing the name of S43:
	say "Plane of Nonexistence".
	
S44 is a room. S44 is north of S43.
Rule for printing the name of S44:
	say "Plane of Nonexistence".
	
S45 is a room. S45 is west of S44.
Rule for printing the name of S45:
	say "Plane of Nonexistence".
	
S46 is a room. S46 is north of S45.
Rule for printing the name of S46:
	say "Plane of Nonexistence".
	
S47 is a room. S47 is west of S46.
Rule for printing the name of S47:
	say "Plane of Nonexistence".
	
S48 is a room. S48 is north of S46.
Rule for printing the name of S48:
	say "Plane of Nonexistence".
	
S49 is a room. S49 is northeast of S48.
Rule for printing the name of S49:
	say "Plane of Nonexistence".
	
S50 is a room. S50 is east of S49.
Rule for printing the name of S50:
	say "Plane of Nonexistence".
	
S51 is a room. S51 is east of S50.
Rule for printing the name of S51:
	say "Plane of Nonexistence".
	
S52 is a room. S52 is south of S51.
Rule for printing the name of S52:
	say "Plane of Nonexistence".
	
S53 is a room. S53 is southwest of S52 and northeast of S44.
Rule for printing the name of S53:
	say "Plane of Nonexistence".
	
S54 is a room. S54 is southeast of S53.
Rule for printing the name of S54:
	say "Plane of Nonexistence". 	
	
S55 is a room. S55 is south of S54.
Rule for printing the name of S55:
	say "Plane of Nonexistence".
	
S56 is a room. S56 is east of S55 and north of S39.
Rule for printing the name of S56:
	say "Plane of Nonexistence".
	
S57 is a room. S57 is north of S34.
Rule for printing the name of S57:
	say "Plane of Nonexistence". 	
	
S58 is a room. S58 is west of S57.
Rule for printing the name of S58:
	say "Plane of Nonexistence".
	
S59 is a room. S59 is north of S58.
Rule for printing the name of S59:
	say "Plane of Nonexistence".
	
S60 is a room. S60 is northwest of S59.
Rule for printing the name of S60:
	say "Plane of Nonexistence".
	
S61 is a room. S61 is west of S60.
Rule for printing the name of S61:
	say "Plane of Nonexistence".
	
S62 is a room. S62 is south of S61.
Rule for printing the name of S62:
	say "Plane of Nonexistence".
	
S63 is a room. S63 is north of S60.
Rule for printing the name of S63:
	say "Plane of Nonexistence".
	
S64 is a room. S64 is northeast of S63.
Rule for printing the name of S64:
	say "Plane of Nonexistence".
	
S65 is a room. S65 is northeast of S51.
Rule for printing the name of S65:
	say "Plane of Nonexistence".
	
S66 is a room. S66 is northwest of S65.
Rule for printing the name of S66:
	say "Plane of Nonexistence".
	
S67 is a room. S67 is north of S66.
Rule for printing the name of S67:
	say "Plane of Nonexistence".
	
S68 is a room. S68 is north of S67.
Rule for printing the name of S68:
	say "Plane of Nonexistence".
	
S69 is a room. S69 is east of S68.
Rule for printing the name of S69:
	say "Plane of Nonexistence".
	
S70 is a room. S70 is southeast of S69.
Rule for printing the name of S70:
	say "Plane of Nonexistence".
	
S71 is a room. S71 is east of S70.
Rule for printing the name of S71:
	say "Plane of Nonexistence".
	
S72 is a room. S72 is east of S71.
Rule for printing the name of S72:
	say "Plane of Nonexistence".
	
S73 is a room. S73 is north of S31.
Rule for printing the name of S73:
	say "Plane of Nonexistence".
	
S73 is a room. S73 is north of S31.
Rule for printing the name of S73:
	say "Plane of Nonexistence".
	
S74 is a room. S74 is west of S73.
Rule for printing the name of S74:
	say "Plane of Nonexistence".
	
S75 is a room. S75 is northeast of S73.
Rule for printing the name of S75:
	say "Plane of Nonexistence".
	
S76 is a room. S76 is northwest of S75.
Rule for printing the name of S76:
	say "Plane of Nonexistence".
	
S77 is a room. S77 is west of S76.
Rule for printing the name of S77:
	say "Plane of Nonexistence".
	
S78 is a room. S78 is north of S77. "[if the player is in S78 for the first time]Approaching the corner of the shadows, you hear a low rumbling.[else]You still hear the low rumbling coming ahead."
Rule for printing the name of S78:
	say "Plane of Nonexistence".
	
S79 is a room. S79 is west of S78. "The rumbling ceases as you walk in the opposite direction."
Rule for printing the name of S79:
	say "Plane of Nonexistence".
	
S80 is a room. S80 is north of S79. "In this corner, you can hear a low rumbling."
Rule for printing the name of S80:
	say "Plane of Nonexistence".
	
S81 is a room. S81 is north of S80.
Rule for printing the name of S81:
	say "Plane of Nonexistence".
	
S82 is a room. S82 is west of S81 and southeast of S72 and northeast of S64.
Rule for printing the name of S82:
	say "Plane of Nonexistence".
	
S83 is a room. S83 is east of S80 and north of S78. "[if the player is in S83 for the first time]As you step closer, the rumbling gets louder. The ground begins to shake.[else]You realize this is the direction you need to go in. You brace yourself, preparing for whatever comes next."
Rule for printing the name of S83:
	say "Plane of Nonexistence".
	
S84 is a room. S84 is east of S83. "[if the player is in S84 for the first time]The rumbling is almost deafening, the ground is shaking as if there were an earthquake, you wonder what in God's creation could await you.[else]Walking away for the first time might have been easiest, but you can't escape the shadows if you don't find out what awaits you."
Rule for printing the name of S84:
	say "Plane of Nonexistence".
	
Temple is a room. Temple is north of S84. The Cannibal is a man in Temple. "You take another step into the darkness, ears bursting, legs quivering, and suddenly, it all stops. You peer into the shadows and realize you're standing in a temple-like room. Four pillars mark the corners of the temple floor. In the center of the temple, sitting quietly, is a man. It's obvious the man realized you entered his chambers as his head twitched slowly in your direction. He rises slowly. As he stands, his body size doubles, then triples, then quadruples, and it keeps growing until he's taller than the Marble Tower itself. Saliva drips from the corner of his mouth as one word escapes as he bares his teeth, 'Food...'".
Trapdoor is a secret door. Trapdoor is above F1 and below Temple.
Void is a room. Freed Prisoner is a man in the Void.
Cannibal Fight is a scene.
Cannibal Fight begins when the player is in the Temple.
When Cannibal Fight begins:
	now Trapdoor is unrevealed;
	now Trapdoor is closed;
	now time of day is 1:00 AM.
Every turn during the Cannibal Fight:
	now the left hand status line is "Cannibal: [current hit points of Cannibal]";
	now the player is hostile;
	if the Cannibal is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Cannibal: Incapacitated";
		now the Cannibal is nowhere;
		now Trapdoor is revealed;
		now Trapdoor is open;
		now the time of day is 3:00 AM.
Cannibal Fight ends when the time of day is 3:01 AM.	
When Cannibal Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "";
	now the Freed Prisoner is in Temple.
Freed Talking is a scene. 
Freed talking begins when Cannibal Fight ends.
Understand "Cannibal" and "him" as Freed Prisoner.
Instead of talking to Freed Prisoner during Freed Talking:
	say "'Ethiram...is not what he seems...' the Cannibal said. 'He turned me...into what you just killed...there are more...like me...' and the Cannibal, but who now looks like a prisoner from the Island, is no more. A dark shade erupts from his corpse and dissipates into the air.[line break]You look up from the cold, dead body and notice that in the center of the room is a trapdoor."

F1 is a room. F1 is below Trapdoor.
Rule for printing the name of F1:
	say "Sanctuary of the Forgotten".
Sanctuary Scene is a scene.
Sanctuary Scene begins when the player is in F1.
When Sanctuary Scene begins:
	now the time of day is 12:00 PM;
	say "'WHAT DID YOU DO!?' you can hear the shaking voice of Ethiram rattle the walls of your soul. You think to yourself 'Nothing...I think...I just killed someone who tried to kill me...'[line break]'You're right, you're right. You did nothing wrong...' the anger in his voice disappearing, but a hint of impatience replaces it. 'Just...be careful. Get to me quickly. Try to avoid fights from now on.'[line break]Ethiram is clearly acting strangely, and therefore decide to be cautious about him, a crazed, mystical being with ridiculous powers. You'll still kill things if they get in your way. But how did he read your mind...";
	now Trapdoor is unrevealed;
	now Trapdoor is closed.
Sanctuary Scene ends when the player is in F1.
	
F2 is a room. F2 is north of F1.
Rule for printing the name of F2:
	say "Sanctuary of the Forgotten".
	
F3 is a room. F3 is east of F1.
Rule for printing the name of F3:
	say "Sanctuary of the Forgotten".
	
F4 is a room. F4 is east of F3.
Rule for printing the name of F4:
	say "Sanctuary of the Forgotten".
	
F5 is a room. F5 is north of F4.
Rule for printing the name of F5:
	say "Sanctuary of the Forgotten".
	
F6 is a room. F6 is southeast of F4.
Rule for printing the name of F6:
	say "Sanctuary of the Forgotten".
	
F7 is a room. F7 is east of F6.
Rule for printing the name of F7:
	say "Sanctuary of the Forgotten".
	
F8 is a room. F8 is south of F6.
Rule for printing the name of F8:
	say "Sanctuary of the Forgotten".
	
F9 is a room. F9 is southeast of F8.
Rule for printing the name of F9:
	say "Sanctuary of the Forgotten".
	
F10 is a room. F10 is east of F9.
Rule for printing the name of F10:
	say "Sanctuary of the Forgotten".
	
F11 is a room. F11 is southeast of F10.
Rule for printing the name of F11:
	say "Sanctuary of the Forgotten".
	
F12 is a room. F12 is east of F11.
Rule for printing the name of F12:
	say "Sanctuary of the Forgotten".
	
F13 is a room. F13 is northeast of F12.
Rule for printing the name of F13:
	say "Sanctuary of the Forgotten".
	
F13 is a room. F14 is northeast of F13.
Rule for printing the name of F14:
	say "Sanctuary of the Forgotten".
	
F15 is a room. F15 is east of F14.
Rule for printing the name of F15:
	say "Sanctuary of the Forgotten".
	
F16 is a room. F16 is east of F15.
Rule for printing the name of F16:
	say "Sanctuary of the Forgotten".
	
F17 is a room. F17 is north of F16.
Rule for printing the name of F17:
	say "Sanctuary of the Forgotten".
	
F18 is a room. F18 is northwest of F14. "[if the player is in F19 for the first time]You hear demonic mumbling coming from the next room. As you get closer, the muttering intensifies and increases in speed. At this point it doesn't even sound human.[else]You fear what lies in the next room with the cursed whispers.".
Rule for printing the name of F18:
	say "Sanctuary of the Forgotten".
	
Desecrated Chapel is a room. Desecrated Chapel is north of F18. "You see a woman standing amongst an aisle of pews. Center stage lies an Altar, dressed with red fabrics and what lies atop as its center piece, a glowing red cross oozing blood and radiating fear. The woman notices your presence and stops her muttering."
Tome of Ancient Magicks is a thing in the Desecrated Chapel. The description of the Tome of Ancient Magicks is "It is unsafe for me to speak these words, however, if you are already reading this then I must be deceased. Perhaps that's for the better. Be warned Adventurer, Ethiram is not who he claims he is. He is a powerful and dangerous being. Stay wary and cautious at all times. Good luck.".
Understand "Tome" as Tome of Ancient Magicks.
The Heretic is a man in the Desecrated Chapel.
Heretic Fight is a recurring scene.
Heretic Fight begins when the player is in the Desecrated Chapel.
When Heretic Fight begins:
	now the time of day is 1:00 AM.
Every turn during the Heretic Fight:
	now the left hand status line is "Blasphemer of Gods: [current hit points of Heretic]";
	now the player is hostile;
	if the Heretic is dead:
		now the player is docile;
		now the player is notHit;
		now the left hand status line is "Blasphemer of Gods: Deceased";
		now the Heretic is nowhere;
		now the time of day is 3:00 AM.
Heretic Fight ends when the time of day is 3:01 AM.	
When Heretic Fight ends:
	now the player is docile;
	now the player is notHit;
	now the left hand status line is "".
Heretic Reveal is a scene.
Heretic Reveal begins when Heretic Fight ends.
When Heretic Reveal begins:
	say "it is unsafe for me to speak these words, however, if you are already reading this, then I must be no longer. Perhaps that is for the better. Be warned, Ethiram is not who he claims to be. He is a powerful and dangerous being. Stay way and cautious at all times. Good luck.".
Heretic Reveal ends when player is in F51.

F19 is a room. F19 is west of Desecrated Chapel. "[if the player is in F19 for the first time]You hear demonic mumbling coming from the next room. As you get closer, the muttering intensifies and increases in speed. At this point it doesn't even sound human.[else]You fear what lies in the next room with the cursed whispers.".
Rule for printing the name of F19:
	say "Sanctuary of the Forgotten".
	
F20 is a room. F20 is northeast of F7.
Rule for printing the name of F20:
	say "Sanctuary of the Forgotten".
	
F21 is a room. F21 is northeast of F20 and northwest of F19.
Rule for printing the name of F21:
	say "Sanctuary of the Forgotten".
	
F22 is a room. F22 is northeast of F17.
Rule for printing the name of F22:
	say "Sanctuary of the Forgotten".
	
F23 is a room. F23 is north of F22.
Rule for printing the name of F23:
	say "Sanctuary of the Forgotten".
	
F24 is a room. F24 is northwest of F23.
Rule for printing the name of F24:
	say "Sanctuary of the Forgotten".
	
F25 is a room. F25 is northeast of F24.
Rule for printing the name of F25:
	say "Sanctuary of the Forgotten".
	
F26 is a room. F26 is northeast of F25.
Rule for printing the name of F26:
	say "Sanctuary of the Forgotten".
	
F27 is a room. F27 is southeast of F26.
Rule for printing the name of F27:
	say "Sanctuary of the Forgotten".
	
F28 is a room. F28 is south of F27.
Rule for printing the name of F28:
	say "Sanctuary of the Forgotten".
	
F29 is a room. F29 is southeast of F28.
Rule for printing the name of F29:
	say "Sanctuary of the Forgotten".
	
F30 is a room. F30 is east of F29.
Rule for printing the name of F30:
	say "Sanctuary of the Forgotten".
	
F31 is a room. F31 is northeast of F30.
Rule for printing the name of F31:
	say "Sanctuary of the Forgotten".
	
F32 is a room. F32 is north of F31.
Rule for printing the name of F32:
	say "Sanctuary of the Forgotten".
	
F33 is a room. F33 is northeast of F32.
Rule for printing the name of F33:
	say "Sanctuary of the Forgotten".
	
F34 is a room. F34 is east of F33.
Rule for printing the name of F34:
	say "Sanctuary of the Forgotten".
	
F35 is a room. F35 is north of F34.
Rule for printing the name of F35:
	say "Sanctuary of the Forgotten".
	
F36 is a room. F36 is northwest of F35.
Rule for printing the name of F36:
	say "Sanctuary of the Forgotten".
	
F37 is a room. F37 is west of F36.
Rule for printing the name of F37:
	say "Sanctuary of the Forgotten".
	
F38 is a room. F38 is southwest of F37.
Rule for printing the name of F38:
	say "Sanctuary of the Forgotten".
	
F39 is a room. F39 is southwest of F38 and northeast of F27.
Rule for printing the name of F39:
	say "Sanctuary of the Forgotten".
	
F40 is a room. F40 is northwest of F37.
Rule for printing the name of F40:
	say "Sanctuary of the Forgotten".
	
F41 is a room. F41 is northwest of F40.
Rule for printing the name of F41:
	say "Sanctuary of the Forgotten".
	
F42 is a room. F42 is north of F41.
Rule for printing the name of F42:
	say "Sanctuary of the Forgotten".
	
F43 is a room. F43 is west of F42.
Rule for printing the name of F43:
	say "Sanctuary of the Forgotten".
	
F44 is a room. F44 is west of F43.
Rule for printing the name of F44:
	say "Sanctuary of the Forgotten".
	
F45 is a room. F45 is south of F44.
Rule for printing the name of F45:
	say "Sanctuary of the Forgotten".
	
Arsonist Arena is a room. Arsonist Arena is south of F45.

F46 is a room. F46 is southwest of Arsonist Arena.
Rule for printing the name of F46:
	say "Sanctuary of the Forgotten".
	
F47 is a room. F47 is south of F46.
Rule for printing the name of F47:
	say "Sanctuary of the Forgotten".
	
F48 is a room. F48 is east of F47 and north of F26.
Rule for printing the name of F48:
	say "Sanctuary of the Forgotten".
	
F49 is a room. F49 is north of F21.
Rule for printing the name of F49:
	say "Sanctuary of the Forgotten".
	
F50 is a room. F50 is northeast of F49.
Rule for printing the name of F50:
	say "Sanctuary of the Forgotten".
	
F51 is a room. F51 is southeast of F50 and north of Desecrated Chapel.
Rule for printing the name of F51:
	say "Sanctuary of the Forgotten".
	
F52 is a room. F52 is northeast of F51.
Rule for printing the name of F52:
	say "Sanctuary of the Forgotten".
	
F53 is a room. F53 is east of F52 and northwest of F24.
Rule for printing the name of F53:
	say "Sanctuary of the Forgotten".
	
F54 is a room. F54 is northeast of F5.
Rule for printing the name of F54:
	say "Sanctuary of the Forgotten".
	
F55 is a room. F55 is north of F54.
Rule for printing the name of F55:
	say "Sanctuary of the Forgotten".
	
F56 is a room. F56 is east of F55.
Rule for printing the name of F56:
	say "Sanctuary of the Forgotten".
	
F57 is a room. F57 is northeast of F56.
Rule for printing the name of F57:
	say "Sanctuary of the Forgotten".
	
F58 is a room. F58 is east of F57 and northwest of F50.
Rule for printing the name of F58:
	say "Sanctuary of the Forgotten".
	
F59 is a room. F59 is northeast of F58.
Rule for printing the name of F59:
	say "Sanctuary of the Forgotten".
	
F60 is a room. F60 is northwest of F59.
Rule for printing the name of F60:
	say "Sanctuary of the Forgotten".
	
F61 is a room. F61 is north of F60.
Rule for printing the name of F61:
	say "Sanctuary of the Forgotten".
	
F62 is a room. F62 is northeast of F61.
Rule for printing the name of F62:
	say "Sanctuary of the Forgotten".
	
Charlatan Arena is a room. Charlatan Arena is east of F62.

F63 is a room. F63 is northeast of Charlatan Arena.
Rule for printing the name of F63:
	say "Sanctuary of the Forgotten".
	
F64 is a room. F64 is southeast of F63.
Rule for printing the name of F64:
	say "Sanctuary of the Forgotten".
	
F65 is a room. F65 is south of F64.
Rule for printing the name of F65:
	say "Sanctuary of the Forgotten".
	
F66 is a room. F66 is southwest of F65.
Rule for printing the name of F66:
	say "Sanctuary of the Forgotten".
	
F67 is a room. F67 is southeast of F66.
Rule for printing the name of F67:
	say "Sanctuary of the Forgotten".
	
F68 is a room. F68 is south of F67 and north of F53.
Rule for printing the name of F68:
	say "Sanctuary of the Forgotten".
	
F69 is a room. F69 is northeast of F63.
Rule for printing the name of F69:
	say "Sanctuary of the Forgotten".
	
F70 is a room. F70 is east of F69.
Rule for printing the name of F70:
	say "Sanctuary of the Forgotten".
	
F71 is a room. F71 is east of F70 and northwest of F44.
Rule for printing the name of F71:
	say "Sanctuary of the Forgotten".
	
F72 is a room. F72 is northwest of F2.
Rule for printing the name of F72:
	say "Sanctuary of the Forgotten".
	
F73 is a room. F73 is north of F72.
Rule for printing the name of F73:
	say "Sanctuary of the Forgotten".
	
F74 is a room. F74 is northwest of F73.
Rule for printing the name of F74:
	say "Sanctuary of the Forgotten".
	
F75 is a room. F75 is north of F74.
Rule for printing the name of F75:
	say "Sanctuary of the Forgotten".
	
F76 is a room. F76 is west of F75.
Rule for printing the name of F76:
	say "Sanctuary of the Forgotten".
	
F77 is a room. F77 is northwest of F76.
Rule for printing the name of F77:
	say "Sanctuary of the Forgotten".
	
F78 is a room. F78 is southwest of F77.
Rule for printing the name of F78:
	say "Sanctuary of the Forgotten".
	
F79 is a room. F79 is south of F78.
Rule for printing the name of F79:
	say "Sanctuary of the Forgotten".
	
F80 is a room. F80 is southeast of F79.
Rule for printing the name of F80:
	say "Sanctuary of the Forgotten".
	
F81 is a room. F81 is southeast of F80.
Rule for printing the name of F81:
	say "Sanctuary of the Forgotten".
	
F82 is a room. F82 is east of F81 and west of F72.
Rule for printing the name of F82:
	say "Sanctuary of the Forgotten".
	
F83 is a room. F83 is northwest of F55.
Rule for printing the name of F83:
	say "Sanctuary of the Forgotten".
	
F84 is a room. F84 is west of F83.
Rule for printing the name of F84:
	say "Sanctuary of the Forgotten".
	
F85 is a room. F85 is northwest of F84.
Rule for printing the name of F85:
	say "Sanctuary of the Forgotten".
	
F86 is a room. F86 is north of F85.
Rule for printing the name of F86:
	say "Sanctuary of the Forgotten".
	
Cutthroat Arena is a room. Cutthroat Arena is northeast of F86.

F87 is a room. F87 is east of Cutthroat Arena.
Rule for printing the name of F87:
	say "Sanctuary of the Forgotten".
	
F88 is a room. F88 is southeast of F87.
Rule for printing the name of F88:
	say "Sanctuary of the Forgotten".
	
F89 is a room. F89 is northeast of F88.
Rule for printing the name of F89:
	say "Sanctuary of the Forgotten".
	
F90 is a room. F90 is east of F89 and west of F61.
Rule for printing the name of F90:
	say "Sanctuary of the Forgotten".
	
F91 is a room. F91 is northwest of F86.
Rule for printing the name of F91:
	say "Sanctuary of the Forgotten".
	
F92 is a room. F92 is west of F91.
Rule for printing the name of F92:
	say "Sanctuary of the Forgotten".
	
F93 is a room. F93 is west of F92 and northeast of F77.
Rule for printing the name of F93:
	say "Sanctuary of the Forgotten".
	
F94 is a room. F94 is northwest of F93.
Rule for printing the name of F94:
	say "Sanctuary of the Forgotten".
	
F95 is a room. F95 is west of F94.
Rule for printing the name of F95:
	say "Sanctuary of the Forgotten".
	
F96 is a room. F96 is northwest of F95.
Rule for printing the name of F96:
	say "Sanctuary of the Forgotten".
	
F97 is a room. F97 is northeast of F96.
Rule for printing the name of F97:
	say "Sanctuary of the Forgotten".
	
Alchemist Arena is a room. Alchemist Arena is east of F97.

F98 is a room. F98 is northeast of Alchemist Arena.
Rule for printing the name of F98:
	say "Sanctuary of the Forgotten".
	
F99 is a room. F99 is southeast of F98.
Rule for printing the name of F99:
	say "Sanctuary of the Forgotten".
	
F100 is a room. F100 is southeast of F99.
Rule for printing the name of F100:
	say "Sanctuary of the Forgotten".
	
F101 is a room. F101 is northeast of F100.
Rule for printing the name of F101:
	say "Sanctuary of the Forgotten".
	
F102 is a room. F102 is east of F101.
Rule for printing the name of F102:
	say "Sanctuary of the Forgotten".
	
F103 is a room. F103 is southeast of F102.
Rule for printing the name of F103:
	say "Sanctuary of the Forgotten".
	
F104 is a room. F104 is east of F103.
Rule for printing the name of F104:
	say "Sanctuary of the Forgotten".
	
F105 is a room. F105 is southeast of F104 and north of F89.
Rule for printing the name of F105:
	say "Sanctuary of the Forgotten".
	
F106 is a room. F106 is north of F104.
Rule for printing the name of F106:
	say "Sanctuary of the Forgotten".
	
F107 is a room. F107 is northeast of F106.
Rule for printing the name of F107:
	say "Sanctuary of the Forgotten".
	
F108 is a room. F108 is northwest of F107.
Rule for printing the name of F108:
	say "Sanctuary of the Forgotten".
	
F109 is a room. F109 is north of F108.
Rule for printing the name of F109:
	say "Sanctuary of the Forgotten".
	
F110 is a room. F110 is north of F109.
Rule for printing the name of F110:
	say "Sanctuary of the Forgotten".
	
F111 is a room. F111 is northeast of F110.
Rule for printing the name of F111:
	say "Sanctuary of the Forgotten".
	
F112 is a room. F112 is southeast of F111.
Rule for printing the name of F112:
	say "Sanctuary of the Forgotten".
	
F113 is a room. F113 is southeast of F112.
Rule for printing the name of F113:
	say "Sanctuary of the Forgotten".
	
F114 is a room. F114 is south of F113.
Rule for printing the name of F114:
	say "Sanctuary of the Forgotten".
	
F115 is a room. F115 is southeast of F114.
Rule for printing the name of F115:
	say "Sanctuary of the Forgotten".
	
F116 is a room. F116 is east of F115.
Rule for printing the name of F116:
	say "Sanctuary of the Forgotten".
	
F117 is a room. F117 is south of F116 and northwest of F63.
Rule for printing the name of F117:
	say "Sanctuary of the Forgotten".
	
F118 is a room. F118 is north of F116.
Rule for printing the name of F118:
	say "Sanctuary of the Forgotten".
	
F119 is a room. F119 is northeast of F112.
Rule for printing the name of F119:
	say "Sanctuary of the Forgotten".
	
F120 is a room. F120 is east of F119.
Rule for printing the name of F120:
	say "Sanctuary of the Forgotten".
	
F121 is a room. F121 is southeast of F120.
Rule for printing the name of F121:
	say "Sanctuary of the Forgotten".
	
F122 is a room. F122 is southeast of F121 and northeast of F118.
Rule for printing the name of F122:
	say "Sanctuary of the Forgotten".
	
F123 is a room. F123 is southeast of F122.
Rule for printing the name of F123:
	say "Sanctuary of the Forgotten".
	
F124 is a room. F124 is southeast of F123 and north of F70.
Rule for printing the name of F124:
	say "Sanctuary of the Forgotten".
	
Traitor Arena is a room. Traitor Arena is west of F108.

F125 is a room. F125 is west of Traitor Arena.
Rule for printing the name of F125:
	say "Sanctuary of the Forgotten".
	
F126 is a room. F126 is west of F125.
Rule for printing the name of F126:
	say "Sanctuary of the Forgotten".
	
F127 is a room. F127 is north of F126.
Rule for printing the name of F127:
	say "Sanctuary of the Forgotten".
	
F128 is a room. F128 is northeast of F127.
Rule for printing the name of F128:
	say "Sanctuary of the Forgotten".
	
F129 is a room. F129 is north of F128.
Rule for printing the name of F129:
	say "Sanctuary of the Forgotten".
	
F130 is a room. F130 is northeast of F129.
Rule for printing the name of F130:
	say "Sanctuary of the Forgotten".
	
F131 is a room. F131 is northeast of F130.
Rule for printing the name of F131:
	say "Sanctuary of the Forgotten".
	
F132 is a room. F132 is east of F131.
Rule for printing the name of F132:
	say "Sanctuary of the Forgotten".
	
F133 is a room. F133 is south of F132 and north of F111.
Rule for printing the name of F133:
	say "Sanctuary of the Forgotten".
	
F134 is a room. F134 is northwest of F98.
Rule for printing the name of F134:
	say "Sanctuary of the Forgotten".
	
F135 is a room. F135 is north of F134.
Rule for printing the name of F135:
	say "Sanctuary of the Forgotten".
	
F136 is a room. F136 is northeast of F135.
Rule for printing the name of F136:
	say "Sanctuary of the Forgotten".
	
F137 is a room. F137 is east of F136.
Rule for printing the name of F137:
	say "Sanctuary of the Forgotten".
	
F138 is a room. F138 is northeast of F137.
Rule for printing the name of F138:
	say "Sanctuary of the Forgotten".
	
F139 is a room. F139 is north of F138.
Rule for printing the name of F139:
	say "Sanctuary of the Forgotten".
	
F140 is a room. F140 is east of F139 and northwest of F129.
Rule for printing the name of F140:
	say "Sanctuary of the Forgotten".
	
F141 is a room. F141 is west of F139.
Rule for printing the name of F141:
	say "Sanctuary of the Forgotten".
	
F142 is a room. F142 is northwest of F141.
Rule for printing the name of F142:
	say "Sanctuary of the Forgotten".
	
F143 is a room. F143 is northeast of F142.
Rule for printing the name of F143:
	say "Sanctuary of the Forgotten".
	
F144 is a room. F144 is northeast of F143.
Rule for printing the name of F144:
	say "Sanctuary of the Forgotten".
	
F145 is a room. F145 is east of F144.
Rule for printing the name of F145:
	say "Sanctuary of the Forgotten".
	
F146 is a room. F146 is east of F145.
Rule for printing the name of F146:
	say "Sanctuary of the Forgotten".
	
F147 is a room. F147 is southeast of F146 and northwest of F131.
Rule for printing the name of F147:
	say "Sanctuary of the Forgotten".
	
Descent Into the Abyss is a room. Descent Into the Abyss is northeast of F122.

Book X - Loot Tables

[Mutated Prisoner Loot lol xd]

[During Ethiram's revolution, he and his fellow rebels escape the prison and disappear into the jungle. At the jungle, they find a mysterious marble tower guarded by sentintels. At the northern entrance of the tower, they kill the northern sentinel and slip inside. There they see a mysterious metal grating and drop below. They seem to fall for what seems like an eternity until they are greeted by a small light coming from a torch. For some reason they were already standing up when they saw the torch. When they went to pick up the torch, the flame grows in size and fills the entire room with a bright light. Revealed to the group of rebels are 8 cages, suspended in air, chains dropping from what looks like an endless ceiling, dangling metal boxes containing prisoneres covered in rags. The group is stunned and they hear a voice. The voice calls to them, and begs them to come close. The voice convinces Ethiram to unlock him and help him escape with the Ethiram. When unlocked, the voice turns into a body. The body's hand grasps at Ethiram and sucks the soul out of him. The body morphs into Ethiram and ]






















