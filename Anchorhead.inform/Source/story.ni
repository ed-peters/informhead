"Informhead" by Ed Peters

[ There are five levels of headings available--"volume", "book", "part", "chapter" and "section" ]

[ TODO - DAY 2 ]
[ going down from the Attic before the ladder is pulled ]
[ text about Michael being gone; free up study at sunset ]
[ don't lock front door before sleep ]

[ TODO - DAY 3]
[ prevent repeated scores (Ialdabaoloth, peephole #4) ]
[ Michael answering questions and getting angry ]
[ Michael wandering around the house ]

[ TODO - GENERAL ]
[ implement fish oil ]
	[ TODO - Not knowing what else to do with it, you wipe the nasty fish oil off on the leg of your pants. ]
	[ TODO - Michael might not appreciate that. ]
[ random atmospherics ]
[ backdrops ]
[ implement the keyring using Locksmith ]
[ not knowing names until you read the clippings ]
	[ That's not a name you're familiar with. Since the family album is filled
	with names you're not familiar with, you are unable to get very far
	looking for it. ]

Volume 1 - Meta

Book 1 - Settings

Use scoring.

Include Basic Screen Effects by Emily Short.
Include Locksmith by Emily Short.
Include Menus by Dannii Willis.

The player is in Office Exterior.

Book 2 - Extensions

The player has a number called day. Day is initially 1.
The player has a number called spider. Spider is initially 0.
A thing has a number called last turn examined. The last turn examined is initially -2.
A thing has some text called printing. The printing of a thing is usually "blank".

After examining a noun:
	now the last turn examined of the noun is the turn count.

Report taking something:
	say "You take [the noun][if the noun is described and the last turn examined of the noun is -2]. [the description of the noun][end if].";
	now the last turn examined of the noun is the turn count;
	rule succeeds.

Telephoning is an action applying to one topic. Check telephoning:
	if the telephone is not visible, say "You don't have a way of doing that." instead;
	otherwise try taking the telephone instead.
Understand "call [text]" as telephoning. 

Ringing is an action applying to one visible thing and requiring light. Check ringing:
	say "[The noun] doesn't seem like something you would ring.".
Understand "ring [something]" as ringing. 

Saying hello to is an action applying to one visible thing and requiring light. Check saying hello to:
	say "[The noun] seems unimpressed." instead.
Understand "say hello to [something]" as saying hello to.
	
Turning it to is an action applying to one visible thing and one number, and requiring light. Check turning it to:
	say "[The noun] does not spin.".
Understand "turn [something] to [number]" as turning it to. 
Understand "move [something] to [number]" as turning it to.
Understand "adjust [something] to [number]" as turning it to.
Understand "spin [something] to [number]" as turning it to.
Understand "spin [something]" as turning.

Looking through is an action applying to one visible thing and requiring light. Carry out looking through: try searching the noun.
Understand "look through [something]" as looking through. 

Understand the command "read" as something new. Reading is an action applying to one thing, requiring light. Check reading: if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead. Carry out reading: say "[printing of the noun][line break]". Report reading: do nothing.
Understand "read [something]" as reading. 

Understand "sit on [something]" as entering.
Understand "sit down on [something]" as entering.
Understand "sit down in [something]" as entering.
Understand "get up from on [something]" as getting off.
Understand "move [something]" as pushing it.

Cleaning it with is an action applying to two visible things, requiring light. Check cleaning it with: say "[The noun] doesn't get much cleaner.".

Understand "clean [something] with [something]" as cleaning it with. Understand "sweep [something] with [something]" as cleaning it with.

Buying a drink is an action applying to nothing. Check buying a drink: say "Regrettably impossible; you left both your purse and your wallet in the car. You're loving this town more every minute." instead.
Understand "buy drink" as buying a drink.

Typing is an action applying to one topic. Carry out typing: say "You see nothing to type on." instead.
Understand "type [text]" as typing.

Disrobing is an action applying to nothing. Carry out disrobing:
	repeat with x running through things carried by the player:
		now x is in the location;
	repeat with x running through things worn by the player:
		if x is not the wedding ring:
			now x is in the location.
Understand "disrobe" as disrobing.

Volume 2 - Scenes

Scenes can be tired. A scene is usually not tired.

To decide if sleep is prevented:
	repeat with S running through scenes:
		if S is happening and S is tired:
			decide no;
	decide yes.

Book 1 - Sleeping

Instead of sleeping:
	if sleep is prevented:
		say "You're not tired.";
	otherwise if the location is not Master Bedroom:
		say "This isn't the best place for it.";
	otherwise if the player is not on the bed:
		say "You really should get in bed first.";
	otherwise if the front door is open or the front door is unlocked:
		say "Something is nagging at you, preventing you from sleeping... suddenly you remember -- you've left the front door unlocked.";
	otherwise:
		now the day of player is the day of player plus one.

Book 2 - Day One

Day 1 is a scene. Day 1 begins when play begins. Day 1 ends when Day 2 begins.

When Day 1 begins:
	display the boxed quotation "The oldest and strongest emotion of mankind
	is fear, and the oldest and strongest kind of
	fear is fear of the unknown.
	
	-– H.P. Lovecraft";
	show the current quotation;
	center "I N F O R M H E A D";
	pause the game;
	say "[the day1 intro]";
	pause the game;
	set the combination of the safe;
	darken the mansion;
	
Instead of going south from the Town Square during Day 1, say "The courthouse is closed for the day.". Instead of going south from the Asylum Courtyard during Day 1, say "The asylum is closed for the day.".

Part 1 - Michael Reads

Michael Reads is a scene. Michael Reads begins when the goal of Michael is ignore. Michael Reads ends when Michael Follows begins.

Instead of saying hello to Michael during Michael Reads:
	if Michael is not greeted:
		say "Michael looks up, startled, then realizes it's you and smiles. 'Hi, hon,' he says, closing the book and stretching. Then he glances at his watch. 'Good grief, what happened to the time? I'm so sorry -- I just lost track.' He smiles sheepishly.[paragraph break]'Well?' he asks. 'Did you get the keys?'";
		now Michael is greeted;
	otherwise:
		say "Michael nods distractedly. He doesn't seem to be listening to you.".
		
Instead of asking Michael about during Michael Reads, try saying hello to Michael. Instead of showing something to Michael during Michael Reads:
	if Michael is greeted:
		if the noun is the house key or the noun is the cellar key:
			say "'Great!' says Michael. 'You hang on to that. Just a second, I'll put this back.' He takes the book up to the circulation desk and hands it to the librarian. 'Okay then,' he says, returning, 'let's go.'[paragraph break]Michael suddenly smacks his forehead. 'Oh, crap, I forgot to tell you. The car broke down.' He spreads his hands. 'I don't know what happened to it; one second I'm parking outside, the next second it dies and I can't get it started again. I called a tow truck, but the nearest garage is up in Arkham. They picked it up but won't be able to look at it until next week at the earliest. Anyway, it looks like we'll have to walk back to the house.' He offers you a lame smile. 'You can hold the umbrella.'";
			now the goal of Michael is follow;
			increase the score by 2;
		otherwise:
			try saying hello to Michael;
	otherwise:
		try saying hello to Michael.

Test mreads with "se / push cans to window / stand on cans / open window / enter window / consult cabinet about verlac / w / unlock door / w / w / w / nw / w / say hello to Michael / ask Michael about verlac / show house key to Michael".
		
Part 2 - Michael Follows

Michael Follows is a scene. Michael Follows begins when the goal of Michael is follow. Michael Follows ends when Michael Sleeps begins.

Every turn during Michael Follows:
	if Michael is not visible:
		move Michael to the location of the player;
		if the location of Michael is the Foyer:
			now the goal of Michael is sleep;
		otherwise:
			say "Michael follows you.".

Test mfollows with "e / se / e / s / s / e / s / sw / nw / n / unlock door / n".

Part 3 - Michael Sleeps

Michael Sleeps is a tired scene. Michael Sleeps begins when the goal of Michael is sleep. Michael Sleeps ends when Day 1 ends.

When Michael Sleeps begins:
	say "Michael stretches his arms and yawns. 'Well,' he says, 'I think I'm going to turn in. There'll be plenty of time to unpack and explore tomorrow. Good night, hon.' He kisses you on the cheek. 'Don't stay up too late.'";
	now Michael is in the Master Bedroom;

Instead of saying hello to Michael during Michael Sleeps, say "Best not. He seems exhausted.". Instead of asking Michael about during Michael Sleeps, try saying hello to Michael. Instead of showing something to Michael during Michael Sleeps, try saying hello to Michael.

Test msleeps with "u / n / sleep / s / d / close door / lock it / u / n".
Test day1 with "test mreads / test mfollows / test msleeps / get in bed / sleep".

Book 3 - Day Two

Day 2 is a scene. Day 2 begins when the day of player is 2. Day 2 ends when the day of player is 3.

When Day 2 begins:
	say "Gratefully, you remove your clothes, leave your things on the bedroom floor, crawl into bed and pull the covers up to your chin.[paragraph break]Almost immediately you fall asleep, and as the wind slithers around the eaves and the house creaks furtive secrets to itself, you drift into troubling dreams...";
	pause the game;
	say "[the day2 intro]";
	pause the game;
	display the boxed quotation "
	It is hard to prevent the impression of a faint,
	malign odour about the village street, as of
	the massed mould and decay of centuries. It
	is always a relief to get clear of the place.
	
	-- H.P. Lovecraft";
	show the current quotation;
	center "S E C O N D   D A Y";
	pause the game;
	say "You wake up. Steam billows gently by, and you can hear the sound of running water coming from the bathroom.";
	move the graffiti to Twisting Lane;
	move the newspaper to the Town Square;
	now the goal of Michael is shower;
	light the mansion.
		
Part 1 - Michael Showers

Michael Showers is a scene. Michael Showers begins when Day 2 begins. Michael Showers ends when the goal of Michael is write.

When Michael Showers begins:
	now Michael is nowhere;
	move the pants to the Master Bedroom.

Check going to the Bathroom during Michael Showers: say "The bathroom is occupied at the moment." instead.

Report listening when the player is in the Master Bedroom during Michael Showers:
	say "You've never known anyone who loves a morning shower more than your husband. To him it's better than coffee. You can hear him from all the way out here, [one of]belting out 'I'm Deranged' in his best David Bowie croon[or]belting out a spirited, one-man rendition of Beethoven's 'Ode to Joy'[or]practicing his Christopher Walken routine. 'Do you know who I am? I am the Antichrist!'[or]having a spirited conversation with himself. You can't make out any of the words; he's probably sounding out some dialogue for one of his stories[or]practicing his Dennis Hopper routine. 'Heineken?! Fuck that shit! PABST BLUE RIBBON, MAN!'[or]belting out 'You're So Cruel' in his best Bono falsetto[or]practicing his Gabriel Byrne routine. 'Sister, when I've raised hell, you'll know it!'[or]belting out 'Rock Me Amadeus' at the top of his voice[cycling]."; 
	rule succeeds.

Every turn during Michael Showers:
	if the faculty card is carried:
		say "The shower suddenly stops. Quickly you palm the card, replace the wallet and arrange the pants the way you found them. A moment later Michael emerges from the bathroom, toweling his hair. 'My, don't you look tempting this morning,' he says, giving you a kiss. He tosses the towel back into the bathroom and gets dressed. 'I think I'm going to stay home and get some writing done. I don't actually start work until tomorrow, so...' He kisses you on the cheek as he walks out into the hall. 'If you go out today, see if you can find a newspaper. I want to learn as much as I can about this town.'[paragraph break]He looks at you for a moment, and his voice becomes serious. 'I love you, hon. You know that, don't you? I really want us to try and be happy here.'[paragraph break]Then he turns and pads down the hall.[paragraph break]You take a deep breath as he goes. You've never lied to Michael or hidden anything from him before, ever; now, hardly two days into your new life, you're already sneaking through his wallet.[paragraph break]Oh yeah. You're off to a great start.";
		now the goal of Michael is write.

After going to the House Library during Michael Showers:
	say "You pause as the shower shuts off, and you hear Michael moving around in the next room. His
footsteps thump loudly on the hardwood floor as he comes down the hall, and then are muffled again
as he steps onto the deep green carpet of the library.[paragraph break]'Good morning,' he says, smiling and kissing you lightly on the cheek. He looks around at the crowded rows of books. 'Neat, huh? I may go through some of them this morning. Since the fogies don't need me to start work until tomorrow, I thought I'd stay home and try to get some writing done.'[paragraph break]As he steps through the sliding doors into the study, he turns and says, 'I'll be in here for a while, okay? Oh, and if you go out today, see if you can find a newspaper somewhere.' He smiles as he slides the doors shut.";
	now the goal of Michael is write;
	continue the action.

After going to the Foyer during Michael Showers:
	now the goal of Michael is write.
	
Test betray with "test day1 / stand / wear coat / wear clothing / look in pants / look in wallet / take card / take all".

Part 2 - Michael Writes

Michael Writes is a scene. Michael Writes begins when Michael Showers ends. Michael Writes ends when Close of Day begins.

When Michael Writes begins:	
	now the pants are nowhere;
	now the wallet is nowhere;
	now the old man is in the Vacant Lot.

Instead of opening the mahogany doors for the first time during Michael Writes:
	say "Michael is in the study, typing furiously at his laptop. As you walk in he looks up at you with a pained expression. 'Can it wait?' he asks you. 'I think I'm onto something really good here, and if I don't get it all out I'm going to lose it. If you don't mind, hon, I could really use the next hour or so to myself.'[paragraph break]Not wanting to disturb him, you tiptoe out, shutting the doors quietly behind you.".
	
Instead of opening the mahogany doors during Michael Writes:
	say "Wishing to avoid another reprisal, you decide to leave Michael alone until he's finished writing.".
	
Every turn during Michael Writes:
	if the player is in the House Library:
		if a random chance of 1 in 5 succeeds:
			say "You can hear Michael in the next room, typing away.".

Part 3 - Close of Day

Close of Day is a tired scene. Close of Day begins when the old man is holding the amulet.

When Close of Day begins:
	repeat with x running through rooms in Interior Rooms:
		now x is unlit.

Instead of going south from the Town Square during Close of Day, say "The courthouse is closed for the day.". Instead of going south from the Asylum Courtyard during Close of Day, say "The asylum is closed for the day.".

[Instead of locking the front door during Close of Day, say "xxx".]

Book 4 - Day Three

Day 3 is a scene. Day 3 begins when the day of player is 3. Day 3 ends when the day of player is 4.

When Day 3 begins:
	say "You lie awake for what seems like hours, listening to the house creak and settle around you and wondering where your husband is. You try to convince yourself that he merely went for a walk and lost track of the time, as he is so often wont to do. In any case, with no telephone and no car, there is little you can do besides hope that he will turn up in the morning. With your worried thoughts chasing themselves endlessly around your mind, you eventually drift off into an uneasy sleep...";
	pause the game;
	say "[the day3 intro]";
	pause the game;
	display the boxed quotation "
	It was his twin brother, but it looked more  
	like the father than he did...               
                           	
	-- H.P. Lovecraft";
	show the current quotation;
	center "T H I R D   D A Y";
	pause the game;
	say "You wake up, shivering. Michael is in bed next to you, sleeping like a dead man with the sheets
wrapped in a twisted snarl around his body.";
	now the goal of Michael is shower;
	light the mansion.
		
Book 5 - Day Four

Day 4 is a scene.

Book 6 - Day Five

Day 5 is a scene.

Volume 3 - Regions & Backdrops

Book 1 - Regions

North Town is a region. Office Exterior, Alley, Narrow Street, Twisted Lane, Junction, and University Court are in North Town.

The Woods is an region. Scenic View, Deserted Lane, Path Behind the House, Family Plot and Down the Road are in The Woods.

Book 2 - Backdrops

The rooftops are a backdrop in the Town. The rooftops are in Dark Corner. "The crumbling buildings of Anchorhead, with their ubiquitous peaked rooftops and ancient, leaning gables, cluster thickly around you in every direction."

The cobblestones are a backdrop in Town. "The cobblestones are slick from the rain and worn with many centuries' passage." Understand "street" as the cobblestones.

The sky is a backdrop in Town. "The sky is an unbroken blanket of seething gray clouds in every direction."

The sea is backdrop. "The sea is the color of old pewter, surging and chopping restlessly beneath the clouds.". Understand "ocean" as the sea. The sea is in Narrow Beach and Wharf.

The river is backdrop. "The Miskaton's waters are sluggish and dark. Some sort of oily film coats the surface, reflecting back ghostly swirls of color.". Understand "water", "miskaton" and "film" as the river. The river is in Whateley Bridge and Under the Bridge. Instead of searching the river, say "You can make out a shadowy reflection of yourself in the slowly rippling water.".

The open road is backdrop in The Woods. "Out here, beyond the boundaries of the city proper, the cobblestones have given way to unpaved dirt.".

Trees are backdrop. They are in The Woods. "The woods are ancient, thick with undergrowth and full of shadows. Branches creak, leaves rustle beneath unseen, half-imagined footsteps, and strange birdcalls echo through the trees.".

Volume 4 - North Town

Book 1 - Outside Office

[ Office Exterior ]

Office Exterior is a room. The printed name of Office Exterior is "Outside the Real Estate Office". "A grim little cul-de-sac, tucked away in a corner of the claustrophobic tangle of narrow, twisting avenues that largely constitute the older portion of Anchorhead. Like most of the streets in this city, it is ancient, shadowy, and leads essentially nowhere. The lane ends here at the real estate agent's office, which lies to the east, and winds its way back toward the center of town to the west. A narrow, garbage-choked alley opens to the southeast." Instead of going nowhere from Office Exterior, say "The street goes west from here. You can enter the office to the east or the alley to the southeast.".

The office door is a closed locked door and scenery. The initial appearance of the office door is "The office door is [if the office door is open]open[otherwise]closed[end if]." It is east of Office Exterior and west of Office Interior. "[if the player is in Office Exterior]The door has a glass front with the name of the real estate company -- Benson & Brackhurst -- stenciled across it[otherwise]You can make out the words 'tsruhkcarB & nosneB' stenciled across the glass. There is a latch on this side which can be turned to lock or unlock the door[end if].".
		
[ Alley ]

The Alley is a room. "This narrow aperture between two buildings is nearly blocked with piles of rotting cardboard boxes and overstuffed garbage cans. Ugly, half-crumbling brick walls to either side totter oppressively over you. The alley ends here at a tall, wooden fence.[paragraph break]High up on the wall of the northern building there is a narrow, transom-style window. [if the cans are moved]One of the garbage cans has been pushed up against the wall directly underneath it.[end if]". The Alley is southeast from Office Exterior.

The boxes are scenery in the Alley. Understand "box" or "cardboard" as the boxes. "The boxes are filthy, slimy and soaked with rain." The wall is scenery in the Alley. Understand "brick" as the wall. "It's just an ordinary-looking wall."

The fence is scenery and a door. It is closed. It is east of the alley and west of Narrow Beach. Instead of examining the fence: say "One of the boards seems to be loose down at the bottom; you could probably just squeeze through."; now the fence is open. Instead of opening the fence, say "That's not something you can close.". Instead of closing the fence, say "That's not something you can close."

The window is a door and scenery. It is closed. It is north of the Alley and south of the File Room. "It's about eighteen inches wide and a foot tall, with hinges along the top that allow it to swing out. It's currently [if the window is open]open[otherwise]closed[end if]". Windoward is a direction. Understand "window" as windoward.

The cans are an enterable supporter and scenery in the Alley. The cans can be moved. "The metal garbage cans are stuffed to overflowing with slowly decomposing refuse.". Report entering the cans:
	say "You clamber onto the wobbling garbage can, precariously balanced[if the cans are moved]. You can just reach the lower edge of the window from here[end if].";
	rule succeeds.

To describe alley exits: say "You can only exit the alley to the northwest[if the fence is open] or crawl through the fence to the east[end if][if the cans are moved]. With those cans in place, you might also be able to give the window a try[end if].".

Instead of going nowhere from the Alley, describe alley exits. Instead of going west from Alley, describe alley exits. Instead of going east from the Alley when the fence is closed, describe alley exits.

Instead of climbing the window, try going north.

Instead of searching the window:
	if the player is on the cans and the cans are moved:
		say "Peering in through the foggy glass, you can see what looks like a file room.";
	otherwise:
		say "The window is too high.".

Before opening the window:
	if the player is not on the cans:
		say "The window is too high." instead;
	otherwise if the cans are not moved:
		say "Hmm. You still can't quite reach, because the garbage can is too far away from the wall. Perhaps if you pushed it closer..." instead.

Instead of pushing the cans:
	if the player is on the cans:
		say "You'll have to get down first.";
	otherwise if the cans are moved:
		say "Little else would be accomplished by that.";
	otherwise:
		say "You push the garbage cans around aimlessly.".

Instead of pushing the cans to windoward:
	if the player is on the cans:
		say "You'll have to get down first.";
	otherwise if the cans are moved:
		say "Little else would be accomplished by that.";
	otherwise:
		say "Grunting and holding your breath, you manhandle one of the filthy cans under the window.";
	now the cans are moved.

Before going north from Alley:
	if the cans are not moved or the player is not on the cans:
		say "The window is too high." instead.
	
[ Narrow Beach ]

Narrow Beach is a room. "This narrow strip of beach is tucked away between two outcroppings in the predominantly rocky shoreline, accessible only from a steep, muddy slope to the west. The sand is filthy and strewn with rocks, seaweed, litter and other bits of storm-tossed detritus.[paragraph break]Near the bottom of the slope, a sewage outflow pipe juts out over the beach, about three feet above the ground. A thin stream of acrid-smelling sewer water trickles out over the lip of the pipe, forming a puddle in the sand."

Book 2 - Inside Office

[ File Room ]

File Room is a room. "Peering through the murk, you can make out the blocky outlines of filing cabinets lining the walls and a doorway to the west. A window high up on the south wall lets in a very faint illumination."

The file cabinet is scenery in the File Room. Understand "file" and "files" and "cabinet" as the file cabinet. "There must be hundreds of files here, too many to browse through. You'll have to look up something specific if you want to find anything."

Instead of consulting the cabinet about:
	if the topic understood includes "verlac":
		if the location of the house key is nowhere:
			say "Strange; the file on the Verlac property has been cleaned out. Title, deed, all the papers, all of it gone. There is, however, a set of keys tucked down in the hanging folder. You quickly pocket them.";
			now the player has the house key;
			now the player has the cellar key;
			increase the score by 2;
		otherwise:
			say "You've already perused that file once.";
	otherwise:
		say "You don't find anything filed under that [the topic understood].".

[ Office Interior ]

Office Interior is a room. The printed name of Office Interior is "Office". "Pallid gray light trickles in through the drawn blinds. The office is deserted, papers still scattered across the top of the desk. The front door lies west, and the file room lies east.

Sitting on the corner of the paper-strewn desk are a telephone and an answering machine." Office Interior is west of File Room.

The papers are scenery in Office Interior. "Sifting through the paperwork, you find nothing that catches your attention." Instead of taking the papers, say "You're not here to burglarize the place.".

The desk is scenery in Office Interior. "The top of the desk is littered with paperwork -- notes, messages, files, etc.; the way most desks tend to get at the end of a busy day. A telephone sits on one corner, next to a digital answering machine. There is a small drawer to one side."

The drawer is scenery and a closed openable container in Office Interior. "You can't see inside, since the drawer is closed."

The telephone is scenery in Office Interior. "It's just an ordinary-looking telephone.". Instead of taking the telephone, say "You start to dial out, but you can't get anything but a busy signal no matter how much you jiggle the receiver. Frustrated, you hang up.".

The styrofoam cup is a thing in Office Interior. It is not fixed in place. "Someone seems to have left a cup of coffee sitting out, half-finished and cold." The description of the styrofoam cup is "In the styrofoam cup is some cold, murky coffee.". 

The coffee is part of the cup. The description of the coffee is "Muddy-looking and unappetizing. Who knows how long it's been sitting out?". Before drinking the coffee:
	if the player is not holding the cup:
		say "(first taking the styrofoam cup)";
		now the player is holding the cup.
Instead of drinking the coffee, say "You take one sip and nearly gag. Awful stuff!". Instead of dropping the coffee, try dropping the styrofoam cup.

The answering machine is scenery in Office Interior. "A simple answering machine, with a small display indicating messages received, a button labeled 'PLAY', and a button labeled 'DELETE'." The answering machine is either pristine, deleted or played. The answering machine is pristine.

The play button is part of the answering machine. The description of the play button is "It's just an ordinary-looking button labeled 'PLAY'." Instead of pushing the play button:
	if the answering machine is deleted:
		say "The machine beeps and does nothing.";
	otherwise:
		say "For a while there is nothing but a quiet hiss, followed by intermittent skirls of strange-sounding static. It sounds like one of those annoying glitches where the caller hangs up but the machine keeps recording anyway. Then, barely audible through the static, you detect what sounds like a human voice whispering a single word:

'Verlac.'

The machine beeps.";
	if the answering machine is pristine:
		say "[line break]A brief shudder ripples up your back. You remember now, 'Verlac' is the name of this branch of
Michael's family.";
		increase the score by 2;
	now the answering machine is played.

The delete button is part of the answering machine. The description of the delete button is "It's just an ordinary-looking button labeled 'DELETE'." Instead of pushing the delete button: say "The machine beeps."; now the answering machine is deleted.
	
The latch is scenery in the Office Interior. The description of the latch is "It's a little knob that can be turned to lock or unlock the door. It's currently [if the office door is not locked]un[end if]locked." Before locking keylessly the office door:
	if the office door is locked:
		say "The door is already locked." instead;
	otherwise:
		 try turning the latch instead. 
Before unlocking keylessly the office door:
	if the office door is unlocked:
		say "The door is already unlocked." instead;
	otherwise:
		 try turning the latch instead. 
Before turning the latch:
	if the office door is open:
		instead say "You should close the door if you're going to lock it.".
Instead of turning the latch:
	if the office door is not locked:
		now the office door is locked;
		say "You lock the office door.";
	otherwise:
		now the office door is not locked;
		say "You unlock the office door.";
	if the office door is scenery:
		now the office door is not scenery.

Book 3 - Narrow Street

[ Narrow Street ]

The Narrow Street is a room. "As the lane winds along from east to west, it narrows until the steep, jagged rooftops on either side of the street practically touch each other. To the south, a side street leads across Whateley Bridge toward the center of town, and a twisting lane leads up a hill to the northwest. A short flight of steps to the north leads down to the local watering hole." Instead of going nowhere from the Narrow Street, say "The street goes east and west; you can also take a side street to the south, or go up a narrow, twisting lane to the northwest. The pub is down a short flight of steps to the north.". Narrow Street is west of Office Exterior.

[ Local Pub ]

The Local Pub is a room. "A dank, drafty old drinking hole lit by flickering, oil-burning lanterns. Smoke collects in greasy pools among the rafters, and shadows crowd thick around. The bar runs the length of the room to your right, while to the south a low doorway opens onto the street.

Mill workers and fishermen occupy a few of the tables, drinking beer or puffing grimly at long-stemmed pipes. Each is wrapped in his solitude, soaking up the general miasma of dreary fatalism." Instead of going nowhere from the Local Pub, say "The exit is to the south.". The Local Pub is north of Narrow Street.

The bar is scenery in the Local Pub. "A dark and dour expanse of wood, pitted and scarred and stained with the rings from over a hundred years' worth of slopping beer mugs."

The patrons are scenery in the Local Pub. "The patrons of this place are taciturn and grim. No one speaks. No one looks anyone in the eye. No one, in fact, even looks up from his beer. A heavy aura of resignation -- and, it almost seems, dread -- hangs palpably over the whole crowd." Understand "workers", "fishermen", and "people" as the patrons.

The lantern is a thing in the Local Pub. "The lantern sitting on the table nearest you sputters fitfully, throwing distorted shadows across the wall.". The description of the lantern is "It's an old-fashioned hurricane lamp, with a tall glass chimney to protect it from the wind. The cotton wick burns fitfully in its reservoir of cheap oil.".

Report taking the lantern:
	say "No one here looks as though they'd mind if you borrowed one of these lamps. Casually, you purloin
the nearest one.";
	rule succeeds.

The flask is a thing. "Someone has left a flask underneath one of the tables." The description of the flask is "The label is faded and mostly peeled away, but what little you can make out seems to indicate that this is not a particularly distinguished brand of spirits. The words 'bootleg' and 'rotgut' come to mind, probably because they are the only words legible on what's left of the label.".

The pub table is scenery in the Local Pub. Instead of looking under the pub table:
	say "Some forgetful soul has left a flask underneath one of the tables, pushed into a shadowy corner.";
	now the flask is in the Local Pub.

Before going south from the Local Pub for the first time:
	now the flask is in the Local Pub;
	say "As you make your way to the door, your foot strikes something under one of the tables." instead.
	
[ Junction ]
	
The Junction is a room. "To the north, a gap in the crowded press of gloomy buildings opens onto a country lane, heading out over a grassy heath. The main street continues to the east, while to the northwest, over the top of a steep rise, you can just make out the vaulted rooftops of the university." The Junction is west of the Narrow Street. Instead of going nowhere from the Junction, say "The street goes east and northwest, or you can take the road out of town to the north.".

The rise is scenery in the Junction. "You can just see the tops of the ivy-covered brick walls from here.". Understand "university" as the rise.

Book 4 - Twisting Lane & Cauldron

[ Twisting Lane ]

Twisting Lane is a room. "The lane narrows here to little more than a badly cobbled sidewalk as it wends its way up through a series of tortuous bends and switchbacks. In some places, the street is so steep that steps have been cut into it, worn down over the years and slick with moss. Your progress is blocked at the top of the street by a [if the graffiti is nowhere]blank [end if]brick wall." Twisting Lane is up from the Narrow Street. Twisting Lane is northwest from The Narrow Street. The Narrow Street is southwest from Twisting Lane. Down from Twisting Lane is nowhere. Southeast from Twisting Lane is nowehre.

Instead of going nowhere from Twisting Lane, say "You take a few tentative steps back down the lane, but it seems to lead only to a short switchback, bringing you right back to the brick wall. You're not entirely sure now, which direction leads back to the narrow street.". Before going west from Twisting Lane: if the graffiti is nowhere, try going north instead.

The brick wall is scenery in the Twisting Lane.

The graffiti is a thing. It is fixed in place. The initial appearance of graffiti is "Someone has sprayed graffiti across the wall in black spray paint.". The description of the graffiti is "It's a strange design done in black spraypaint; an upturned hand with an irregular triangle inscribed in the palm. Beneath it is drawn an arrow pointing roughly west, and following it with your gaze, you realize that it points directly at the narrow aperture of a sidestreet you'd never noticed before."

[ Hidden Court ]

Hidden Court is a room. "You had no idea this little courtyard even existed, cleverly tucked away amidst the confusing tangle of darker avenues. Although surrounded on all sides by steep rooftops and overshadowed by the ever- ominous clouds, this secluded circle somehow manages to convey a sense of peace and brightness, a safe harbor from the oppressive gloom pervading the rest of the town. To the south, a hanging sign marks a humble shop, while a sidestreet to the east leads back into the labyrinth.". Hidden Court is west from Twisting Lane.

The shop sign is scenery in Hidden Court. "It simply reads, in gaudily illuminated letters, 'The Cauldron'.".

The Cauldron is a room. "A warm and pleasantly dim light surrounds you and suffuses this cozy little shop. The shelves are crammed with every conceivable variety of new age curiosity: books, crystals, pendants, charms, herbs, potions, incense, candles and -- sure enough, on a display stand right near the door -- decorative cast-iron cauldron-shaped paperweights. How cute. In the rear of the store, a lit display case contains several items of interest. The courtyard lies outside, to the north.". The Cauldron is south of Hidden Court. Before going south from Hidden Court, say "A silvery bell jingles as you open the door.". Before going north from the Cauldron, say "The old man waves as you leave. 'Come back soon,' he calls.".

The violin is a thing in the Cauldron. The initial appearance of the violin is "On the display case is a violin.". The description of the violin is "It's a gorgeous instrument -- the wood is a rich, polished mahogany, the scroll and fingerboard gleaming ebony. The strings almost seem to vibrate of their own accord, as if aching to be played.". Before taking the violin, say "It belongs to the proprietor, and besides, you don't know how to play it." instead.

The display case is a transparent container and scenery in The Cauldron. Instead of examining the case:
    say "The display case has a glass front and sliding doors in back that allow the proprietor to reach inside. Lined up inside the case are [list of things in the case]. Resting on top of the case is a violin.".

The paperweights are scenery in The Cauldron. "Mostly a lot of hokey, pseudo-spiritualist knick-knacks. Junk, really. Tourist souvenirs.".

The set of tarot cards is a thing in the display case. The description of the tarot cards is "A beautiful set of cards in a velvet-lined box. The top card, 'The Tower', has been turned up, allowing you to see the exquisitely detailed artwork. In this representation, the tower has been painted to resemble a lighthouse, broken by a bolt of lightning emanating from a great, red-rimmed eye. Two figures, a man and a woman, tumble from the tower's summit, cast lifelessly into the sea.".

The geode is a thing in the display case. The description of the geode is "A hemisphere of rough, gray stone, about the size and shape of a halved cantaloupe. Its center is a glittering cavity of violet crystals, thousands of sparkling, faceted stalactites and stalagmites inside a cave of colored glass.".

The amulet is a wearable thing in the display case. The description of the amulet is "It's an unassuming silver pendant hanging from a thin leather thong, fashioned in the shape of a tiny, upturned hand with a triangle inscribed within the palm. It reminds you a little of one of those cast pewter game pieces from Monopoly.".

The proprietor is a man in the Cauldron. The initial appearance of the proprietor is "The proprietor watches you quietly from behind the display case." The description of the proprietor is "A fabulously thick and bushy tangle of moustache, beard and eyebrows frame the portly old proprietor's deeply seamed face. His eyes are kind, however, and his smile warm and ingenuous, and he seems content to watch you quietly with his hands folded across his considerable paunch as you browse through his shop.".

After asking the proprietor about:
	if the topic understood includes "amulet":
		if the amulet is in the display case:
			say "The proprietor reaches in through the back of the case and takes out the amulet. It spins slowly as he holds it up to the light.[paragraph break]'I think, perhaps, that he eventually found different. And I think, perhaps, that you will, too.' He leans forward and, before you can react, slips the leather thong around your neck. 'But you won't make the same mistake, will you, Miss? No. You go on and keep that, now. My treat. You may find it useful soon.'";
			try the player wearing the amulet;
			increase the score by 5;
		otherwise:
			say "'We've already discussed that now, haven't we?' He winks slyly at you.";
	otherwise if the topic understood includes "tarot":
		say "'Mmm, yes, a rare piece of work. The cards are actually very delicate, thinly sliced ivory. Almost transparent. The box is walnut.' He leans toward you, offering you a salesman's conspiratorial wink. 'They say,' he whispers, 'that this very deck was used and endorsed by the infamous medium -- ' he frowns. 'Not Blavatski; the other one. What was her name? Anyway, it is said that by shining a light through the cards and projecting the image onto a wall, you may open gateways to other worlds. Frankly, I don't buy it.'";
	otherwise if the topic understood includes "geode":
		say "'Nice, isn't it?' beams the proprietor. 'I chanced upon it while rock-hunting in the Cascades last summer.'".

Before giving the puzzle box to the proprietor for the first time:
	say "The proprietor takes the puzzle box and turns it over in his hands carefully. 'Now, this is a tricky one,' he says. 'They don't make them like this anymore. Frightfully difficult, unless you know the catch of course.' His fingers flicker dexterously over the box, sliding a panel here, pressing a corner in there. Suddenly the lid pops open with a faint snick.[paragraph break]'And there you have it,' he says. 'A present for you.' He hands it back to you.";
	now the puzzle box is open;
	now the player holds the puzzle box;
	increase the score by 2 instead.

Book 5 - University

[ University Court ]

University Court is a room. "Isolated and serene within its high, ivy-covered walls, Miskaton University represents this benighted town's single, if somewhat dubious, claim to cultural achievement. Founded some time in the early 1800s, the school's reputation and enrollment have diminished somewhat as Anchorhead drifts further and further into the abyss of provincial backwaterism. Still, it is generally recognized for its collection of folklore and esoteric mythology (one of the oldest and most extensive on the east coast). The Board of Deans was also kind enough to offer Michael a full professorship upon hearing of his recently discovered heritage and his plans to move into the estate. Ivory tower, perhaps, but at least they take care of their own.[paragraph break]There are numerous buildings surrounding this cobbled court, but the only one you are interested in is the library to the west, where Michael told you he'd be until he came back to the real estate agent's office to pick you up. Which, incidentally, he has not yet done.". Instead of going nowhere from University Court, say "Although these hallowed halls of learning probably hold a veritable trove of knowledge, you are no longer a student, and the only building you have any business in is the library.". University Court is northwest of the Junction.

[ University Library ]

The University Library is a room. "Shadows roost thickly in the vaulted ceiling, and small, green-shaded desk lamps cast pools of warm radiance here and there around the library's dim interior. You pause a moment to let the hushed peacefulness of this place soak in -- a welcome relief from the unsettling events of the day. An exit lies east, and a small alcove to the north houses the circulation counter.". Instead of going nowhere from the University Library, say "You may leave to the east, or approach the counter to the north.". The University Library is west of University Court.

The rlamps are scenery in the University Library. Understand "reading" and "lamps" as the rlamps. "The lamps have curved, brass stands and frosted green shades; the kind of thing you'd expect to see on an accountant's desk in the 1930s.".

The desks are scenery in the University Library. "The desks are small but comfortable." Understand "reading desks" as the desks.

Michael is in the University Library.

[ Circulation Desk ]

The Circulation Desk is a room. "A high counter divides the public portion of the library from the reserved stacks -- all the more esoteric and mysterious volumes from the university's collection. If anything, the area behind the counter is even more shadowy than the side you're on. The main reading area lies south.[paragraph break]Hanging on the wall next to the counter is a small, printed sign. Beneath the sign sits a heavy, dog-eared register, and sitting next to the register is a bell." Instead of going nowhere from the Circulation Desk, say "The alcove only opens to the south.". The Circulation Desk is north of the University Library.

The book sign is scenery in the Circulation Desk. "'All restricted books must be signed for on the register, and may not be removed from this building. Please have your faculty ID ready when you make your request.'"

The register is scenery in the Circulation Desk. "It's basically a log, recording what book was checked out, who checked it out, and when. There must be hundreds of names here.". Instead of reading the register: try examining the register. Check taking the register: say "That's library property." instead.

Instead of consulting the register about:
	if the topic understood includes "Michael":
		say "Your husband's name is down at the bottom. The title of the book is [italic type]A Historical Overview of Superstitions in the Miskaton Valley Region[roman type] by J. Arnsworth Frazer, pub. 1906. Quite a mouthful.";
	otherwise:
		say "You don't find that name on the register.".

The librarian is a woman. "The librarian stares at you silently." The librarian can be amenable. The librarian is not amenable. The description of the librarian is "Her slack, pallid skin looks as if it has seen little more than the inside of a cave for most of her life. She stares at you silently with disturbingly large and watery eyes.". Before going south from the Circulation Desk, banish the librarian.

To summon the librarian:
	If the location of the librarian is nowhere:
		say "Ding![paragraph break]A moment later, the gaunt and fishy-eyed librarian emerges silently from the shadows behind the counter.";
		move the librarian to the Circulation Desk;
	otherwise:
		say "The librarian, who is already right there waiting on you, purses her lips in annoyance.".

To banish the librarian:
	if the location of the librarian is the Circulation Desk:
		say "The librarian fades silently into the darkness.";
		now the librarian is not amenable;
		now the librarian is nowhere.
	
Instead of giving the faculty card to the librarian: try showing the faculty card to the librarian instead. Instead of showing the faculty card to the librarian:
	say "The librarian looks the card over, nods slowly, and hands it back to you without a word.";
	now the librarian is amenable.
	
Instead of asking the librarian about:
	if the topic understood matches "Frazer":
		if the librarian is amenable:
			say "Wordlessly the librarian retreats back into the shadows, only to reappear the next moment carrying the thick, dusty tome you saw your husband with earlier. Dutifully, you sign the register, and the librarian hands you the book before disappearing again.";
			now the player is holding Frazer;
			now the librarian is nowhere;
			now the librarian is not amenable;
			increase the score by 2;
		otherwise:
			say "The librarian says nothing. Slowly, very slowly, she looks you up and down, and then, just as slowly, she turns to look at the sign posted over the counter. Finally, agonizingly slowly, she turns back to you, and stares at you with a vague, unblinking air of disapproval.";
	otherwise:
		say "The librarian just looks at you.".

Instead of giving Frazer to the librarian:
	say "Wordlessly the librarian takes the tome from you and spirits it back to the shadowy depths of the
reserved stacks.";
	now Frazer is nowhere;
	now the librarian is nowhere.

The bell is scenery in the Circulation Desk. "One of those little round bells with the button on top; you ring it for service.". Check taking the bell: say "That's library property." instead. Instead of ringing the bell: summon the librarian.

Frazer is a thing with printed name "[italic type]A Historical Overview of Superstitions[roman type] by J. Arnsworth Frazer". The description of Frazer is "A thick and weighty tome, its full title is [italic type]A Historical Overview of Superstitions in the Miskaton Valley Region[roman type] by J. Arnsworth Frazer, published in 1906. It begins: 'Although New England has always been an abundant storehouse of American myth and folklore, the Miskaton River Valley has long been recognized as particularly fecund ground for tall tales and fanciful superstition. Legends abound of hideous, inhuman races living within the venerable hills; of pagan rituals enacted at unholy burial grounds and dedicated to ancient, blasphemous gods...' and continues along the same lines in the typically dry and bombastic style of those times.".

Instead of going east from University Library when the player is holding Frazer: say "You're not allowed to leave the library with the book.".

Instead of reading Frazer:
	if the slip of paper is nowhere:
		say "As you open the book, a slip of paper falls from its pages and flutters to the ground.";
		now the slip of paper is in the location;
	otherwise:
		display the Table of Frazer Contents menu with title "from the Table of Contents of 'A Historical Overview'".

The slip of paper is a thing. The description of the slip of paper is "Someone was apparently using it as a bookmark. There's some writing on one side.". The printing of the slip of paper is "It says:
[italic type]
   born-died same date?
   have to chk. records
[roman type]
The handwriting is unmistakably Michael's.".

After giving Frazer to the librarian:
    say "Wordlessly the librarian takes the tome from you and spirits it back to the shadowy depths of the reserved stacks.";
    now Frazer is nowhere;
    now the librarian is nowhere.

Book 6 - Tests

[ From Office Exterior ]
Test window with "se / open window / look through window / move cans / stand on cans / look through window / get off cans / push cans to window / stand on cans / look through window / open window / enter window / w / x latch / turn latch / w".
Test fence with "se / e / x fence / s / e / w / nw".

[ From File Room ]
Test machine with "w / push play / g / push delete / push play".
Test cabinet with "x cabinet / consult cabinet about foo / consult cabinet about verlac / g".
Test cup with "w / x cup / x coffee / drink coffee / drop cup".
Test door with "w / w / x latch / turn latch / open door / turn latch / close door / turn latch / w / unlock door".

[ From Narrow Street ]
Test streets with "x street / x rooftops / w / se / x street / w / w / e / u / x wall / d / sw".
Test lantern with "n / x lantern / take lantern / i / s".
Test flask with "n / s / s / n / look under table / x flask / take it / i / s".
Test pubdeets with "n / x workers / x fishermen / x bar / ne".

[ From University Court ]
Test library with "w / w / x lamps / x desks / ne / n / x sign / s / e".
Test register with "w / n / x register / consult register about foo / consult register about Michael / s / e".
Test bell with "w / n / x bell / ring bell / g / s / n / ring bell / s / e".

[ Composite ]
Test fetchem with "se / push cans to window / stand on cans / open window / enter window / consult cabinet about verlac / w / unlock door / w / w / w / nw / w / say hello to Michael / show house key to Michael".

Volume 5 - North of Town

Book 1 - Mill Road & Entrance

Mill Road is a room. "The road carries you across a desolate heath of gray, windswept grass. To the south, the black, jagged outline of Anchorhead's steep roofs and sharp, leaning gables cuts across the horizon. The road forks here to the west and east, heading across the railroad tracks in one direction, out toward the seashore in the other.". Instead of going nowhere from Mill Road, say "There's not much in that direction except the featureless, desolate heath.". Mill Road is north from the Junction. Before going west from Mill Road, say "As you cross the railroad tracks, the air becomes warmer, more dingy, and slightly more difficult to breathe.".

The heath is scenery in Mill Road. Understand "grass" as the heath. "The undulating heath stretches away to the west and northwest, an unending carpet of colorless grass."

The roofs are scenery in Mill Road. Understand "rooftops" and "town" as the roofs. "From this distance, all you can make out of Anchorhead are the leaning shapes of its rooftops, huddled in a thin, jagged line against the base of the hills to the south.".

The tracks are scenery in Mill Road. Understand "rails" and "railroad" as the tracks. "The tracks run down from the northeast and pass by the paper mill before bending west. They cross the Miskaton river some miles out of town.".

Mill Entrance is a room with printed name "Entrance to the Paper Mill". "The road turns southwest here and runs squarely through the front entrance to the old paper mill. A gate of heavy iron bars blocks the only opening into this charred fortress, although an overgrown path leads around the wall to the south. To the north, a rutted lane threads its way past a row of dilapidated shacks." Instead of going nowhere from Mill Entrance, say "The road goes north and east from here. The mill gate lies southwest, and an overgrown trail leads south.". Before going south from Mill Entrance: say "The path curves southwest, leading you into an overgrown area behind the mill."; continue the action.

The pmill is scenery in Mill Entrance. Understand "paper mill" as the pmill. "The paper mill is a sprawling, box-like conglomeration of soot-stained brick, surmounted by blackened stumps of smokestacks that continuously belch fat, rolling clouds of smoke into the leaden sky.". Mill Entrance is west from Mill Road.

The iron gate is a closed locked door and scenery. Understand "bars" as the iron gate. The description of the gate is "The gate, a twenty-foot high barricade of narrowly spaced, thick, black, iron bars, is designed to roll horizontally, sealing off the entrance to the mill compound. It is currently shut and locked.  There are no guardhouses, no buzzers or intercoms, no apparent means of getting in or letting anyone inside know you want in; just this implacable gate in an unscalable wall.". The iron gate is southwest of Mill Entrance.

Shanty Town is a room. "The road peters out at a wide clearing of rutted mud, flanked by uneven rows of decrepit, clapboard shacks. The town is quiet, almost deserted; only a few bits of loose tarpaper blowing listlessly in the wind betray the overall stillness.". Instead of going nowhere from Shanty Town, say "The only way out of here is south, back toward the Mill.". Shanty Town is north of Mill Entrance.

The shacks are scenery in Shanty Town. "All peeling paint, broken glass and missing shingles, the houses are poorly built and teetering on the verge of falling apart completely. They are arranged in a vague suggestion of rows on either side of the mud clearing, numbered #1 through #12 with those cheap little nail-up plastic numbers you can buy at hardware stores. Presumably, these denote each shack's 'street address'.".

Bare Foundations is a room. "The foundations of an older structure lie crumbling in a sunken square of ground, hidden away behind the imposing shadow of the mill wall. Weeds push up through cracked and buckling slabs of concrete; twisted rebar and rusting pipes poke up like the legs of dead insects. The ruins are surrounded on all sides by dense thickets, although narrow, overgrown trails lead northeast and southeast through the underbrush.". Instead of going nowhere from Bare Foundations, say "The thickets are too dense in that direction.". Before going north from Bare Foundations:
	if the hatch is scenery:
		try going south instead.

The hatch is a closed locked door and scenery. The initial appearance of the hatch is "Set into the base of the mill wall, nearly covered by the thickets, is a metal hatch." The hatch is north of Bare Foundations and south of TODO.

The thicket is scenery in Bare Foundations. "The thickets are full of painful thorns and appear quite impenetrable. They are also very deep; there's no telling what could be hidden -- or what could be hiding -- in their brambly depths." Instead of searching the thicket:
	if the hatch is scenery:
		say "Carefully pushing the prickly branches aside, you find a rusty metal hatch set into the base of the wall.";
		now the hatch is not scenery;
	otherwise:
		say "You find nothing else of interest.".

South of Mill Entrance is Bare Foundations. Before going from Mill Entrance, if the room gone to is Bare Foundations, say "The path curves southwest, leading you into an overgrown area behind the mill.".

Northeast of Bare Foundations is Mill Entrance. Before going from Bare Foundations, if the room gone to is Mill Entrance, say "The path curves north, leading you around to the front of the mill.".

Book 2 - Lighthouse

Breakwater is a room. "You are picking your way across the breakwater's bare, rocky spine, where the road has diminished to little more than a pair of dusty ruts. A hundred yards to the northeast, at the breakwater's far end, the lonely stone tower of Anchorhead's lighthouse stands vigil against the ocean.". Instead of going nowhere from Breakwater, say "The narrow breakwater is surrounded by ocean. You can only go west, back to shore; or northeast, to the lighthouse.". Breakwater is east from Mill Road.

The lview is scenery in Breakwater. Understand "lighthouse" as lview. "The lighthouse stands tall against the horizon, a dingy white tower amidst a gray sky and a grayer sea. Despite the ominous cast to the weather, no beacon is shining from the tower's top.". Breakwater is east from Mill Road.

Lighthouse Base is a room with printed name "At the Foot of the Lighthouse". "You stand in a circular clearing among the stones, surrounded on nearly every side by the sea. Before you looms the ancient, massive lighthouse, a vertiginous pillar of pale brick jabbing defiantly up at the sky. The road from the southwest ends here, although it looks as though you could pick your way down the rocks to the southeast, around the structure's base.". Instead of going nowhere from Lighthouse Base, say "In that direction there is only the sea.". Lighthouse Base is northeast from Breakwater.

The lhouse is scenery in Lighthouse Base. Understand "brick" and "pillar" as the lhouse. "Its towering shadow seems to lean menacingly over you, eclipsing half the sky. It is an old and brooding thing, heavy with the weight of centuries of dark memories. Craning your neck to see the top of it, you can't help but make the comparison with a lightning rod, as if this building were the focus for whatever restless forces seem to be stirring through the turbid atmosphere above.[paragraph break]Despite the ominous cast to the weather, no beacon can be seen from the top of the lighthouse.".

The bronze door is a closed locked door. The description of the bronze door is "A monstrous slab of solid bronze set into the thick stone wall of the lighthouse base. Age and seawater have covered its once gleaming surface with an unhealthy green crust of verdigris.". The bronze door is east from Lighthouse Base.

Rocky Spur is a room. "A small outcropping of stone, just large enough for you to stand on, sticks out from the end of the breakwater. The hungry sea laps at your feet, surging over the rocks and then trickling down into crevices. To the southwest, an uneven trail leads back up the rocks, around the side of the lighthouse.". Instead of going nowhere from Rocky Spur, say "In that direction there is only the sea.".

Rocky Spur is southeast from Lighthouse Base. Northwest of Rocky Spur is nowhere. Rocky Spur is down from Lighthouse Base. Before going to Rocky Spur, say "Carefully, you climb down the rocks. The path bends northeast, following the curve of the lighthouse wall.".
 
Lighthouse Base is southwest from Rocky Spur. Northeast of Lighthouse Base is nowhere. Before going from Rocky Spur, say "The trail turns northwest, following the curve of the lighthouse wall.".

Book 3 - Tests

[ From Mill Road ]
Test hatch with "w / w/ n / w / nw / s / e / n / search thicket / l / n".
Test spur with "e / ne / se / nw / u / d".

Volume 6 - South Town

Book 1 - Bridge & Square

[ Whateley Bridge ]

Whateley Bridge is a room. "A hoary monument of crumbling, moss-eaten flagstones, Whateley Bridge is possibly older than any other structure in the entire city. Ponderously it spans the dark, torpid waters of the Miskaton River, connecting the north and south halves of the city and occasionally raining bits of gravel and mortar from its underside into the water. It looks just wide enough for two cars to pass each other between the flanking stone parapets, but you wouldn't volunteer to try it.". Instead of going nowhere from Whateley Bridge, say "The bridge only leads north and south from here.". Whateley Bridge is south of the Narrow Street.

The parapets are scenery in Whateley Bridge. Understand "bridge" as the parapets. "The parapets are about waist high, made of crumbling stone.".

[ Town Square ]

Town Square is a room. "A wide expanse of uneven pavestones lies open to the sky, bordered on all sides by the leaning, steep-roofed architecture that looms over everything in this city. The municipal courthouse stands at the south end of the square, next to the mouth of a dark, narrow alley to the southwest. Avenues to the west and east lead back into the cramped and ingrown streets, while to the north lies Whateley Bridge.

In the center of the square, rising from a circular lawn of unhealthy-looking grass and weeds, stands a strange, stone obelisk. It seems to be a monument of some sort, although you can see no plaque or marker anywhere near it.". Instead of going nowhere from Town Square, say "Streets lead north, east and west from here. You can enter an alley to the southwest, or the city courthouse to the south.". Town Square is south of Whateley Bridge.

The faroff bridge is scenery in Town Square. "Old Whateley Bridge spans the river to the north.". Understand "bridge" as the faroff bridge.

The cbuilding is scenery in Town Square. Understand "courthouse" as the cbuilding. "The courthouse is probably the largest building in the old city, although that isn't saying much. Built, like nearly every other structure here, with an eye toward steep roofs, leaning gables, and an overall air of looming decay, it casts its stern shadow across the square like an old Puritan magistrate passing judgment on some cowering sinner. Wide wooden steps lead up to its main entrance due south of here, while a narrow alley leads around the side of the building to the southwest.".

The lawn is scenery in Town Square. "The lawn surrounds the obelisk to a distance of ten feet or so. It looks as though it hasn't been tended to in a while.". Understand "grass" as the lawn.

The obelisk is scenery in Town Square. "The obelisk measures about two feet square at its base, narrowing slightly as it rises a good fifteen feet to a bluntly pointed tip. An iron ring is embedded in the stone high up on one side, about two feet from the top. Dense, twisting hieroglyphs cover all four sides of the obelisk, although they are too worn to be read clearly.". Understand "stone" and "monument" as the obelisk. The iron ring is part of the obelisk.

The hieroglyphs are part of the obelisk. "They are not Egyptian, which is what you first assumed from the general shape and design of the obelisk. In fact, though you're no archaeologist, these carvings don't look like any sort of ancient writing you've ever seen. The characters, which must have been carved very deeply in order to survive this much erosion, twist and squirm in disturbing ways, flowing into and through each other and almost seeming to shift slightly as you try to follow their lines. The effect is deeply unsettling, and you have to suppress an urge to take a step or two back away from the monument.".

[ Side Alley ]

Side Alley is a room. "This is a featureless blind alley, a dead end. Through the narrow and heavily shadowed opening to the northeast, you can see the square and the obelisk at its center." Instead of going nowhere from Side Alley, say "The only exit is to the northeast.". Side Alley is southwest from Town Square.

opeek is scenery in the Side Alley. Understand "obelisk" as opeek. "Although you're too far away to read the hieroglyphs on its sides, you have an otherwise excellent view of the obelisk from here.".

Book 2 - Riverwalk & Lot

[ Riverwalk ]

The Riverwalk is a room. "A low, irregular brick wall to the north divides this street from the steep, mud-slick banks of the sinuous Miskaton, while a rusty iron gate provides access to a precarious flight of stone steps leading down the bank to the water's edge. The street bends south here, turning into a misty avenue between the trees. The town square lies west, a vacant lot lies east.". Instead of going nowhere from the Riverwalk, say "The street leads to the west and to the south. A vacant lot lies east and a rusty gate lies to the north.". The Riverwalk is east from Town Square.

The old brick wall is scenery in the Riverwalk. "Presumably, it's to keep people from falling into the river, although it looks old enough to disintegrate were you to even lean on it.".

The rusty gate is scenery in the Riverwalk. "The rusty gate is open.".

[ Under the Bridge ]

Under the Bridge is a room. "The ponderous stones of Whateley Bridge arch overhead, casting this little concrete ledge into deep shadow. At your feet, the dark waters lap quietly against the stones with a hollow, subterranean sound. Stone steps to the southeast lead back up to street level." Instead of going nowhere from Under the Bridge, say "You can return to the riverwalk by going up the stairs to the southeast, or you can go through the small, rusty door to the south." Under the Bridge is down from the Riverwalk. North from Riverwalk is southeast from Under the Bridge. Before going to Under the Bridge, if the room gone from is Riverwalk: say "You pass through the gate and down the stone steps, which curve northwest as they lead down to the edge of the river.".

The steps are backdrop. The steps are in the Riverwalk and Under the Bridge. "[if the player is in Riverwalk]The stairs lead down to the banks of the river[otherwise]The stairs lead back up to the riverwalk[end if].".

The bridge bottom is scenery in Under the Bridge. "You can make out a shadowy reflection of yourself in the slowly rippling water.". Understand "bridge" or "stones" as the bridge.

The small metal door is a closed openable locked door. "A small metal door, blotchy with rust, is set into the south bank of the river, underneath the bridge.". It is south from Under the Bridge and north from the Access Shaft. The initial appearance of the door is "[if the player is in Under the Bridge]A small metal door, blotchy with rust, is set into the south bank of the river, underneath the bridge[otherwise]In the north wall is a small metal door.[end if]".

[ Vacant Lot ]

Vacant Lot is a room. "Where once a building stood, there is now only cracked pavement and rampant weeds. A high chain-link fence surrounds this vacant lot; the only breaks lie to the west and southeast." Instead of going nowhere from the Vacant Lot, say "The chain-link fence surrounds this place on all sides except west and southeast.". The Vacant Lot is east of Riverwalk.

The mattress is a thing in the Vacant Lot. "A filthy old mattress lies among the weeds over in one corner of the lot.". The description of the mattress is "The mattress is stained and beaten, oozing stuffing in several places. From the cans and food wrappers scattered around it, it looks as though somebody's been using it as a bed.". To bleargh: say "The mattress is extremely dirty and probably infested with bugs. You'd just as soon not even touch it, much less drag it around with you.". Instead of taking the mattress, bleargh instead. Instead of pushing the mattress, bleargh instead.

The chain-link fence is backdrop. The chain-link fence is in the Vacant Lot and the Wharf.

The old man is a man. The old man can be thirsty. The old man is thirsty. The old man has a number called state. The state of the old man is 1. The initial appearance of the old man is "An old man dressed in dirty rags sits on his mattress, muttering to himself as he stares intently out to sea.". The description of the old man is "This pitiful creature might once have been a successful and healthy man, but alcohol and mental illness have dragged him down irretrievably into degenerate squalor. His clothes are filthy tatters; his hair is a matted, knotted mess; his body reeks of booze and urine. He sits on his mattress, seemingly oblivious to you or the rest of the world, and that's where he'll stay until either Death or the next drink comes around.[paragraph break]The old bum is clutching a small object to his chest; he rubs it and turns it in his hands constantly, as though it were some sort of relic or charm. It's hard to tell, but it appears to be a key.".

Every turn while the old man is visible and the old man is thirsty:
	if a random chance of 1 in 5 succeeds:
		say "[one of]'BURROWING INSECTS!' bellows the old man at the top of his lungs[or]'YOU CAN'T CATCH ME!' shrieks the old man suddenly. 'I CAN GO WHERE YOU CAN'T GO!' He falls quiet again, rocking gently back and forth and clutching something to his chest[or]'You don't know. You don't know,' whispers the old man.[cycling].".

The small copper key is a thing. The small copper key unlocks the metal door. The old man is holding the small copper key. The description of the small copper key is "'Mine!' the old man hisses, clapping his hands onto his chest as though you were about to frisk him for it. 'It's mine, and I won't let it go!'". Instead of examining or taking the small copper key when the old man is holding the small copper key, say "'Mine!' the old man hisses, clapping his hands onto his chest as though you were about to frisk him for it. 'It's mine, and I won't let it go!'". 

Instead of answering the old man that, say "The old man stares at you blankly.". Instead of saying hello to the old man, say "The old man stares at you blankly.".

Instead of giving the flask to the old man:
	if the old man is thirsty:
		say "His eyes burning with greed, the old man snatches the flask from your hand, unscrews the cap and tips it up into his waiting mouth. Trickles of pungent brown liquid ooze from the corners of his mouth as he swallows convulsively, his hands trembling, his eyes squeezed shut and streaming tears. Finally, he falls back onto his mattress with a beatific smile on his mud-smeared face, the flask dropping from his fingers.";
		now the initial appearance of the old man is "The old man looks up at you with fawning admiration.";
		now the printed name of the flask is "flask (which is empty)";
		now the flask is in the Vacant Lot;
		now the old man is not thirsty;
		increase the score by 2;
	otherwise:
		say "His eyes burning with greed, the old man snatches the flask from your hand and tips it up into his waiting mouth. Then, sputtering angrily as he realizes there is no whiskey in it, he hurls the flask across the lot and glares at you with something approaching real hatred.";
		now the flask is in the Vacant Lot.
	
Table of Old Man One-Liners
topic	response
"himself"	"The old man sighs. 'I was a doctor, once. I was a very good doctor. But that was before Edward, you know. Little Edward and his...' His voice trails off to a whisper, but you could swear he mouthed the word 'brother'"
"self"	"The old man sighs. 'I was a doctor, once. I was a very good doctor. But that was before Edward, you know. Little Edward and his...' His voice trails off to a whisper, but you could swear he mouthed the word 'brother'"
"anchorhead"	"The old man covers his face in his hands. 'Not a town,' he cries, 'not a town -- a hive of BURROWING INSECTS! A SWARM OF MAGGOTS, THEY ARE!' He looks at you slyly. 'But they can't find me, when the maggots come out. They can't find me in my hidey-hole.'"
"anna"	"Tears stream unchecked down the old man's face. 'Shouldn't have happened to the girl. Only seventeen, she was, still a child when he... when that red-eyed monster took her... ' His eyes suddenly darken, his fists clench. 'HIS OWN DAUGHTER, GODS FUCK 'EM! SHOULDN'T HAVE DONE THAT TO HIS OWN DAUGHTER! GODS FUCK 'EM ALL!!'"
"mordecai"	"The old man shrinks away from you. 'Not here!' he hisses. 'Not anywhere! Never speak it!'"
"edward"	"The old man lets out a vicious cackle. 'They got to him, didn't they? Maggots got to him good. Got into his head. The maggots got into his head, eatin' at him 'til he had to crack it open to get 'em out. Poor boy.' He shakes his head. 'Delivered him, I did. Pulled him right out of his mama. Him and his -- ' Suddenly he stops, and will say no more."
"flask"	"The bum perks up. 'More whiskey?' he asks greedily."

To decide what text is the old man's response to (query - a snippet):
	if the old man is thirsty:
		decide on "The old man squints at you with bleary, cunning eyes. 'Don't know too much about that,' he quavers. 'Memory's not what it used to be... I'm so thirsty, Miss, so thirsty...'";
	if the query matches "william":
		if the state of the old man is 1:
			now the state of the old man is 2;
			decide on "The old man falls silent all of a sudden, and for a while he simply stares down at his hands, limp and open in his lap. Then, drawing a deep breath, he begins to speak, and for the first time his voice is steady, without the reedy whine of alcoholic craving.[paragraph break]'Ayuh, little Edward had a brother, so he did. And I know him. I know of William, so I do. I delivered the child. Anna Verlac was his mother. It... it was... '[paragraph break]He leans over and grips your arm with a hand that is suddenly steady and strong. 'It was her father's poison seed, y'see. That evil bastard poisoned her womb and put a monster inside her. What she gave birth to... it was... it wasn't... oh, God, when I held that... that abortion in the shape of an infant, that thing with hooves for feet and its crown of writhing... when it looked up at me... It looked up at me with its father's red-rimmed eyes.' The old man shudders convulsively, and it is a while before he can speak again.[paragraph break]'Anna and I decided between ourselves, we did. The... her child... it lived for a few years, but it was sickly, and in pain, and it could never be normal nor healthy. She brought it to me... I was her doctor, you see, I'd seen her through her child's birth, and she trusted me... and I put the thing down, softly and without pain, and they laid it to rest in the family crypt.[paragraph break]'And Anna thanked me for it, so she did.'[paragraph break]The old man falls silent again, and his wavering, bloodshot eyes wander once more out to sea. And he is lost, once again, to the horror and pain of the memories that can only be silenced by drink.";
		otherwise:
			decide on "'All I care to tell of that tragedy, I've told,' the old man says quietly, not looking at you. 'I've no wish to speak of it again.'";
	otherwise if (the query matches "coffin" or the query matches "crypt"):
		if the state of the old man is 1:
			decide on "Eh? What coffin d'you mean?";
		otherwise if the state of the old man is 2:
			now the state of the old man is 3;
			decide on "The old man stares at you suspiciously. 'William was buried in the family crypt, at his mother's request, so he was; what're you getting at?'";
		otherwise:
			decide on "'I told you about that already,' snaps the old man. 'Why don't you leave me alone?'";
	otherwise if the query is a topic listed in the Table of Old Man One-Liners:
		decide on the response entry;
	otherwise:
		decide on "The old man screws his face up in confusion. 'Don't know about that,' he mutters.".

Instead of asking the man about something:
	let r be the old man's response to the topic understood;
	say "[r].".

Instead of showing the amulet to the old man: try giving the amulet to the old man instead. Instead of giving the amulet to the old man:
	if the state of the old man is not 3:
		say "The old man takes a good, greedy look at the amulet, but makes no move to take it.";
	otherwise:
		say "'Thank you kindly, Miss, you're a generous one, so you are,' grins the old man as he closes his grimy fingers around the charm. 'And here y'are,' he says, tossing you the copper key. 'I'll pray it
does you good.'[paragraph break]The old man staggers to his feet. 'I'll be gettin' on, then,' he says. 'If I can make away before nightfall, p'raps I'll be out of their reach before the maggots come out.' He wraps the leather thong around his hand and closes the charm in his fist.[paragraph break]He turns to you one last time. 'Don't let them find you,' he says earnestly. 'Get out while you can. If you stay, they'll track you down eventually. It's the blood. He can smell it, so he can. And he always returns to his blood.'[paragraph break]He shambles off, up the riverwalk toward Town Square, his shadow dragging long behind him. Looking to the sky, you realize that the sun is nearly set; you've been talking to the old man for much
longer than you thought, and it will be dark soon.[paragraph break]";
		now the old man is holding the amulet;
		now the player is holding the small copper key;
		now the old man is nowhere;
		increase the score by 5.

Instead of showing the animal's skull to the old man:
	if the state of the old man is 1:
		say "The old man bats the skull away with an expression of disgust. 'What're you stickin' that in my face for?' he demands.";
	if the state of the old man is 2:
		say "The old man starts visibly when you show him the skull. 'What about it?' he mutters.";
	if the state of the old man is 3:
		say "The old man grows sickly pale. He raises one hand, as if to ward off the sight of the skull, deny the truth one more time; then his hand drops, and he sinks down onto the mattress, groaning.[paragraph break]'Oh, it's true,' he cries, 'it's true, God help my lying soul. It was her father who wished to kill the thing, not Anna -- kill it to make way for another, he said, a 'more fitting vessel'. He wanted to try again -- Gods, the depth of his evil -- after the way the first one came out, he wanted to try again![paragraph break]'Anna came to me and asked for my help, and what could I do? What could I do? It was her child, for God's sake, no matter what else it was, and she couldn't bear to lose it. But we had to weigh the coffin down with something...'[paragraph break]He sits up, suddenly, fastening on you with a sick, pleading look.[paragraph break]'I've told you too much, now,' he whispers desperately. 'They'll know; the maggots'll find out for sure. They'll find me; even in my hole, they'll find me.' He lets out an eye-wateringly pungent breath, 'P'raps it's best they do. I've spent so long drowning my sins, p'raps time's come to pay for them at last. This won't do me much good no more,' he says, holding up his little copper key. 'And yet...' He closes his fist around it again. 'And yet, maybe there's a way... they say there's ways to protect yourself, wards versus the Evil Eye and such. Perhaps, if I could get me one o'those...".

Test man with "test betray / s / d / s / se / ne / n / n / w / n / n / n / s / look under table / take flask / s / s / s/ e / e".

[ The old man stares at you blankly. ]

[ Wharf ]

The Wharf is a room. "The gentle creaking of hawsers and the hollow slap of water beneath the wooden pier provide a faint counterpoint to the endless, rhythmic surging of the sea. The fishing industry (like the paper industry) has all but died away in Anchorhead; nonetheless there are still a few boats tied to the pier. A path leads back through an opening in a chain-link fence to the northwest; otherwise, it's just you and the ocean." Wharf is southeast from the Vacant Lot.

The boats are scenery in the Wharf. "The few fishing boats that remain look barely sea-worthy, held together by barnacles and old habit.". Understand "fishing" as the boats. Instead of entering the boats, say "The boats are not your property, and you have no desire to trespass on what is probably someone's last feeble source of livelihood.".

The old tin is an openable container. The old tin is closed. "An old, discarded tin of fish oil sits at the end of the pier.". Instead of examining the tin, say "It's dented and rusty, and you can barely make out the words 'Skagen, Denmark' printed along the side. The lid is [if the old tin is closed]closed[otherwise]peeled back, revealing a smelly quantity of fish oil[end if]." instead. Instead of searching the tin, say "[if the old tin is closed]You can't see inside, since the old tin is closed[otherwise]In the old tin is a smelly quantity of fish oil[end if].". The old tin is in the Wharf.

The fish oil is a thing with printed name "a smelly quantity of fish oil". The fish oil is in the old tin. The description of the fish oil is "It's a viscous, nasty-smelling goo, made from and made for feeding fish. Not very appetizing.". Instead of taking the oil, say "You dip your finger in and come up with a small glob of pungent fish oil.".

Book 3 - Asylum

[ Dark Corner ]

Dark Corner is a room. "The rooftops above you lean so close together as to nearly block out the sky altogether, making this a particularly dark and unpleasant section of the city. The street leads away to the east, and a shadowy driveway leads through a high brick wall to the south." Instead of going nowhere from Dark Corner, say "The street leads east and south from here." instead. Dark Corner is west from Town Square.

[ Asylum Courtyard ]

Asylum Courtyard is a room. "The grim, white-washed edifice of Danvers Asylum bounds this tiny, shadowed courtyard to the south, its narrow, barred windows staring blankly down at you like ranks of shriveled, empty eye sockets. You can escape through a narrow gateway in the high, brick wall to the north.". Instead of going nowhere from Asylum Courtyard, say "The asylum grounds are surrounded by a high brick wall, and the only way back to the outside world is to the north.". Asylum Courtyard is south from Dark Corner.

[ Waiting Room ]

The Waiting Room is a room. "Ugly, mint-green tiles and walls of whitewashed cinderblock comprise the decor of this inhospitable waiting room. A hard little sofa upholstered in avocado vinyl and a feebly struggling potted palm are provided for the comfort of visitors, although you get the feeling that few inmates of this institution are fortunate enough to have visitors. A metal gate bars entrance to a southern passageway, which you assume leads to the inmates' section. The exit lies north.". The Waiting Room is south from Asylum Courtyard.

The tiles are scenery in the Waiting Room. Understand "floor" as the tiles. "The tiles are pale, bland, non-color green, specifically designed to be as soothing as possible. Just looking at them makes you want to smash your head against the wall.".

The asofa is an enterable supporter and scenery in the Waiting Room. Understand "sofa" and "couch" as the asofa. "It is the apotheosis of utilitarian decor, little more than a horizontal slab with some vertical slabs around the sides to keep people from falling off. And it is avocado.". Report entering the asofa: say "You ease yourself onto the hard sofa. Your butt begins to get tired almost immediately."; rule succeeds. Report getting off the asofa: say "Gratefully, you stand up again."; rule succeeds.

Book 4 - Court House

[ Courthouse ]

The Courthouse is a room. "A long, dimly lit, north-south corridor stretches away from the courthouse entrance. Closed, unmarked doors line either side of the hall, their pebbled glass windows lit from within by a murky, yellow-orange light. Silence reigns here; your footsteps echo eerily on the tiled floor, and
occasionally you can hear muted conversation behind one of the doors -- you can't tell which. At the
hall's southern end, a staircase leads down into the basement; a sign hanging above it reads
'RECORDS'. You can return to Town Square to the north.". Instead of going nowhere from the Courthouse, say "All of the doors are locked.". The Courthouse is south from the Town Square.

The cdoors are scenery in the Courthouse. Understand "windows" and "doors" as the cdoors. "Through the pebbled glass you can see a light on inside, but nothing else is visible.".

The cstairs are backdrop. They are in the Courthouse and the Courthouse Basement. Understand "stairs" and "staircase" as the cstairs. "[if the location is the Courthouse]The stairs lead down to the record archives[otherwise]The stairs lead back up to the ground floor.[end if].".

[ Courthouse Basement ]

The Courthouse Basement is a room. "A single bulb dangling from the ceiling casts a watery, yellow light against the brick walls. A rickety staircase to the north leads back up to the ground floor, and two narrow doorways lead into the record archives. Over the southeast door hangs a sign that reads 'BIRTH RECORDS', while the southwest door bears the sign 'DEATH RECORDS'.". The Courthouse Basement is down from the Courthouse.

[ Birth Records ]

Brecords is a room with printed name "Birth Records". "A bare room with cinderblock walls. Thousands of records and documents, most yellow and brittle with age, are stacked everywhere in towering piles. The exit lies northwest.". Brecords is southeast of the Courthouse Basement.

The birth records are scenery in Brecords. Understand "documents" as the birth records. "The records go all the way back to the seventeenth century and are quite extensive. It would take a while to sort through all the papers, but you could look an individual up by name. Although it would take longer, you can also flip through all the documents in a given year to see if any familiar names pop up.". Instead of consulting the birth records about:
	let b be the birthday for the topic understood;
	if b is not "blank":
		say "[b][paragraph break]";
		if the player understands the pattern:
			say "You seem to be uncovering a pattern here; all these Verlacs seem to have lived to a ripe old age and then died on the very day the next one is born. The birth records are incomplete -- no parents are listed, and no cause of death is noted on the death records -- there's just not enough information here to draw a conclusion. You'll simply have to keep digging until you find the answers...";
	otherwise:
		say "The records don't seem to contain anything about [the topic understood].".

[ Death Records ]

Drecords is a room with printed name "Death Records". "A bare room with cinderblock walls. Thousands of records and documents, most yellow and brittle with age, are stacked everywhere in towering piles. The exit lies northeast.". Drecords is southwest of the Courthouse Basement.

The death records are scenery in Drecords. Understand "documents" as the death records. "The records go all the way back to the seventeenth century and are quite extensive. It would take a while to sort through all the papers, but you could look an individual up by name. Although it would take longer, you can also flip through all the documents in a given year to see if any familiar names pop up.". Instead of consulting the death records about:
	let d be the deathday for the topic understood;
	if d is not "blank":
		say "[d][paragraph break]";
		if the player understands the pattern:
			say "You seem to be uncovering a pattern here; all these Verlacs seem to have lived to a ripe old age and then died on the very day the next one is born. The birth records are incomplete -- no parents are listed, and no cause of death is noted on the death records -- there's just not enough information here to draw a conclusion. You'll simply have to keep digging until you find the answers...";
	otherwise:
		say "The records don't seem to contain anything about [the topic understood].".
		
Book 5 - Sewer

The Access Shaft is a dark room. "This tiny, concrete-lined alcove within the underside of the bridge forms the top of a vertical shaft leading down into darkness. Iron rungs embedded in the wall provide a way down.".

The Sewer Tunnel is dark room. "The tunnel is ankle-deep in brackish water, though raised walkways on either side provide relatively dry footing. The walls are slick, the air damp and foul. The main tunnel runs north and southeast. Numerous smaller pipelines lead in all directions, but all are too small for you to crawl through. Iron rungs embedded in the wall lead up through an access shaft, back to the surface.". The Sewer Tunnel is down from the Access Shaft.

The pipelines are scenery in the Sewer Tunnel. "The mouths of numerous pipelines open into this main tunnel. Some of them are nearly a foot across, some of them no wider than your thumb; all of them are too small to crawl through.".

The sewer ladder is scenery in the Sewer Tunnel. Understand "rungs" as the sewer ladder. "It's an ordinary wooden ladder.".

The Dripping Tunnel is a room. "The ceiling in this north-south tunnel is so low you must bend nearly double to navigate it. Water drips endlessly through the walls and ceiling, seeping in through thousands of invisible fissures, the constant plip-plip-plipping echoing loudly throughout the tunnel. The air is so damp you can hardly breathe. Unless your sense of direction is mistaken, you must be crossing the Miskaton River -- [italic type]underneath it[roman type].". The Dripping Tunnel is north from the Sewer Tunnel.

The Broken Tunnel is a room. "This looks to be an older part of the sewer system that has fallen into disrepair. Many of the pipes here have crumbled and are filled with debris.". The Broken Tunnel is north from the Dripping Tunnel.

The pipes are plural-named scenery in the Broken Tunnel. "The pipes are broken and jagged, filled with debris and thick slime.".

The old iron hatch is a closed door. The old iron hatch can be oiled. It is not oiled. The initial appearance of the old iron hatch is "[if the player is in the Broken Tunnel]Set in the low ceiling is an old iron hatch[otherwise if open]Much of the water is pouring through an open hatch set in the floor of the tunnel[otherwise]Set in the floor of the tunnel is an old iron hatch[end if].". The description of the hatch is "It's a rectangle of corroded metal, just over a foot long on each side. It's currently hanging [if open]open[otherwise]closed[end if]." The old iron hatch is up from the Broken Tunnel and down from the Outflow Tunnel.

Check opening the old iron hatch: if the old iron hatch is not oiled, say "You dig your fingers under the edge and tug, but the hinges are rusted nearly solid. You can't make it budge." instead. Report opening the old iron hatch: say "The oiled hinges give a little, allowing you to wiggle your fingers further under the door's edge. A sharp tug -- and the door swings down suddenly, spilling filthy water into your face.".

The Vaulted Tunnel is a room. "The walls of this long, rectangular chamber are made of crumbling brick, not concrete; most likely it was built at some earlier period than the rest of the tunnels. The ceiling is lost in darkness above you, but from the sounds of the echoes it must be pretty high. Water flowing in from the northwestern tunnel has pooled in a depression sunk into the limestone floor, becoming quite deep near the far end.". The Vaulted Tunnel is southeast from the Sewer Tunnel.

The sewer water is scenery in the Vaulted Tunnel. "The water is dark, brackish brown, and utterly foul. An oily sheen covers its surface, and occasionally small lumps float by -- lumps of what, you'd rather not guess.".

The Outflow Tunnel is a room. "From the smell of it, this must be a sewage outflow tunnel. Filthy water swirls past a metal grate to the west and eddies around your hands and knees, on which you are forced to crawl in this cramped cylindrical passageway. To the east, the tunnel narrows still further, terminating about twenty feet further in a circle of dim light.". Narrow Beach is east of the Outflow Tunnel. Report going east from the Outflow Tunnel: say "You reach the end of the pipe and wriggle your way out, dropping awkwardly to the sand.".

The grate is scenery in the Outflow Tunnel. "The grate is heavy and solidly embedded in the concrete. Bits of filth and slime brought down by the water cling to the bars. It completely blocks further progress west.". Check going west from the Outflow Tunnel: say "The thick metal grate blocks further progress up the tunnel." instead.

Book 6 - Tests

[ From bridge ]
Test mattress with "s / e / e / x mattress / take it / w / w / n".
Test tin with "s / e / e / se / x tin / take tin / open it / x it / close it / nw / w / w / n".

Volume 7 - South Road

Book 1 - Avenue & View

[ Chilly Avenue ]

Chilly Avenue is a room. "Perhaps it is merely the effect of some unwholesome vapour rising from the murky waters of the nearby Miskaton, but the temperature along this street seems perceptibly cooler than normal, even for a New England autumn. Two dirt roads lead south and southwest, into the dense woods at the edge of town.[if the location of the clammy mist is Chilly Avenue]

A clammy mist hangs thickly in the air, seeping through your clothes and making you shiver.[end if]". Instead of going nowhere from Chilly Avenue, say "The street leads north and south from here, and another road splits off to the southwest." It is south from Riverwalk.

The clammy mist is scenery in Chilly Avenue. "The mist seems to gather most thickly to the southwest. You can't see more than a few yards down the road in that direction.". Before going southwest from Chilly Avenue:
	if the location of the clammy mist is Chilly Avenue:
		if the location of Michael is not Chilly Avenue:
			say "Before you can take more than a few steps, the mist coils its tendrils around you, freezing your marrow with its damp embrace. For one terrifying moment you can feel it probing at your mouth and nostrils, seeking a way in, and then with a sudden wrench you are free, gasping and choking and eyeing the mist with newfound wariness." instead;
		otherwise:
			say "As you walk through, the mists part before your husband almost deferentially, quickly dissolving away into nothing.";
			say line break;
			now the clammy mist is nowhere;
	say "The ground begins to rise sharply as the road climbs up into the hills south of town.".

[ Scenic View ]

Scenic View is a room. "The treeline falls away on the north side of this northwest-northeast bend in the road, giving way to a panoramic view of the Miskaton River Valley and the grubby little town of Anchorhead nestled within it. From here you can see the paper mill almost directly to the north; the solitary lighthouse and surrounding ocean to the northeast; and the dilapidated stone church below you to the east. Winding through it all is the oily black ribbon of the Miskaton, and almost directly in the center lies the little clearing of Town Square. You can just make out the shape of the obelisk from here.". It is southwest of Chilly Avenue.

Obelisk view is scenery in Scenic View. "You can just make out the shape of the obelisk from here." Understand "town" and "square" as obelisk view.

Mill view is scenery in Scenic View. "The dark structure of the paper mill squats broodingly in the crook of the Miskaton river.".

Lighthouse view is scenery in Scenic View. "The lighthouse stands tall against the horizon, a dingy white tower amidst a gray sky and a grayer sea. Despite the ominous cast to the weather, no beacon is shining from the tower's top.".

Ocean view is scenery in Scenic View. "The great, gray ocean stretches out as far as you can see, merging with the clouds on the horizon.".

Church view is scenery in Scenic View. "The old stone church lies to the east, its tottering steeple rising high above the dead, groping branches that surround it.".

River view is scenery in Scenic View. "The Miskaton winds down from the northwest, then bends in a more easterly direction some miles west of town. Its last half-mile or so neatly divides the town of Anchorhead in half before emptying into the sea. Its waters are murky and torpid, hiding many old secrets in its languid depths.". Understand "river" and "miskaton" as river view.

Book 2 - Church & Churchyard

Book 3 - Open Road

[ Deserted Lane ]

Deserted Lane is a room. "The gently winding lane makes its way through the birch woods south of town. New England foliage is famous for its splendid colors in the fall, but the oppressive weather and pervading murk have leached these trees of most of their tint. The road continues south into the increasingly dense forest, and in the other direction heads back to town. A paved walk also leads east through the trees." Instead of going nowhere from Deserted Lane, say "Even if the woods weren't so singularly uninviting, the underbrush is too thick to wade through, and there are no paths.". It is south from Chilly Avenue.

[ Down the Road ]

Down the Road is a room. "The forest grows denser as you go, crowding thickly up to either side of the road. The groping, tangled branches block out what little sunlight there is left. Your footsteps are muffled; whispering leaves and the slow drip of water are the only sounds you can hear. Beyond the watching trees, the shadows are impenetrably thick. The road stretches interminably, north to south." It is south from Deserted Lane. Instead of going south from Down the Road, say "You walk a bit farther down the road, but it doesn't seem to lead anywhere, and the shadows grow thicker the farther down you go. After a while you turn back, unable to suppress a shiver." instead. Instead of going nowhere from Down the Road, say "Even if the woods weren't so singularly uninviting, the underbrush is too thick to wade through, and there are no paths.".

[ Churchyard ]
The Churchyard is a room. "A low, wrought-iron fence, its spike-tipped bars bent or leaning at crazy angles, surrounds the overgrown yard of this dark, abandoned church. A gap in the fence leads back west, while a bare path beaten through the groping weeds leads around the church to the southeast." Instead of going nowhere from the Churchyard, say "The wrought-iron fence surrounds the entire churchyard; the only way out is to the west, or around that little path to the southeast." The Churchyard is east from Deserted Lane.

The cfence is scenery in the Churchyard. Understand "fence" or "iron" or "gate" as the cfence. "The fence is about chest-high and topped with nasty iron spikes. Weeds and ground vines wind up through the bars, most of which are bent and some of which are missing altogether."

The achurch is scenery in the Churchyard. Understand "church" as the achurch. "The hoary structure towers over your head, built of massiage and nearly buried beneath an invading tide of ivy. Thsteeple is a jagged silhouette against the brooding sky.".

Behind the Church is a room. "The forest encroaches right up to the iron fence here, some of which is literally buried in the tangled underbrush. There are no doors on this side, although a wooden trap door over by the corner of the building probably leads into a cellar. A path leads southwest, around to the front of the church.".

Southeast of the Churchyard is Behind the Church. Northwest of Behind the Church is nowhere. Before going southeast from the Churchyard, say "The path bends northeast, around the side of the church.".

Southwest of Behind the Church is the Churchyard. Northeast of the Churchyard is nowhere. Before going southeast from the Churchyard, say "The path bends northwest, around the side of the church.".


Book 4 - Tests

[ From start ]
Test nastymist with "w / s / s / e / s / sw".
Test goodmist with "test fetchem / e / se / e / s / s / e / s / sw".

[ From Chilly Avenue ]
Test notice with "sw / nw / se / nw / x notice / take notice / x it".

Volume 8 - Mansion

Interior Rooms is a region. Dining Room, Kitchen, Back Hall, Gallery, Sitting Room, Upstairs Hallway, Kid's Room, House Library, Study and Attic are in Interior Rooms.

Suite is a region. Master Bedroom and Bathroom are in Suite.

To light the mansion:
	repeat with x running through rooms in Interior Rooms:
		now x is lit.

To darken the mansion:
	repeat with x running through rooms in Interior Rooms:
		now x is unlit.

Book 1 - Front of the House

[ Outside the House ]

Outside the House is a room. "The lane runs up from the southeast and ends at a wide clearing surrounded by gnarled and ancient trees. A wide, curving driveway runs up to the front door of your house, which lies north.[paragraph break][if unvisited]The fabled Verlac family mansion looms before you in the gloom, its dark creaking presence dominating the clearing and, somehow, even though it is not visible through the trees, the entire valley. The foreboding shadow of the Verlacs seems to enshroud all of Anchorhead from here.[otherwise]The Verlac mansion looms before you, casting an air of menace ove the clearing.[end if]". It is northwest from Scenic View.

The driveway is scenery in Outside the House. "The gravel driveway curves in a wide loop around the clearing, running up to the front door of your house and then sweeping back around to rejoin itself.".

The Verlac Mansion is scenery in Outside the House. "The house comprises two stories and an attic, and a smaller domed cupola atop the roof. Its windows are unlit and tightly shuttered, its roof steep and precipitous, and its grounds unkempt and strewn with weeds. The place unmistakably radiates an aura of thick, cold malevolence.". The Verlac Mansion has text called headline.

The front door is scenery and a lockable locked door. The description of the front door is "The front door is a huge, paneled slab of black oak adorned with a brass knocker in its center." It is north of Outside the House and south of Foyer.

The notice is a thing with printed name "a typewritten notice". "A typewritten notice has been attached to the front door." The notice can be read. The notice is not read. The description of the notice is "It's a letter from the Arkham Regional Utilities Company, explaining that, due to wiring difficulties, the electricity will not be installed until next week. No phone service, either." The notice is in Outside the House. After examining notice:
	if the notice is not read:
		if Michael is visible:
			say "'Well, that's wonderful news,' remarks Michael dryly, reading			 over your shoulder.";
		now the notice is read.
	
Book 2 - Foyer & First

[ Foyer ]

The Foyer is a room. "Although it appears spacious from the outside, the house's interior feels cramped and gloomy. The walls seem too close together; the ceiling is too high. The doorways, leading in several directions, are narrow and filled with shadows, and the stairs leading up to the second floor are steep and rickety. This is not a house that makes you feel welcome. It is a house that makes you feel tiny and timid, and afraid of dark places. It is a house that makes you feel alone.[If the front door is open][paragraph break]The front door stands open to the south.[end if][if unvisited][paragraph break]Carelessly stacked in a towering heap in the middle of the room are all your luggage and belongings, which you had sent ahead through a moving company before driving up to Massachusetts. Everything you own is boxed away and piled up in the middle of the floor. The reality of this move finally slams home as you stare at the sprawling jumble of stuff, and suddenly you feel very lost and adrift.[paragraph break]Night has now undeniably fallen, and the house is very, very dark. There is probably just enough residual ambience to feel your way upstairs to the bedroom, but the rest of the house is a tenebrous maze of shadows, and any exploring would probably best be done in the morning.[otherwise][paragraph break]Your luggage is still here, spread out all over the foyer.[end if]".

The luggage is scenery in the foyer. "It's all a huge, hopeless mess. Just looking at it instantly drains you of any desire to unpack.". Instead of searching the luggage, say "Honestly, you just can't muster enough motivation.".

[ A cold, noiseless draft coils through the narrow entrance hall. You shiver, wondering where it came
from. ]

[ Back Hall ]
	
The Back Hall is a room. "A short hallway, connecting rooms to the east, west and south.". The Back Hall is north from the Foyer. The Back Hall is west from the Gallery. The Back Hall is east from the Kitchen.

[ Sitting Room ]

The Sitting Room is a room. "The east wall is occupied by a beautiful antique sofa, and a large, hand-woven rug covers the hardwood floor. The huge marble fireplace in the north wall helps complete the impression of comfort and warmth, and for a moment or two you can almost think of this place as somewhere you could live, as opposed to merely somewhere others have died. The foyer lies west, and a doorway to the left of the fireplace leads north.[paragraph break][if visited]The portrait gazes down at you with crimson-edged malice[otherwise]Your brief sense of comfort quickly drains away, however, as you become aware of the icy and maniacal stare emanating from the great portrait hanging over the mantelpiece. Under the malefic gaze of those red-rimmed eyes, the most comforting thought you can muster is that of immediate flight[end if]." The Sitting Room is east of the Foyer.

The ssofa is scenery in the Sitting Room. Understand "sofa" and "couch" as the ssofa. "It's a 19th century William IV-style sofa with wide, flaring armrests and beautifully scrolled mahogany woodwork. The upholstery is a soft, faded wine color.". Instead of entering the ssofa, say "Best not - it doesn't seem made for sitting.".

The fireplace is scenery in the Sitting Room. Understand "marble" as the fireplace. "The fireplace is carved from beautiful, dark-veined marble, a strange shade that is not quite a deep, forest green and not quite a murky, dusky red.".

The portrait is scenery in the the Sitting Room. Understand "painting" and "picture" as the portrait. The description of the portrait is "The man in the portrait is the apotheosis of everything cruel and inhuman that you have ever laid eyes on. His archaic Puritan dress would indicate that he must have lived a very long time ago; perhaps he was the founder of the Verlac family in this region. If so, it's no wonder they all wound up murdered or mad: the red-rimmed eyes glaring down from his gaunt and haggard face seem to blaze with a terrible insanity. There is nothing regal, fatherly or dignified about this portrait. It is the essence of raving, gibbering evil captured on canvas.". Every turn while the portrait is visible:
	if a random chance of 1 in 7 succeeds:
		say "A subtle movement from the portrait makes you turn. For a moment, it seems like the eyes are looking directly at you, but it's only a trick of the light.".

The album is a thing in the Sitting Room. "On the sofa is a family album.". The description of the album is "It's a slim, hardbound volume in dark leather, unadorned except for name 'Verlac' embossed on the front. Glancing at the title page, you notice two details: one, the book was self-published; and two, it was published in 1944. So it's a good bet that Edward Verlac and his family aren't mentionedhere.". Instead of consulting the album about:
	let c be the album content for the topic understood;
	if c is not "blank":
		say "[c][paragraph break]";
	otherwise:
		say "You cannot find that name anywhere in the album.".

[ Gallery ]

The Gallery is a room. "A long, oak-paneled room, with doorways to the south and west. Paintings line the walls, mounted beneath small, shaded lamps that would illuminate the canvasses nicely if only the electricity were working. Still, even in the shadowed gloom you can see that all were done by the same artist.". The Gallery is north from the Sitting Room.

The glamps are scenery in the Gallery. Understand "lamps" as the glamps. "The lamps are made of polished brass, with frosted green shades -- like an old-fashioned desk lamp, only mounted on the wall.".

The paintings are scenery in the Gallery. The paintings have a number called mode. The mode is 1. Understand "scene", "painting", "picture" and "pictures" as the paintings. Instead of examining the paintings:
	if the mode of the paintings is 1:
		say "All of them are bizarre, and most of them border on the grotesque. Alien landscapes peopled by writhing, malformed creatures; ancient temples built in strange, eye-bending architectures; monstrous beasts crawling through shadows that cannot quite conceal their disturbingly human shapes -- these seem to make up the bulk of the paintings' subject matter. And yet, despite the fantastical nature of the images painted, the style is neither abstract nor surreal. In fact, the level of detail approaches the photorealistic. Excruciating attention has been paid to light, shadows, and textures; even the alien creatures are depicted with gruesome anatomical accuracy. It is as though the artist had worked from actual, living models rather than from what must have been a thoroughly deranged imagination, and the overall effect is rather chilling[paragraph break]One scene in particular catches your eye.";
		now the mode of the paintings is 2;
	otherwise if the mode of the paintings is 2:
		say "[the next weird description][paragraph break]You shake yourself suddenly, and realize you've been staring intently at the painting for minutes on end. You step back and rub your tired eyes. When you look again, however, the picture you were just examining is no longer in front of you. None of the other paintings have moved as far as you can tell, but that particular scene seems to have disappeared without leaving so much as a blank space on the wall.";
		now the mode of the paintings is 3;
	otherwise:
		say "You search the paintings thoroughly, but cannot find the scene you saw earlier.".
Before going to the Gallery: now the mode of the paintings is 1; continue the action.

[ Dining Room ]

The Dining Room is a room. "Much of the elegance has faded from this room. The huge dining table running the length of it is covered with a thick gray film of dust, and the china cupboard standing against the far wall is draped in shadow. Doorways to the north and east offer little relief from the gloom. For what must be the hundredth time, you wish you could open the windows in this place.". The Dining Room is south from the Kitchen. The Dining Room is west from the Foyer.

The dinner table is a supporter and scenery in the Dining Room. Understand "dust" as the dinner table. "It's a finely built table, a valued antique like much of the furniture in this house. It will need to be oiled after so many months of neglect, though.".

The cupboard is a closed openable container in the Dining Room. Understand "cabinet" as the cupboard. "It's a free-standing cabinet about as tall as you are, crafted of cherrywood. The double paneled doors are [if cupboard is open]open[otherwise]closed[end if].". Report opening the cupboard: say "The cupboard is empty; the china must have been auctioned off, in the confusion before Michael was contacted, perhaps. Down at the bottom of the cupboard is a velvet lining, where the silverware would usually be kept."; rule succeeds.

The velvet lining is scenery in the cupboard. "The lining is soft, dusky burgundy. One corner in back is pulled up a bit and slightly torn.". Instead of pulling the lining:
	if the torn journal is nowhere:
		say "You pull the lining back a bit further and discover a thin, palm-sized journal tucked underneath it. Intrigued, you pull the little book free.";
		now the player has the torn journal;
		increase the score by two;
	otherwise:
		say "No need to vandalize the place further.".

The torn journal is a thing. The description of the torn journal is "[the torn text]".

Book 3 - Kitchen & Pantry

[ Kitchen ]

The Kitchen is a room. "Where once pots and skillets and various utensils hung in profusion, the kitchen walls are now merely ranks of dusty cabinets and a forest of empty hooks. Doorways lead east and south, a small pantry lies to the northwest, and the back door to the north leads out of the house.[if unvisited][paragraph break]An odd feeling of gloom overtakes you momentarily, and you find yourself thinking about the Verlac family's personal effects -- the everyday mundanities, such as kitchen utensils. Were they thrown out, or donated to charity, or auctioned off as grisly souvenirs? What about the canned goods? Did anyone think to take them? The cabinets might even still be stocked. Morbidly, you wonder what Mrs. Edward Verlac might have been cooking for dinner the night her husband blew her head off.[end if]".

The flashlight is a switched off device in the Kitchen. The flashlight is unlit. Understand "light" and "lamp" as the flashlight. "Someone's flashlight is lying on the kitchen counter; one of the movers must have left it.". The description of the flashlight is "It's battery-powered, and waterproof too, by the look of it.". After switching on the flashlight:
	now the flashlight is lit;
	continue the action.
After switching off the flashlight:
	now the flashlight is unlit;
	continue the action.

The kitchen cabinet is a closed openable opaque container and scenery in the Kitchen. The kitchen cabinet can be handled. Understand "cabinets", "cupboard" and "cupboards" as the kitchen cabinet. The description of the kitchen cabinet is "[if the kitchen cabinet is open][otherwise]You can't see inside, since the cabinet is closed.[end if]". Report opening the kitchen cabinet:
	if the kitchen cabinet is not handled:
		say "The cabinets are not, after all, still stocked -- much to your relief. There's nothing in there but an old book of matches.";
		now the kitchen cabinet is handled;
	otherwise:
		say "You open the cabinet, revealing [list of things in the kitchen cabinet].".
		
The matchbook is a thing in the kitchen cabinet. Understand "matches" as the matchbook. The description of the matchbook is "A label on the side reads, 'Water-resistant matches. Strike on cover.' There are six matches left.".

[ Pantry ]

The Pantry is a dark room. "The pantry is empty save for a layer of dust on the shelves. A door to the south leads down to the cellar, or you can return to the kitchen to the southeast.". The Pantry is northwest of the Kitchen.

The shelves are scenery in the Pantry.

The broom is a thing in the Pantry. The initial appearance of the broom is "Leaning in the corner is an old broom.". The description of the broom is "It's just an ordinary-looking broom.".

The cdoor is a closed locked door and scenery. Understand "door" and "cellar" as the cdoor. It is down from the Pantry and up from the Cellar. Instead of going south from the Pantry, try going down.

Book 4 - The Cellar

[ Cellar ]

The Cellar is a dark room. "The old, flagstone walls gleam with unwholesome-smelling moisture, and the sagging timbers creak uneasily above your head. Ancient, frayed wiring festoons the ceiling like some strange species of clinging vine. Portions of the cellar extend south and east into the clammy darkness, though you could always beat a hasty retreat up the stairs to the north.[paragraph break]One largish bundle of wires leads down to a rusty old fuse cabinet bolted to the far wall.".

The timbers are scenery in the Cellar. Understand "timber" as the timbers. "The ancient, worm-eaten beams are bent like bows under the strain of holding up the huge, rambling house above them for centuries on end. Every few minutes, one of them gives out an ominous groan as the weight on them settles.".

The wiring is scenery in the Cellar. "The wiring runs back and forth across the ceiling in every direction -- wrapped around timbers, in and out of rusted, broken conduits, crossing and re-crossing itself in a dozen places. You can see several places where the insulation is cracked or stripped altogether. It's enough to send any self-respecting fire marshall into conniptions.".

The fuse cabinet is a closed openable container and scenery in the Cellar. The fuse cabinet can be handled. "It's an ancient, clunky metal box, about the size of a kid's lunchbox. There's some sort of lettering on the cover, but it's too corroded to read.". Report opening the fuse cabinet:
	if the fuse cabinet is not handled:
		now the fuse cabinet is handled;
		say "It takes some grumbling and some tugging and finally a good, sharp yank, but the cabinet finally pops open." instead.

The fuse plugs are a plural-named thing in the fuse cabinet with printed name "corroded fuse plugs". The indefinite article of the fuse plugs is "some". Understand "plug" as the fuse plugs. The description of the fuse plugs is "There's about two dozen fuses lined up in there, the old-fashioned kind that look like round, glass plugs. Every last one of them is blown.". Instead of taking the fuse plugs, say "You pull one of the fuses out and try to rub some of the grime off. Sure enough, the little metal strip inside is melted to a black, twisted cinder. With a sigh, you plug it back into its socket.".

[ Storage Room ]

The Storage Room is a dark room. "Old crates and boxes piled high against the walls make this room seem even smaller and dingier than it actually is, which is saying a lot. A doorway lies north; the other walls contain nothing but shadows and dirt-filled corners.". The Storage Room is south from the Cellar.

Junk is scenery in the Storage Room. Understand "boxes" and "crates" as the junk. "The accumulated junk of almost four centuries' worth of one family's strangeness. Most of it is old linens, moth-eaten clothes, newspaper clippings -- exciting stuff like that. There's far more here than you could ever go through, even if you had the inclination to.". Instead of searching the junk:
	if the spider web is nowhere:
		say "You spend some time poking dispiritedly through boxes of second-hand table settings, discarded shoes and outdated encyclopedias, but the only thing you manage to dig up is an old cardboard box full of newspaper clippings, which might make interesting reading later if you can find the time. The only thing at all noteworthy about the room, in fact, is that it desperately wants cleaning; there's even a big, nasty-looking spider web in a corner behind one of the crates.";
		now the spider web is in the Storage Room;
		now the cardboard box is in the Storage Room;
	otherwise:
		say "It would take years to properly sort through all this junk. Just thinking about it makes you tired.".
		
The spider web is a thing. It is fixed in place. Understand "spiderweb" as the spider web. The initial appearance of the spider web is "A nasty-looking spider web fills one dark corner like some sort of sticky, fibrous mold.". The description of the spider web is "Not a pretty, symmetrical spiral web like you see in nature magazines; this is a tangled, ugly mass of dull gray threads spun in every direction, the work of some careless, inebriated arachnid on a weekend binger. Way back in the corner, almost buried beneath the disheveled strands, is an old-fashioned iron key.".

Instead of rubbing the spider web:
	say "You gingerly stick your hand into the tangled spider web, and something light and skittery crawls across your skin and bites you![paragraph break]Quickly you jerk back, compulsively wiping your hand on your pants. The bite itself didn't hurt all that much, but the thought of spiders crawling around on your skin gives you the willies.";
	now the spider of player is the turn count.

Check cleaning the spider web with:
	if the second noun is the umbrella:
		say "The pointy end of the umbrella doesn't do much damage to the thick, tangled web." instead;
	if the second noun is not the broom:
		say "[The second noun] wouldn't be very effective." instead;
	rule succeeds.

Instead of cleaning the spider web with the broom:
	say "With a single sweep of the broom, you clear the spider web away.";
	now the spider web is nowhere;
	now the iron key is in the Storage Room.

Every turn:
	if the spider of the player is greater than 0:
		if turn count - spider of the player is 3:
			say "A wave of dizziness washes over you suddenly, making you light-headed. Your hand is swollen and throbbing a little, and your skin is flushed with an unpleasant, prickly heat. It occurs to you to wonder whether the spider that bit you might have been poisonous.";
		else if turn count - spider of the player is 5:
			say "The dizziness hits you again, and you sway as little black ink blots bloom in your vision. Your hand is really hurting now, and you feel short of breath.";
		else if turn count - spider of the player is 7:
			say "You are burning up; you can barely see through the waves of blackness washing across your vision. You try to sit down, only to realize that you're already lying on the ground, unable to move. In a disconnected, feverish haze, you vaguely wonder if Michael will find you in time to call the hospital; and that is your last thought before feeling leaves your limbs and your lungs stop working entirely.";
			end the story saying "You have died.".

The cardboard box is an open container. The description of the cardboard box is "It's an old gray shoebox, ragged around the edges, with the lid missing.".

The clippings are a plural-named thing in the cardboard box with printed name "newspaper clippings". The indefinite article of the clippings is "some". The description of the clippings is "It's an old gray shoebox, ragged around the edges, with the lid missing.". Instead of reading the clippings, display the Table of Newspaper Clippings menu with title "Clippings". Instead of taking the clippings, say "The box seems old and crumbling. It probably wouldn't survive the journey.".

[ Wine Cellar ]

The Wine Cellar is a room. "This wing of the cellar is even older than the rest, with walls of piled, unmortared stone. The entire room is filled with wine racks. They cover every wall except for one spot to the west, where an exit leads back to the main cellar.[paragraph break]All of the racks are dust-covered and empty except for one against the north wall, which contains some forty or fifty dark bottles.[if unvisited][paragraph break]You are reminded of something Michael told you during the long drive up: about how when the police arrived after the shooting, they found the wine cellar in a shambles -- nearly every bottle thrown to the floor and shattered, and the whole place reeking of rotted grapes. All except the bottles in the north rack. None of those had been touched. No one could posit a motive for it.[paragraph break]You smile a bit, recalling your husband's ability to turn a piece of insignificant trivia into a compelling story. Still, though, now that you're actually standing here... it all seems very strange.[end if]". The Wine Cellar is east of the Cellar.

The wine racks are scenery in the Wine Cellar. "These racks must have at one time contained hundreds upon hundreds of wine bottles. Idly, you wonder which member of the family developed such a taste for what would have been, for the first few generations at least, a sinful vice of the basest kind.".

The wine bottles are scenery in the Wine Cellar. Understand "dust" as the wine bottles. "Row after row of smooth, dust-covered glass. The wine inside is dark and murky, reminding you, somewhat irrationally, of blood.".

Book 5 - Upstairs

[ Upstairs Landing ]

Upstairs Landing is a room. "A narrow hallway runs east, from the top of the stairs down the length of the house. To the north, directly opposite the stairs, is the master bedroom.". Upstairs Landing is up from the Foyer.

[ Master Bedroom ]

The Master Bedroom is a room. "The master bedroom is a picture-postcard of rustic New England charm. Faded sketches of rural landscapes adorn the walls; a beautifully carved dressing mirror stands in one corner; an old-fashioned accordion radiator gurgles quietly beneath the window. The most striking feature, an enormous, antique, four-poster bed, must be the largest piece of furniture in the house.[if not visited]

If it weren't for this hopelessly backwater town and the disturbing circumstances surrounding the house, you'd say this was your dream home. Even so, as much as you would like to relax and enjoy the comforts of a fully furnished historical New England estate, you can't help but be put off by the shady aura surrounding the family that used to live here. The last of the line, you remind yourself, recently committed suicide after killing his wife and two daughters with a shotgun. Involuntarily you shiver, glancing nervously at the doorways to the south and west.". The Master Bedroom is north from the Upstairs Landing.

The sketches are scenery in the Master Bedroom. Understand "landscapes" as the sketches. "The sketches are charcoal on yellowed paper, pictures of the surrounding countryside. They're quite pretty, actually, lending an air of comfort to an otherwise cold and moribund house. Each drawing is initialed in the corner - 'J.W.V. - '95'".

The mirror is scenery in the Master Bedroom. "A flawless mirror in a beautifully scrolled walnut frame. It's about as tall as you are.".

The radiator is scenery in the Master Bedroom. Understand "accordion" as the radiator. "The radiator runs on gas, not electricity, which is why it's even working at all. It's quiet and it keeps the room cozy, which is all you really need it to do, so everything seems to be in order there.".

The bed is an enterable supporter and scenery in the Master Bedroom. "Thick, goose-down mattress, linen sheets, feather pillows, gauze canopy -- it's about the most beautiful, inviting bed you've ever seen.". Before entering the bed:
	repeat with x running through things carried by the player:
		now x is in the location;
	repeat with x running through things worn by the player:
		if x is not the wedding ring:
			now x is in the location;
Report entering the bed:
	say "Gratefully, you remove your clothes, leave your things on the bedroom floor, crawl into bed and pull the covers up to your chin." instead.

Check going south from the Master Bedroom: if the clothes are not worn, say "Shouldn't you dress first?" instead.

[ Bathroom ]

The Bathroom is a room. "A small chamber of cold, white tile and floral-print wallpaper. It sports a genuine, whitewashed, claw-foot bathtub with a shower attachment, which is a definite plus. The bedroom lies east." The Bathroom is west from the Master Bedroom.

[ Upstairs Hall ]

Upstairs Hall is a room. "The shuttered window at the end of the hall throws a gloomy rectangle of light onto the bare wooden floor. Doorways lead north and south.". The Upstairs Hall is east of Upstairs Landing. Before going up from Upstairs Hall:
	if the ladder is nowhere, say "You can't go that way." instead;
	otherwise say "The ancient rungs creak alarmingly as you ascend.".

The cord is a thing in Upstairs Hall. "There is a cord dangling in mid-air here, right about level with your face." It is fixed in place. The description of the cord is "The cord is about four feet long with a little wooden bob on the end. It appears to be attached to a trap door in the ceiling.". Instead of pushing the cord, say "You bat the cord lightly and watch it swing back and forth for a while.". Instead of pulling the cord:
	say "With a rusty, ratcheting groan and a brief shower of dust, the trap door swings down and folds
back, revealing a rickety wooden ladder leading up into darkness.";
	now the cord is nowhere;
	now the ladder is in Upstairs Hall.

The attic ladder is a thing. "A rickety wooden ladder stands here, descending from a three-foot by three-foot square of darkness in the ceiling." The attic ladder is fixed in place.

[ Kid's Room ]

The Kid's Room is a room. "This must be the children's bedroom. The bed is smaller than the one in the master bedroom, its bright coverlet providing one of the few feeble splashes of color in what must have been, for most of its history, a joylessly Puritan household. A small vanity table occupies the opposite wall, and in the corner under the window stands an ancient crib. The only exit is to the north.". The Kid's Room is south of the Upstairs Hall.

The vanity is a supporter and scenery in the Kid's Room. Understand "table" as the vanity. The description of the vanity is "A simple vanity table, scaled down for a child, spartan in design and almost wholly without decoration. It's hard to imagine keeping any sort of makeup or jewelry on it, but then again, vanity of even the most innocent kind was probably discouraged in most of the Verlac children.".

The jewelry box is a closed openable opaque container. The initial appearance of the jewelry box is "A child's jewelry box sits on the corner of the vanity.". The description of the jewelry box is "It's hardly larger than your hand, made of wood and charmingly decorated with a picture of children dancing around a Maypole. Most likely a plaything of one of the later Verlac children. The lid is [if the jewelry box is open]open[otherwise]closed[end if].". The jewelry box is on the vanity.

The silver locket is a closed openable container in the jewelry box. The silver locket can be open. The silver locket is closed. The description of the locket is "It is oval-shaped, held shut with a tiny clasp.".

The tiny picture is a thing in the silver locket. The description of the tiny picture is "The boy in the picture looks no more than three or four years old. He is smiling, but there is something disconcerting about his expression, as though his head were not shaped quite right or his features had been placed slightly wrong. He might possibly have been mentally retarded. It's difficult to tell, because the picture has been cropped so closely you can't even see the edges of the boy's face. Only his features fill the tiny frame.". Instead of taking the tiny picture, say "It would be a shame to deface such a lovely item.".

The child's bed is scenery in the Kid's Room. The child's bed can be shoved. The description of the child's bed is "Not as fancy as the four-poster, but it looks comfortable enough[if the child's bed is shoved]. The bed has been pushed away from the wall slightly, revealing a ragged hole in the paneling[end if].". Instead of pushing the child's bed:
	if the hole is in the Kid's Room:
		say "You shove the bed back against the wall, covering the hole.";
		now the hole is nowhere;
	otherwise:
		say "Bracing yourself, you push the bed away from the wall, revealing a ragged hole in the wood
paneling.";
		now the hole is in the Kid's Room.

The hole is a fixed in place container. "The bed has been pushed away from the wall slightly, revealing a ragged hole in the paneling.". The description of the hole is "It's about six inches wide, and looks like it was made by by someone breaking in the wall with a hammer and pulling chunks of paneling out with their bare hands".

The soggy pages are a thing in the hole with printed name "bundle of soggy pages". The description of the soggy pages is "It appears to have been someone's diary. There must have been a leak at some time behind the wall where it was hidden, because most of the pages are water-logged and completely illegible. However, portions of a few entries remain untouched.". The printing of the soggy pages is "[the soggy text]". After taking the soggy pages for the first time, increase the score by 2.

Book 6 - Library & Study

[ Library ]

The House Library is a room with printed name "Library". "Whatever else their faults may have been, the Verlacs were evidently not ones to shun the printed word. Books line the walls from floor to ceiling in this dark-paneled, green-carpeted room, interrupted only by doorways to the east and south. A rich, brown leather armchair sits in stately repose near the window, with a polished brass pipe stand nearby completing the picture of some blue-blooded country squire's literary refuge. Once again, you are struck by how easily this place could have been the perfect home.[if the safe is in the Study]

A section of the shelves in the western wall has slid to one side, revealing a hidden safe.[end if]". The House Library is north of Upstairs Hall.

The mahogany doors are a plural-named closed door. The initial appearance of the mahogany doors is "A beautiful pair of mahogany sliding doors stand [if the mahogany doors are open]open[otherwise]closed[end if] to the [if the location is the House Library]east[otherwise]west[end if].". The description of the mahogany doors is "Each door is carved from a single piece of mahogany, and polished to a deep, rich shine. The doors are [if the mahogany doors are open]open[otherwise]closed[end if].". The mahogany doors are east from the House Library.

The armchair is an enterable supporter and scenery in the House Library. Understand "chair" as the armchair. "It's the kind of furniture that you always drool over in catalogs, and it looks about as comfortable as an armchair ever gets without an added shot of heroin.". Report entering the armchair:
	say "The leather creaks softly as you settle in. It smells strongly of pipe smoke.";
	rule succeeds.
Report getting off the armchair:
	say "Reluctantly, you do so.";
	rule succeeds.

The lwindow is supporter and scenery in the House Library. Understand "window" as the lwindow. "All the windows are tightly shuttered and, frustratingly, painted shut. However, enough light filters through the slats in the shutters that the house ought to be at least navigable during the daytime.". Instead of opening the lwindow, say "You can't; the window is painted shut." instead.

The pipe stand is scenery in the House Library. Understand "pipe" and "stand" as the pipe stand. "It's a beautiful piece of work, although at the moment, sadly, it contains no pipe.".

The wards manual is a proper-named thing with printed name "[italic type]The Compleat Manual of Wardes and Seales[roman type]". Understand "book", "volume", "tome", "wards", "wardes", or "manual" as the wards manual. The initial appearance of the wards manual is "Resting on the pipe stand is a sizable volume decorated with a gilded pentagram on its cover.". The description of the wards manual is "It's an old medieval tome dated in the early 1300s, written by one Galarian Academius desChamps.". The printing of the wards manual is "Essentially, it's a textbook on the theory and practice of magickal wards and seals, mystic symbols inscribed on doors and containers in order to keep people and spirits out -- or in. It's all very deliberately vague and arcane (in addition to being written in medieval French and translated into Middle English, making it nearly impossible to understand), the kind of thing that likely got many a scholar burned at the stake in those days.[paragraph break]You are surprised to find that a page in this old and probably quite valuable book has been folded down, as though to mark the place. The section marked discusses various methods of opening doors that have been sealed with the image of a pagan god. Speaking aloud the deity's true name will usually do the trick, apparently.". The wards manual is on the pipe stand. Before putting something on the stand, if the noun is not the manual, say "It just doesn't feel right to put that there." instead.

The bookjunk is scenery in the House Library. Understand "books" or "shelves" as the bookjunk. The description of the bookjunk is "[if the tales are not handled]Literally hundreds of books stuff the shelves, many of them thick, cracked, leather-bound tomes with ribbon place-holders and titles lettered in raised gold leaf. It would take you years to peruse them all. However, one interesting title does catch your eye. An authentic first printing of Edgar Allen Poe's Tales of Mystery and Imagination, shelved incongruously between volumes 'G' and 'H' of the Encyclopedia Americana.[otherwise if the safe is in the Study]The shelves on the western wall have slid back slightly, revealing a hidden safe.[otherwise]Edgar Allen Poe is right where you left him, sandwiched in between 'G' and 'H'.[end if]". After examining the bookjunk, now the tales are in the House Library.

The tales are scenery. The tales can be handled. The tales are not handled. Understand "poe" and "mystery" as the tales. The description of the tales is "[if the tales are not handled]It's a beautifully bound book in near-perfect condition, and probably extremely valuable -- if it really is authentic. Michael will go nuts when he sees this.[otherwise]It really is a shame; the book is a perfect replica of what would have been an extremely valuable edition. Notwithstanding the excitement of finding a secret wall safe in your own house, you're actually rather disappointed.[end if]". 

Instead of taking the tales for the first time:
	say "The book sticks stubbornly at first, and, thinking that it must be tightly wedged in between the encyclopediae, you give it a fierce jerk. Suddenly, the book slides halfway out, then pops back in with a loud 'snick'.[paragraph break]Amazingly, a section of the bookshelf slides back, revealing a hidden safe.";
	now the safe is in the House Library;
	now the tales are handled;
	increase the score by 1;
	
Instead of taking the tales:
	if the safe is nowhere:
		say "The book slides halfway out, then pops back in with a loud 'snick'. The section of bookshelf slides away, revealing the safe once again.";
		now the safe is in the House Library;
	otherwise:
		say "The book slides halfway out, then pops back in with a loud 'snick'. The section of bookshelf slides seamlessly back into place.";
		now the safe is nowhere.

The safe is an opaque closed container and scenery. It is fixed in place. The safe can be handled. The safe is not handled. The safe has numbers called m1, m2, m3 and stage. Stage is 0. The initial appearance of the safe is "A section of the shelves in the western wall has slid to one side, revealing a hidden safe.". The description of the safe is "It's a stark cube of black, oily steel, fifteen inches to a side. Its only feature is large calibrated dial set into the front[if the safe is open]The safe stands open[end if].". Instead of opening the safe, say "There's no handle on the door; it opens when you get the combination right.". Instead of closing the safe:
	say "The heavy door swings shut with a metallic clunk.";
	now the stage of the safe is 0;
	now the safe is closed.

To set the combination of the safe:
	now m1 of the safe is a random number from 1 to 60;
	now m2 of the safe is a random number from 1 to 60;
	now m3 of the safe is a random number from 1 to 60;

The dial is a part of the safe. It is fixed in place. The dial has a number called dvalue. Dvalue is 13. The description of the dial is "The dial is calibrated from one to sixty. It is currently set to [dvalue of dial].". Instead of turning the dial, say "You idly give the dial a random spin.". Instead of turning the dial to:
	if the number understood is less than 1 or the number understood is greater than 60:
		say "The dial is only calibrated from one to sixty.";
	otherwise:
		say "The tumblers tick quietly as you turn the dial to [the number understood].";
		now the dvalue of the noun is the number understood;
	if the safe is closed:
		if dvalue of the dial is m1 of the safe and the stage of the safe is 0:
			now the stage of the safe is 1;
		otherwise if dvalue of the dial is m2 of the safe and the stage of the safe is 1:
			now the stage of the safe is 2;
		otherwise if dvalue of the dial is m3 of the safe and the stage of the safe is 2:
			say "[line break]With a hollow thunk, the safe suddenly swings open.";
			now the safe is open;
			if the safe is not handled:
				increase the score by 2;
				now the safe is handled;
		otherwise:
			now the stage of the safe is 0.

The puzzle box is a closed container. The description of the puzzle box is "It's roughly the size and shape of a cigar box, carved from some dark and oddly streaked wood that you can't identify. All six surfaces are decorated in a complex arrangement of grooves and panels, most of which are illustrated with leering, demonic faces and obscene designs[if closed] As far as you can tell, it is in fact a box, and meant to be opened; however, you see no obvious way to do so[end if].".

The strange black disk is a thing in the puzzle box. The description of the strange black disk is "It's a dark, glassy circle, about the width of your hand in diameter and half an inch thick in the middle, tapering off to thinness toward the edge like a convex lens. Its color is the deep, oily black of obsidian, though you fancy you can see faint swirls of color inside it like the rainbow sheen of oil on water. Its curved surface is cool and perfectly smooth. Although incredibly hard, the material does not feel like stone; there is an odd, yielding quality to it, almost like something organic... almost, you realize with disquiet, like skin.".

Instead of searching the disk: say "Putting it to your eye, you see faint streaks of color. They swirl and dissolve within the strange lens like oil on the surface of water. Gradually it becomes slightly transparent, but the objects seen through it are grotesquely distorted and dark, as though seen in photographic negative.".

The strange metal flute is a thing in the safe. The description of the strange metal flute is "It appears to be some kind of wind instrument, fashioned out of ornately carved, greenish metal. Seven holes of varying sizes are drilled along the top.".

[ Study ]

The Study is a room. "This smaller room adjoining the library seems comfortable enough, although it is dusty and cluttered from having not been lived in for the better part of a year. Aside from the desk and the chair and the empty shelves, the only real feature of the room is the large, ornate fireplace in the southern
wall." The mahogany doors are west from the Study.

Michael's desk is a supporter and scenery in the Study. "It's an ordinary writing desk with a small drawer, which is closed.".

Michael's drawer is a closed openable container and scenery with printed name "desk drawer". It is part of Michael's Desk.

The Cryptical Haermoniacon is a thing inside Michael's drawer with printed name "[italic type]Cryptical Haermoniacon[roman type]". Understand "book" and "tome" as the Cryptical Haermoniacon. The description of the Cryptical Haermoniacon is "The leather covers are worn and cracked; the metal corner fittings tarnished; the pages yellow and brittle. Inscribed on the title page are the words [italic type]Cryptical Haermoniacon: Manual of the Atonal Servitors[roman type] beneath what you presume must be the same words written in some strange, vaguely Arabic-looking alphabet.". The printing of the Cryptical Haermoniacon is "The greater portion of the book is written in an incomprehensible, flowing cipher; however, the margins in several pages are glossed in English. The book appears to contain instructions for traveling to somewhere called 'the Domain of Nehilim', and for worshipping or perhaps summoning an entity that dwells there: He Who Is Named Not; nor may that Name be taught among His followers; that Name which may be learned only by gazing upon His Terrible Countenance...[paragraph break]The only specific details involve a ritual used to open a one-way portal into the Womb of Nehilim, allowing the magician to enter or possibly throw some hapless soul into its chaotic, blasphemous depths. The ritual seems to have something to do with music, and requires the magician to 'Attune ye Pillars to ye Resonant Haermonicae', whatever that means.[paragraph break]The rest, by only the barest contrast, is nothing but pure raving.".

The letter opener is a thing on Michael's Desk. The description of the letter opener is "It's a rather ornate thing, with a silver hilt and a slim, sharp tip.".

The laptop is a device on Michael's Desk. The laptop can be locked. The laptop is locked. The laptop is switched on. The description of the laptop is "A top-of-the-line model: it's sleek, lightweight and very fast, a real status symbol for the writer who wants to look as though he might stop whatever he's doing at the drop of a hat and suddenly hack out a bestseller. While you have yet to witness Michael do this, he really had been wanting one since before the two of you even met; so, to celebrate his new teaching position, you splurged and bought him one.". Instead of reading the laptop, try reading the screen.

The screen is scenery and a part of the laptop. The printing of the screen is "The computer is in screen-saver mode: blank except for a single window requesting a 4-digit user passcode. Odd; you didn't think Michael ever used the passcode utility.". Instead of examining the screen: try reading the screen instead.

Instead of typing:
	if the laptop is visible:
		if the laptop is unlocked:
			say "You reach for the keyboard, but suddenly hesitate. If you alter the document, Michael will know you've been looking at it. And for some reason, you'd rather he didn't.";
		otherwise:
			if the topic understood matches "0628":
				say "The passcode window disappears and the screen suddenly fills with text, apparently the last thing Michael was working on before he got up and left.";
				now the printing of the screen is "Michael has evidently been writing something, but it's not a story; it looks more like some kind of journal entry.[paragraph break][italic type]I cannot sleep.[paragraph break]Or perhaps I should say: I must not sleep, since I am perfectly capable of sleep -- in fact, lately sleep has come to me more easily, more quickly, and more insidiously than it ever has before. But I don't want to sleep.[paragraph break]I have been hoping that the terrible dreams would prove to be stress-related, that they would fade once the move was behind us and we had finally settled in -- but that has not turned out to be the case. They're stronger than ever. Red-rimmed eyes pursuing me through strange corridors, and the voice -- the whisperer who tells me I am not who I am. The whisperer tells me secrets of this house, secrets of those who lived here -- they are my blood, and he tells me he always returns to his blood. He tells me of secret keys and combinations; I don't know what they open yet but I have an idea -- [paragraph break]Tomorrow I must go down to the cellar. I must see if the things revealed to me in that terrible book are true.[paragraph break]I know she is worried about me. I want to tell her, but --[roman type][paragraph break]The entry ends there, unfinished.";
				now the laptop is unlocked;
				increase the score by 2;
			otherwise:
				say "The computer beeps at you. 'ACCESS DENIED'. Frustrated, you wonder what Michael could have set his password to. An important date, maybe?";
	otherwise:
		say "You don't have anything to type on.".

Instead of switching off the laptop, say "Michael might be in the middle of something, and you don't know if he's saved his work. Better not.".

The wooden chair is an enterable supporter and scenery in the Study. "It's just a straight-backed wooden chair.". Report entering the wooden chair: say "It's a bit spartan for your tastes. Michael likes his writing chairs to be very slightly uncomfortable, so that he can't doze off."; rule succeeds.

The closedfire is scenery in the Study. Understand "fire" or "fireplace" as the closedfire. "The fireplace is carved from beautiful, dark-veined marble, a strange shade that is not quite a deep, forest green and not quite a murky, dusky red. The mantelpiece is flanked by a pair of polished brass spheres.".

The openfire is a thing. It is fixed in place. Understand "fire", "fireplace" and "corridor" as the openfire. The initial appearance of the openfire is "A dark, narrow corridor gapes in the wall to the soutwest, partially hidden by the marble fireplace.". The description of the openfire is "The fireplace is carved from beautiful, dark-veined marble, a strange shade that is not quite a deep, forest green and not quite a murky, dusky red. The mantelpiece is flanked by a pair of polished brass spheres.[paragraph break]A dark, narrow corridor gapes in the wall to the soutwest, partially hidden by the marble fireplace.".

The spheres are scenery in the Study. "You see the room behind you in distorted miniature, and your own face swelling and stretching
comically as you peer into the sphere's reflective surface.[paragraph break]Looking closely, you notice some smudges on the otherwise immaculately polished brass." Instead of turning the spheres:
	if the openfire is nowhere:
		say "The sphere twists clockwise a few degrees, there is a barely audible 'click', and the sphere snaps back into its original position. Suddenly, the entire fireplace slides about eighteen inches to the left with a hollow grinding sound, revealing a narrow corridor in the southwest wall.";
		now the closedfire is nowhere;
		now the openfire is in the Study;
		change the southwest exit of the Study to Corridor1;
	otherwise:
		say "The sphere twists clockwise a few degrees, there is a barely audible 'click', and the sphere snaps back into its original position. The fireplace grinds back into place, concealing the corridor.";
		now the closedfire is in the Study;
		now the openfire is nowhere;
		change the southwest exit of the Study to nowhere.
		
[ A dark, narrow corridor gapes in the wall to the southwest, partially hidden by the marble
fireplace. ]

Book 7 - Corridor & Observatory

Corridor1 is a room with printed name "Narrow Corridor 1". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.". 
Northwest of Corridor1 is the Study. Southeast of the Study is nowhere.
West of Corridor1 is southwest of Corridor2.
Southwest of Corridor1 is south of Corridor3.
Northeast of Corridor1 is northwest of Corridor4.

Corridor2 is a room with printed name "Narrow Corridor 2". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.[paragraph break][if the Kid's Room is lit]A thin beam of light slants through the dusty air, coming from a small hole half way up one wall[otherwise]There is a small hole in one of the slats, about halfway up the wall[end if].".
East of Corridor2 is north of Corridor3.
Northeast of Corridor2 is south of Corridor4.
Northwest of Corridor2 is west of Corridor5.

Hole2 is scenery in Corridor2. "It's almost big enough to put your finger through." Report looking through hole2:
	say "Standing on tiptoe and placing your eye up to the hole, you see the children's bedroom. Through some strange trick of the angle, you appear to be looking straight down at the bed from the middle of the ceiling.[if the goal of Michael is wander][paragraph break]Suddenly Michael walks into the bedroom. He moves slowly, looking around and lightly touching things, as if visiting old memories. He walks over to the crib and spends some minutes staring down into its empty blankets, after which he sighs. Then he turns and adjusts the coverlet on the child's bed.[paragraph break]He walks over to the vanity and picks up the jewelry box. Carefully, he opens it and, finding it empty, sets it down again with a soft curse. He looks around the room suspiciously, as if expecting to find the culprit hiding in a corner somewhere. For a moment Michael simply stands there aimlessly, compulsively rubbing his forehead; then he stalks out of the room and is gone.
[end if]".

Corridor3 is a room with printed name "Narrow Corridor 3". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.[paragraph break][if the Gallery is lit]A thin beam of light slants through the dusty air, coming from a small hole half way up one wall[otherwise]There is a small hole in one of the slats, about halfway up the wall[end if].".
Northwest of Corridor3 is Corridor4. Sourtheast of Corridor4 is nowhere.
Southeast of Corridor3 is east of Corridor5.

Hole3 is scenery in Corridor3. "It's almost big enough to put your finger through." Report looking through hole3:
	say "Standing on tiptoe and placing your eye up to the hole, you see the sitting room, from a vantage high up on the wall. It occurs to you that you might well be looking directly through the eyes of the man in the portrait hanging over the fireplace.[if the goal of Michael is wander][paragraph break]At that moment, Michael wanders into the sitting room, muttering something incoherent. He looks around blankly, lost, as if he had come into the room in order to do something only in the next instant to forget what it was. Then his eyes fall on you, and he smiles.[paragraph break]You nearly jerk away from the spyhole, heart pounding wildly, when it suddenly occurs to you that he's not looking at you at all; he's looking at the portrait through which you are peering.[paragraph break]Michael regards the portrait with a strange air of familiarity. He gazes into its eyes (and also, unbeknownst to him, your own eyes) the way one might appraise an old friend one hasn't seen for some time. His expression is deferential, admiring, and... something else; you can't quite put your finger on at first, but as your husband continues to gaze rhapsodically at the terrible portrait, a sickening realization strikes you.[paragraph break]The expression is vanity. Ugly, self-absorbed vanity. Your husband is staring at this portrait the way he might preen himself in a mirror.[paragraph break]Michael brushes his fingers back through his hair and walks out of the room, chuckling softly to himself.[end if]".

Corridor4 is a room with printed name "Narrow Corridor 4". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.[paragraph break][if the Wine Cellar is lit]A thin beam of light slants through the dusty air, coming from a small hole half way up one wall[otherwise]There is a small hole in one of the slats, about halfway up the wall[end if].".
Southwest of Corridor4 is Corridor5. Northeast of Corridor5 is nowhere.

Hole4 is scenery in Corridor4. "It's almost big enough to put your finger through." Report looking through hole4:
	say "Standing on tiptoe and placing your eye up to the hole, you see only darkness.";
	if the goal of Michael is wander:
		say "Just as you are about to move away from the spyhole, you hear footsteps on a stone floor. A light shines in through a doorway, and a moment later Michael skulks into the room, which you now realize is the wine cellar, seen from down low in a corner, near the floor.[paragraph break]Halfway across the room he stops, darts a suspicious glance over his shoulder, and shines his light into every corner, as though searching for potential spies. At one point he looks straight at you, and you nearly recoil, alarmed at the sight of his crazed, red-rimmed eyes. He does not spot you, however, and in a moment he moves on.[paragraph break]He walks over to the rack at the north end of the room, and does something with the bottles -- you can't quite see, because his back is toward you. Then there is a click and a heavy grinding sound, and the entire northern wall swings back, revealing a hidden passage![paragraph break]The room is filled for a moment with a wild, wretched keening, like a cold wind blowing through an empty chasm. With one last, wary look behind him, Michael steps through the portal. The light disappears, the wall swings back with another grinding sound, and then all is quiet.";
		increase the score by 2.

Corridor5 is a room with printed name "Narrow Corridor 5". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.". Southeast of Corridor5 is the Observatory. Northwest of the Observatory is nowhere.

The Observatory is a room. "You are in a small, enclosed cupola situated, by the look of the view through the dingy skylight over your head, on top of the roof of the house. The walls are covered with astrological and astronomical charts with equations and diagrams scribbled across them in crabbed, stilted handwriting. The only exit seems to be an oddly-angled corridor to the southeast.[paragraph break]Dominating the center of the room is a large mounted telescope, pointed almost straight up through the skylight.". The Crawlspace is southeast from the Observatory.

The skylight is scenery in the Observatory. "You can see part of the hole in the sky through the skylight. The telescope seems to be aimed right at it.".

The charts are scenery in the Observatory. Understand "diagrams", "handwriting", "scribbles" and "equations" as the charts. "Most of the charts seem to be plotting the trajectory of some comet you've never heard of, as it gradually approaches the solar system over the course of several centuries. According to this, the comet is due to arrive...[paragraph break]Well, that's interesting. According to this, the comet is coming tonight.".

The telescope is scenery in the Observatory. Understand "cylinder" and "eyepiece" as the telescope. "Constructed of some greenish metal, the telescope consists in the main of an unadorned cylinder about eight inches in diameter, with an eyepiece near the bottom. Near the top, about six inches down from the telescope's upper end, is a thin, rectangular slot, cut horizontally into the side of the cylinder.".

The slot is an open container and scenery. The slot is part of the telescope. The description of the slot is "It looks as though it might be a receptacle of some kind, perhaps for a special lens." Check inserting something into the slot: if the noun is not the strange black disk, say "[The noun] won't fit properly into the slot." instead.
						
Instead of searching the telescope:
	if the strange black disk is in the slot:
		say "For a few moments all you can see is a murky, swirling blackness; then patterns of colors begin to emerge, like the rainbow sheen of oil on water. The black disk grows translucent, stars become visible through the swirling haze, and then...[paragraph break]Dear Christ.[paragraph break]Dear Christ, you can see it.[paragraph break]The comet, roaring silently through the endless void, streaking toward Earth, and it's alive, this thing that is coming is ALIVE, tendrils that must be hundreds, thousands of miles long streaming before it, reaching out to grasp and strangle and devour whole worlds, and it is coming here, it is coming to Earth, and its great, lidless, red-rimmed eye rolls over in a vast lake of vitreous fluid, and it[paragraph break]      looks[paragraph break]          at[paragraph break]                            you[paragraph break][paragraph break][paragraph break][paragraph break][paragraph break]";
		pause the game;
		say "[paragraph break][paragraph break][paragraph break]...you wake up some time later, shaking your head. You're not sure what, exactly, you just witnessed; whether it was a genuine astronomical phenomenon, or a hallucination, or the actual form of some Dark God from the Outer Reaches, come to devour the world. You're not even entirely sure you remember what it looked like. The only thing you can clearly recall is a single name, pulsing in your brain like a bruise:[paragraph break]'Ialdabaoloth'.[paragraph break]And that's all.";
		increase the score by 5;
	otherwise:
		say "The swirling hole in the sky fills the telescope's field of view, turning silently as you watch. The upper depths of the maelstrom are too dark to see, though occasionally you make out sparks of green energy as they arc across the gap.".

Test obs with "go3 / stand / take all / s / e / n / e / turn spheres / sw / w / nw / se".

Book 8 - Attic

The Attic is a room. "It's much cooler up here than in the rest of the house, and you find it hard to suppress a shiver. Grotesque, looming shadows crawl across the low, slanted ceiling, and the dust hangs thick and motionless in the air. To the west the ceiling dips even lower until the space beneath leaves hardly room enough to crawl, while to the north stands a wooden door, draped in shadows and half-hidden by the slanting eaves.". The Attic is up from Upstairs Hall.

The wood door is scenery and a door. The description of the wood door is "It's an ordinary wooden door, unremarkable except for the antique metal keyplate. Beneath the door, a thin line of faint light is barely visible.". Instead of looking under the door:
	say "Dropping to your hands and knees and placing your eye close to the crack beneath the door, you can make out a dim light coming from somewhere up above, and a great deal of dust on the floorboards.". The wood door is north from the Attic.

The keyplate is scenery. The keyplate is part of the wood door. Understand "keyhole" as the keyplate. "The keyhole is of the classic round-hole-atop-a-triangular-hole variety, the kind people are always peeping through in cartoons.". Instead of searching the keyplate, say "The keyhole is dark, as though blocked by something.".

The Crawlspace is a room. "The ceiling descends here to no more than three feet from the floor; you are forced to crawl through the cramped darkness on your hands and knees. To the east the attic becomes more spacious, while the northwest corner opens into an oddly-angled corridor.". Northwest of the Crawlspace is the Crawlspace. Before going to the Crawlspace when the room gone from is not the Attic, say "As you make your way down the corridor, you begin to get dizzy, then nauseous. Lines seem to cross without bending, the ceiling becomes the walls and the floor becomes the ceiling. Half-blind, unsure even of which direction you were going in, you stagger forward and suddenly find yourself in a...". The Crawlspace is west from the Attic.

Book 9 - Behind the House

The back door is a closed locked door and scenery. It is north from the Kitchen and south from the Path Behind the House. The description of the back door is "It's just an ordinary-looking back door.".

[ Path Behind the House ]

Path Behind the House is a room. "A gravel path starts here at the back door of the house, and marks a trail nearly overgrown by weeds and briars. It disappears into the undergrowth to the northwest, framed by crooked trees with overhanging branches that seem to form a stunted, jagged archway into the dim recesses of the forest."

Before going northwest from Path Behind the House, say "Stooping to avoid the sharp, bare twigs that snag your clothes and seem to reach greedily for your eyes, you pick your way through the undergrowth to a small clearing.".

[ Family Plot ]

The Family Plot is a room. "Old, moss-slimed tombstones, many broken off and leaning crazily like an old man's teeth, poke up from the soft, mulchy earth. In their midst stands an ancient marble crypt, its heavy iron door nearly obscured by thick draperies of ivy. The trees press close around this quiet enclave of death, leaning together over your head as if sharing secrets. A gap in the undergrowth to the southeast reveals a narrow gravel path." The Family Plot is northwest of Path Behind the House. Before going northwest from the Family Plot, say "Stooping to avoid the sharp, bare twigs that snag your clothes and seem to reach greedily for your eyes, you pick your way through the undergrowth to a small clearing.".

The tombstones are scenery in the Family Plot. "Years of neglect have left the tombstones in bad repair -- the ones not broken are eroded to near-illegibility, and those not eroded are covered with thick, sticky moss. From what you can make out, though, most of them are servants' graves. Family members were most likely buried in the larger structure in the middle of the clearing.".

The crypt door is a closed locked door and scenery. Understand "crypt" and "door" as the crypt door. The description of the crypt door is "Grimly carved letters over the door spell out a single name: 'VERLAC'.". It is down from the Family Plot and up from Crypt Interior. 

[ Crypt Interior ]

Crypt Interior is a dark room with printed name "In the Crypt". "The air is clammy and frigid, the stone walls damp and streaked with mud and lichen. Pale, swollen roots push through cracks in the masonry. The smell of damp corruption is almost overpowering here, though the stairs to the south lead toward fresher air.

The walls of this chamber contain dozens of wide, shallow niches; in each niche, a coffin.".

Before entering Crypt Interior, say "The faint echo of dripping water and a musty smell of decay grow stronger as you descend into the crypt." Before going up from Crypt Interior, say "You involuntary take a deep breath of fresh air as you leave the clammy, foetid depths of the crypt behind.".

The coffins are scenery in Crypt Interior. Understand "coffin" as the coffins. "Rank upon rank of the ancient Verlac family remains are stacked away in this hole, left to crumble and deliquesce together, merging back into the dark matter which gave them birth. Above each niche is a nameplate indicating who was buried here and when they died.".

The roots are scenery in Crypt Interior. Understand "masonry" and "walls" as the roots. "The fleshy, tuberous roots seem to be probing their way through the walls like so many dead, swollen fingers.".

The nameplates are scenery in Crypt Interior. Understand "nameplate" as the nameplates. "Most of the nameplates are illegible, corroded with centuries of rot and verdigris. There are a few names visible, however. You could look someone up if you have a specific name in mind.". Instead of consulting the nameplates about:
	if the topic understood includes "william":
		say "The nameplate reads 'William Verlac, b. June 22, 1954, d. September 18, 1958'. [description of William's Coffin].";
		now William's Coffin is in Crypt Interior;
	otherwise if the topic understood includes "edward":
		say "The nameplate reads 'Edward Verlac, b. April 26, 1960, d. March 14, 1997'. [description of Edward's Coffin].";
		now Edward's Coffin is in Crypt Interior;
	otherwise:
		say "You can't find that name anywhere; but then again, it may just be too corroded for you to read.".

Edward's Coffin is scenery. "Like the others, this coffin is built of solid oak, sealed with lead.".

William's Coffin is a closed openable container and scenery. "Unlike the others, William's coffin is a ramshackle affair of cheap pine, held together with rusting nails. It's half-rotten with age[if closed] and so shabbily built you could probably open it with your bare hands[end if].". Report opening William's Coffin:
	say "Compelled by a gruesome curiosity, you dig your fingers under the soft, rotting boards and pry up the lid. With the shriek of pulling nails and a shower of crumbling wood, the coffin comes open, and you look inside, expecting to find a child's tiny skeleton...[paragraph break]Dear God.[paragraph break]There's no child buried here. Instead, the coffin contains only the worm-eaten bones of some kind of animal.[paragraph break]Who would have buried an animal in place of the child that should have been interred here? And why would they do such a thing? Glumly, you look around at the rest of the coffins, and realize that anyone who might have known the answers to these questions is probably already buried in this room.";
	now the bones are in Crypt Interior.
Before closing William's Coffin:
	say "As you move to replace the lid, you shudder at the grisly memory of opening it in the first place. Best leave the coffin as it is." instead.

The animal bones are scenery. They are fixed in place. "You're no veterinarian, but these cannot possibly be the bones of a human child. A dog seems most likely, at a rough guess.". Instead of taking the bones:
	say "The skeleton is in pieces; parts of it crumble even as you touch it[if the animal's skull is not handled]. Only the animal's skull seems reasonably intact[end if].";
	if the animal's skull is not handled:
		now the animal's skull is in William's Coffin.

The animal's skull is a thing. The description of the animal's skull is "The gruesome thing seems to leer at you with its bleached, toothy grin.".

Test crypt with "test betray / s / d / n / w / take flashlight / turn it on / nw / unlock door / take broom / d / s / search crates / sweep web with broom / take key / drop broom / n / u / se / unlock door / n / nw / unlock door / d / consult nameplate about william / x william's / open it / x it / x bones".

Book 10 - Tests

[ from Upstairs Hall ]
Test hlib with "e / n / x chair / x stand / take book / read book / drop book / x doors / sit on chair / stand".
Test locket with "e / s / e / x box / take box / open it / x it / take locket /.x it / drop box / l / open locket / x it / x picture".
Test pages with "e / s / e / x hole / x bed / move bed / l / x hole / take pages / read pages / move bed / l".
Test safe with "e / n / x books / x poe / pull poe / x books / x poe / x safe / pull poe / x books / pull poe / turn dial / spin dial / solve the safe / x safe / close it".

[ from Foyer ]
Test sitting with "e / x sofa / x fireplace / x painting / x scene / s / n / x painting / x scene / z / x scene".
Test gallery with "e / n / x lamps / x paintings".
Test dining with "w / x table / put keyring on table / take keyring / x cupboard / open it / x velvet / pull it".
Test kitchen with "n / w / x cabinet / open it / take matches / take flashlight / x it / turn it on / turn it off".

Volume 9 - Michael

Goal is a kind of value. Goals are ignore, follow, sleep, shower, write, wander.

Michael is a man with printed name "Michael". Understand "husband" and "Michael" as Michael. Michael has a goal. The goal of Michael is ignore. Michael can be greeted. Michael is not greeted. The initial appearance of Michael is "[if Michael is not greeted]Peering through the shadows, you spot your husband sitting at one of the reading desks, absorbed in some sort of weighty tome and clearly oblivious to the time.[otherwise if the goal of Michael is sleep]Michael is curled up in bed, sound asleep.[otherwise]Michael is here.[end if]". The description of Michael is "Tall and a bit on the skinny side, in an endearingly awkward sort of way; a serious, thoughtful face topped with an unruly tangle of brown hair; deep brown eyes framed by wire-rimmed glasses -- yep, that's the man you married, all right.[paragraph break][if the goal of Michael is ignore]At the moment, Michael is largely absorbed in his reading, and is paying little attention to you.[otherwise]Michael looks at you expectantly, waiting for you to lead the way.[end if]".

Table of Michael's Knowledge
topic	reply
"family"	"'I don't know too much about them, except for what the lawyers told us about Edward, the one who just killed himself. And even that isn't much.'"
"verlac"	"'I'd never heard of the guy before; I didn't even know I had a [']third cousin, twice removed['],' says Michael. 'Kind of creepy, though, don't you think? He went crazy, you know, killed his whole family, then killed himself in his cell up at Danvers. Just terrible. Still, we got the house and I got a professorship, so you won't hear me complaining.'"
"book"	"Michael casually places his hand on the book, obscuring its title. 'Oh, just doing a bit of research. Musty old stuff.'"
"keys"	"'The real estate agent is supposed to be holding them at her office,' he says."
"house"	"'The Verlac family has been living in that old place for generations; they're an integral part of the history of this whole region. It's really quite interesting.'"
"town"	"'It takes a little getting used to, I know, but I think we can be happy here.'"
"informhead"	"'It takes a little getting used to, I know, but I think we can be happy here.'"
"library"	"Michael looks around. 'Yeah, it's nice, isn't it? They have rare books you wouldn't believe. You could get a lot of research done here.'"
"miskaton"	"'Isn't it wonderful? A full professorship! At this rate I'll have tenure in just a few years. I think I'm really going to like teaching here.'"

Instead of asking Michael about:
	repeat through Table of Michael's Knowledge:
		if the topic understood includes topic entry:
			say “[reply entry].”;
			rule succeeds;
	say "You can't think of anything to say about that for the moment.".

Volume 10 - Simple Things

Book 1 - My Things

The clothes are a plural-named thing. The indefinite article of the clothes is "your". The description of the clothes is "A tasteful ensemble from Ann Taylor in muted browns and olive greens (you've been an autumn person since you were old enough to match your own socks).". The clothes are worn. After taking the clothes, try wearing the clothes. Instead of taking off the clothes when the player is not in the Suite: say "You've never been big on that 'natural' look. If you decide you need to take a bath or go to bed, you can disrobe then; otherwise, keep 'em on.".

The trenchcoat is a thing. The indefinite article of the trenchcoat is "your". The description of the trenchcoat is "You bought this coat during your honeymoon in England; it's a genuine London Fog. In addition to looking very cool, it has several deep pockets in which you can fit just about anything.". The trenchcoat is worn. After taking the trenchcoat, try wearing the trenchcoat.

The wedding ring is a thing. The indefinite article of the wedding ring is "your". The description of the wedding ring is "[if worn]Staring at your wedding ring like that tends to make you sentimental[otherwise]Engraved along the inside are Michael's and your initials, along with your wedding date -- June 28th.[end if].". The wedding ring is worn.

The umbrella is a thing. The indefinite article of the umbrella is "your". The umbrella can be open. The umbrella is open. The description of the umbrella is "It's olive green, with a hook-shaped handle. A handy little thing, when it rains. It's currently [if open]open[otherwise]closed[end if].". The player is holding the umbrella.

The keyring is a container. The indefinite article of the keyring is "your". The player is holding the keyring.

Book 2 - Michael's Things

The pants are a plural-named proper-named opaque container with printed name "Michael's pants". "On the four-poster bed you can see Michael's pants." The description of the pants is "They're the same plain khakis he usually wears[if the pants contain something]. You notice something in the back pocket[end if].".

The wallet is a proper-named opaque container with printed name "Michael's wallet". The wallet is in the pants. The description of the wallet is "It's just his wallet, an ordinary leather wallet.[if the wallet contains something][run paragraph on][end if]". Before searching the wallet for the first time: now the faculty card is in the wallet; continue the action.

The faculty card is a proper-named thing with printed name "Michael's faculty card". The description of the card is "The card identifies your husband as a faculty member at Miskaton University, entitled to all the
privileges that implies.".

Book 3 - Keys

The house key is a thing. The description of the house key is "It's an ordinary-looking key. The word 'house' is written on a tiny piece of tape affixed to the key's tab." The house key unlocks the front door and the back door.

The cellar key is a thing. The description of the cellar key is "It's an ordinary-looking key. The word 'cellar' is written on a tiny piece of tape affixed to the key's tab." The cellar key unlocks the cdoor.

The iron key is a thing with printed name "old-fashioned iron key". The description of the iron key is "It's an old key, the kind with a round barrel about a quarter-inch in diameter and flat, square teeth.". After taking the iron key for the first time, increase the score by 1. The iron key unlocks the crypt door.

The newspaper is a thing. "A damp newspaper lies on the curb, fluttering slightly in the wind." The description of the newspaper is "It's the 'Weekly Arkham Herald'. Anchorhead, apparently, is not large enough to warrant its own newspaper.". Instead of searching the newspaper, say "The front page story is about Jeffrey Greer, 8 years old, who was abducted from his home at #11 Mill Town Road last night. Little Jeffrey is the latest victim in a series of abductions that stretches back for years, one every six months or so, and that authorities believe is the work of a single perpetrator. Local police had hoped to prove that Edward Verlac had been behind the kidnappings, but were unable to obtain a confession or any hard proof. Edward Verlac was convicted of murdering his wife and two daughters, one of whom was 15 months old, in January of this year; he was found not guilty by reason of insanity and incarcerated in Danvers Asylum, where he remained until committing suicide last March. This latest kidnapping, occurring after Edward's death, seems to have cleared up any lingering suspicions that he might have been the culprit.[paragraph break]Anyone possessing information regarding the whereabouts of Jeffrey Greer is strongly urged to speakto the authorities as soon as possible.".

Volume 11 - Random Rules

[ inside office rules ]
[ in-town rules ]
[ raining rules ]
[ seaside rules ]
[ michael reading rules ]
[ michael following rules ]
[ woods rules ]

Table of Town Events
event
"In the distance, you can hear the lonesome keening of a train whistle drifting on the wind."
"Overhead, the swollen clouds flicker ominously with a greenish haze of sheet lightning."
"The clouds overhead mutter restlessly to themselves."
"The rain slackens off momentarily to a weak drizzle, then returns afresh in a brief, freezing downpour."
"A sudden gust of wind blows a cold spray of rain into your face."
"You hear a soft rattle behind you, like an empty tin can rolling across the uneven ground. When you turn, there is no one there."

Every turn when the player is in Town:
	if a random chance of 1 in 10 succeeds:
		choose a random row in the Table of Town Events;
		say "[event entry][paragraph break]".

Table of Inside Office Events
event
"You can hear a fly buzzing around, somewhere in this room."
"You can hear a fly buzzing around, somewhere in the next room."

Every turn when the player is in File Room or Office Exterior:
	if a random chance of 1 in 4 succeeds:
		choose a random row in the Table of Inside Office Events;
		say "[event entry][paragraph break]".

Every turn when the player is in Narrow Beach:
	if a random chance of 1 in 7 succeeds:
		say "Another wave crashes against the rocks, sending a cloud of spray into the air."

Every turn when the player is in the Library and Michael is in the library:
	if the goal of Michael is ignore:
		if a random chance of 1 in 4 succeeds:
			say "Michael turns to a new page in the book and begins reading intently.".

[Michael stops to point out some deteriorated bit of colonial architecture. "Everything is so old
here," he says, genuinely delighted. "Isn't it neat?" ]
[ Michael strolls along after you. ]
[ "We really should be getting on to the house, don't you think?" asks Michael. "It's a bit rainy
out." ]
[ Michael scuffs around dispiritedly. ]
[ Michael waits patiently nearby. ]
[ "What the --" says Michael suddenly. You turn to see him peering up at the sky. "That bird, it..."
He looks a bit embarrassed. "It, uh, I thought it was looking at me. But it flew away." He stuffs
his hands in his pockets and tries to look nonchalant. ]
[ "I apologized about the car, right?" says Michael sheepishly. ]

[ From deep within the forest, you hear the deranged cry of a lone whippoorwill. ]

Volume 12 - Hunks of Text

Book 1 - Daily Intros

The day1 intro is always "[bold type]November, 1997[roman type].[paragraph break]You take a deep breath of salty air as the first raindrops begin to spatter the pavement, and the swollen, slate-colored clouds that blanket the sky mutter ominous portents amongst themselves over the little coastal town of Informhead.[paragraph break]Squinting up into the glowering storm, you wonder how everything managed to happen so fast. The strange phone call over a month ago, from a lawyer claiming to represent the estate of some distant branch of Michael's family, was bewildering enough in itself... but then the sudden whirlwind of planning and decisions, legal details and travel arrangements, the packing up and shipping away of your entire home, your entire life...[paragraph break]Now suddenly here you are, after driving for the past two days straight, over a thousand miles away from the familiar warmth of Texas, getting ready to move into the ancestral mansion of a clan of relatives so far removed that not even Michael has ever heard of them. And you've only been married since June and none of this was any of your idea in the first place, and already it's starting to rain.[paragraph break]These days, you often find yourself feeling confused and uprooted.[paragraph break]You shake yourself and force the melancholy thoughts from your head, trying to focus on the errand at hand. You're to meet with the real estate agent and pick up the keys to your new house while Michael runs across town to take care of some paperwork at the university. He'll be back to pick you up in a few minutes, and then the two of you can begin the long, precarious process of settling in.[paragraph break]A sullen belch emanates from the clouds, and the rain starts coming down harder -- fat, cold drops smacking loudly against the cobblestones. Shouldn't it be snowing in New England at this time of year? With a sigh, you open your umbrella.[paragraph break]Welcome to Informhead...".

The day2 intro is always "You are waiting in your bed, with the coverlet up under your chin, waiting for Father to come tuck you in. Footsteps in the hall pause outside your door. You close your eyes; when you open them again Father is standing at the foot of the bed. His eyes are bloodshot, rimmed with red, and you wonder if he has been crying. Slowly, he starts to take off his belt.[paragraph break]Only it's not your father after all, it's Michael. He hands you a golden sphere and says:[paragraph break]'I don't know what it opens yet but I have an idea.'[paragraph break]Your reflection is like a little doll trapped inside the sphere. Everything is tinged with gold. Your face swells and stretches comically as you stare back at yourself through the curved, distorting walls. Reaching out, your fingers curve back on themselves... the wall breaks and...[paragraph break]You are running from the eyes, the terrible red-rimmed eyes, through endless, narrow corridors of wooden slats and crumbling plaster. You stumble through turn after turn, hopelessly lost. There is a small hole in the boards -- peering through it you see Michael in the study, typing diligently away. You scream, you pound on the wall, but he can't hear you. The red-rimmed eyes draw closer; hurrying down a twisting passage you find a dead end... the wall breaks and...[paragraph break]Outside, you stand at another dead end, a high brick wall at the end of a steep, twisting lane. Written in black spraypaint...[paragraph break]He always returns to his blood.[paragraph break]Behind you, you hear the buzzing of a fly. You turn...".

The day3 intro is always "Down the road and through the woods, where the whippoorwills call their lunatic's song, you are running. The sky boils and thunders overhead. The red-rimmed eyes glare down at you. When you look up at them, they merge together, melting into a single, baleful orb -- a swollen, bloody moon.[paragraph break]You must escape. You veer off the road, tripping over an old, rotted stump, pushing aside a twisted sapling. Vines and brambles tear at your clothes. Rocks cut your feet. But still you must run, until you suddenly burst out of the underbrush, into a tangled, moonlit clearing.[paragraph break]An ancient, flagstone well stands amidst the weeds in the clearing's center, and you are drawn to it. Something is moving inside, scratching at the stones down in that circle of blackness, and for some reason all you can think is the basement, Michael is in the basement, and he's doing something bad...[paragraph break]Heart hammering, you lean over the crumbling lip. Your hair slips from your shoulders, dangling
tantalizingly close to the well's opening...[paragraph break]... the whippoorwills reach a crescendo...[paragraph break]Your eyes adjust to the dark and you see --[paragraph break][italic type]   -- you see the most horrible thing --[roman type][paragraph break]".

Book 2 - Weird Scenes

Table of Weird Scenes
index	description
1	"A group of primitive tribesmen dance within a ring of standing stones, beneath a lightning-streaked sky. Their dress and some of the fetishes they carry -- feathers, rattles, ceremonial masks -- all seem to represent a Native American culture, but the men themselves are... strange. They look truly savage and degenerate, in a way that you don't often see Native Americans depicted. Peering closely, you can see that some of them even appear to be deformed.[paragraph break]Overlooking the dance stands a tall obelisk on a hill, silhouetted against the storm clouds above. The artist added a strange effect to the cloud formations directly above the obelisk; the color and shading seem to suggest a red, baleful eye looking down upon the strange ritual below."
2	"The scene depicts a young girl kneeling down next to a closed door, whispering through the keyhole. It is evidently late at night, as the girl is wearing her nightgown, and she is surrounded by shadows. The room on the other side of the door is lit, and the light shining through the keyhole and through the crack under the door casts an eldritch, yellow glow across her face. The girl appears to be furtively slipping something underneath the door; you can't see what, exactly.[paragraph break]It's a fairly innocent-looking scene; charming, even, in a way... that is, until you notice the mottled appendage snaking out from underneath the door to meet her hand. From her expression, the girl is either unaware of it or unperturbed by it. Either way, the effect is deeply disturbing."
3	"A group of white men in Revolutionary period clothing, taking prisoner a group of Native Americans. The exact situation is unclear: the white men stand around with muskets threatening, while the natives, who are chained together, file into a fenced enclosure, as though being herded into a compound of some sort.[paragraph break]In the extreme background, at the far end of the enclosure, stands a large brick building. Dark, grainy smoke billows up from two stone chimneys rising above the structure. Leaning very close, you can just make out another group of natives being herded into the structure by more of the white men."
4	"A young apprentice butcher learns his trade in a slaughterhouse. The older man -- heavyset, thick jaw and sloping brow -- holds his cleaver above a severed calf's head, looking expectantly at the boy as though demonstrating the proper technique. The boy, holding a smaller cleaver of his own, looks on attentively. It would be reminiscent of something by Norman Rockwell, except for the frankly alarming amount of gore. The aprons and faces of both master and apprentice are streaked with blood; blood pools on the chopping block and overspills the gutters; blood drips from the walls and from the skinned carcasses that can be seen hanging in the background. The two butchers stand ankle-deep in a reeking abattoir.[paragraph break]And... there's something wrong with the boy. Most of his body is hidden behind the chopping block, but there are details about the parts you can see that... don't seem to fit quite right. The arm holding the cleaver is slightly misshapen, for example, the fingers deformed in a way that you can't quite make out. And his neck seems just a bit too thick, and his head seems just a bit too large and blocky. His face looks normal enough, except that it seems to have been placed just slightly off-center. It's a very subtly disturbing effect."
5	"A group of old midwives cluster around a bed-ridden woman who is apparently giving birth. The old women are wizened and grim, with crooked hands and bloodstained aprons. They seem to confer with each other in dark whispers that the younger woman, who is drenched in sweat and obviously in great pain, cannot hear. By the corner of the bed, an ominous detail: a bucket full of murky, red water.[paragraph break]Strangely, though, the old women are not the only ones present at the birth. Nearby, in another bed, lies a shriveled, decrepit old man. Although seemingly at death's door, he struggles to raise himself, as if to see the birthing over the heads of the hunched midwives. His wasted visage shows an expression of satisfaction or approval, and he is reaching out with one skeletal arm in a manner curiously similar to the famous picture on the Sistine Chapel, of God giving life to His creation Adam."
6	"The simple but striking image of five young women being burned to death at the stake. Around them stand a crowd of men and women dressed in rustic, 17th century clothing; they jeer and throw stones. The ringleader, standing in front of the five glowing pyres with the smoking torch still in his hand, wears a clergyman's collar.[paragraph break]The artist obviously went to painstaking lengths to depict the burning in ghastly detail: skin curling away from blackened flesh; hair shriveling; eyes boiling in their sockets and melting across cracked and splitting cheeks... repeated five times over, on the bodies of five thrashing, screaming girls. It turns your stomach to look at."
7	"A madman, clad only in a filthy, ragged loincloth, his thin body covered with dirt and sores, dances wildly on a precipice between two massive, metal pillars. His long, gray hair whips about his face in an unseen wind; behind him, beyond the precipice, violet clouds seethe and roil. He seems to be playing some strange sort of wind instrument, like a flute, making the whole scene look oddly like a macabre Jethro Tull album cover."

To decide what text is the next weird description:
	sort the Table of Weird Scenes in index order;
	choose the row 1 from the Table of Weird Scenes;
	now the index entry is the index entry + 7;
	decide on the description entry;

Book 3 - Newspaper Clippings

Table of Newspaper Clippings
title    	text (some text)
"(Arkham Herald, August 12, 1956)"	"[fixed letter spacing][line break]CHURCH CLOSED, PREACHER SUSPECT IN[line break]COMMUNIST CRACKDOWN[paragraph break]   The  Church of Celestial Wisdom[line break]in  Anchorhead, Massachusetts  was[line break]shut  down  and  its  congregation[line break]disbanded  yesterday   after   its[line break]pastor,  the Rev. Mordecai Verlac,[line break]70, was  accused  of  distributing[line break]Communist propaganda to  his pari-[line break]shioners.  Authorities  in  Arkham[line break]were informed by an anonymous call[line break]two days earlier.[line break]   'The caller  told  us  that the[line break]Reverend  was  'preaching not from[line break]the Good Book, but from a terrible[line break]book,'  and that he had been warn-[line break]ing  them   about  some   kind  of[line break]'invasion'  or  'great event' that[line break]would  be  happening  soon,'  said[line break]Sgt. Biedermeyer  of  the   Arkham[line break]Police Department. 'It smelled Red[line break]to me,  so I made  the decision to[line break]call our HUAC representative up in[line break]Salem.'[line break]   The  raid   commenced   shortly[line break]after  morning  services  began at[line break]8:00  am,  in  order to confiscate[line break]printed  material  and  catch  any[line break]possible accomplices  before  they[line break]could hide or destroy evidence. No[line break]officers  who participated  in the[line break]raid  were available for  comment,[line break]although one man coming out of the[line break]building afterwards  was allegedly[line break]overheard saying that it was  'the[line break]worst thing he'd ever seen.'[line break]   The  Church of Celestial Wisdom[line break]was founded in 1860  by  Rev. Ver-[line break]lac's grandfather,  the  notorious[line break]orator and painter  Elijah Verlac.[line break]The building,  which is considered[line break]by many to be  a  historical land-[line break]   (continued on A12)[line break][variable letter spacing]"
"(printed notice)"	"(mimeographed page, dated February 10, 1959)[paragraph break]Any information regarding the whereabouts of Daryl Beasley, age 9, should be reported immediately to the Anchorhead police. Daryl was last seen by his mother after she dropped him off at the Route 20 bus stop, just north of Old Mill Town Road, at 8:30 am three days ago. He was not there when the bus made its scheduled stop at 8:36 am.[paragraph break]Daryl is 4'10' tall, of slight build, with brown hair and brown eyes. At the time of his disappearance, he was wearing brown corduroy pants, blue sneakers, and a white, short-sleeved button-down shirt.[paragraph break]If you have seen Daryl Beasley, or if you know anything about his disappearance, please call 555-4362."
"(London Times, March 3, 1918)"	"[fixed letter spacing][line break]PAINTING SELLS FOR 1000£, SIGHT[line break]UNSEEN[paragraph break]   The  infamous  mystic  Aleister[line break]Crowley purchased a painting at an[line break]auction  at   Sotheby's  for  1000[line break]pounds sterling on Monday  without[line break]so much  as glancing  at  it.  The[line break]painting,  entitled  'The Legacy',[line break]is  by  the  late  American Elijah[line break]Verlac,  and  was sold  along with[line break]numerous   other    pieces   by  a[line break]representative   of    the  Verlac[line break]estate.[line break]   Crowley  reportedly strode into[line break]the  auction   room  wearing  full[line break]ceremonial robes  and  immediately[line break]bid 1000£ -- well  over  twice the[line break]going bid.  He ordered it  wrapped[line break]and transported immediately to his[line break]home.  It  is  not  known  whether[line break]Crowley had ever seen the painting[line break]before arriving at the auction.[line break]   'I've  never seen anything like[line break]it,'  said  Sir Walton  Radcliffe,[line break]Esq., presiding auctioneer for the[line break]Verlac exhibit, 'but I suppose one[line break]might  expect such behavior from a[line break]person  who  calls  himself,  'The[line break]Great Beast'.'[line break]   Mordecai    Verlac,    Elijah's[line break]grandson  and   executor   of  the[line break]Verlac estate,  was not present at[line break]the  auction.  Crowley  has stated[line break]that he  has  never  met  Mordecai[line break]Verlac  and has  no desire  to. 'I[line break]encountered  Verlac  in  a  former[line break]life,'  he is reported  as saying,[line break]'and I would not  do so again  for[line break]all the kingdoms in Hades.  He has[line break]gone where I dare not.'[line break]   Elijah Verlac  is known  by art[line break]historians  more for his grotesque[line break]   (continued on A25)[line break][variable letter spacing]"
"(crumpled flyer)"	"HAVE YOU SEEN ME?[line break]Tara Luffington[line break]last seen: March 25, 1982[line break]age at disappearance: 6[line break]age today: 10[line break]hair: red[line break]eyes: green[line break]last wearing: green t-shirt, white tennis shoes, blue overalls with a button that reads: 'I love cats'[line break]Any information, please call 555-4362.'"
"(obituary)"	"[fixed letter spacing][line break]Friends and Family will grieve the[line break]loss  of  Sgt. HOWARD BIEDERMEYER,[line break]who  died  on October 28, 1956  at[line break]the  age  of  46, of complications[line break]following  a   massive   aneurism.[line break]Howard was a loving husband  and a[line break]devoted  public servant.  Services[line break]will be held this  Saturday at the[line break]Good Earth Funeral Home, 9:00 am.[line break][variable letter spacing]"
"(Arkham Herald, June 22, 1973)"	"[fixed letter spacing][line break]BONES DISCOVERED IN WOODS, CHILD[line break]FEARED DEAD[paragraph break]   The  bones   of   what   police[line break]believe  to  be a small child were[line break]discovered   yesterday   by   pic-[line break]nickers  in  the  woods near Birch[line break]Road,  just  south  of Anchorhead.[line break]Police  have  drawn no conclusions[line break]as  yet,  but  there  is  a strong[line break]suspicion  that  the  bones may be[line break]the  remains  of Christopher Till-[line break]worth,  who  disappeared near that[line break]area two weeks ago.[line break]   Sgt. Ronald  Franklin  of   the[line break]Arkham  police was not optimistic.[line break]'We   have  contacted   the  boy's[line break]mother,  and are trying to prepare[line break]her  for  the worst,' he said. 'No[line break]one  here  wants  to  give up hope[line break]prematurely,   but   the   general[line break]feeling  here is,  we've found the[line break]boy.'[line break]   The remains, which consisted of[line break]a femur  and  partial  skull,  are[line break]being shipped to a forensic lab in[line break]Boston   for   further   analysis.[line break]Rumors that  the  bones  displayed[line break]teeth marks consistent with animal[line break]bites are so far unsubstantiated.[line break]   Christopher,  who  would  have[line break]turned 7 on the 19th, is the fifth[line break]child  to  disappear  in  the last[line break]   (continued on A10)[line break][variable letter spacing]"
"(Arkham Herald, September 19, 1958)"	"[fixed letter spacing][line break]RESPECTED PHYSICIAN RETIRES[line break]UNEXPECTEDLY[paragraph break]   Dr. Timothy Rebis,  a respected[line break]obstetrician  at Arkham Sisters of[line break]Mercy  Hospital  for  the  last 20[line break]years,  announced  his  retirement[line break]yesterday  to  a  stunned Board of[line break]Directors.[line break]   He gave  no reason  for his un-[line break]expected decision.[line break]   'I  am  truly  stunned,'   said[line break]Bernard  Talbot,  Chairman  of the[line break]Board. 'No one saw this coming. No[line break]one.'[line break]   A  source  within  the hospital[line break]who  wished  to  remain  anonymous[line break]ascribed  the  doctor's abrupt de-[line break]parture  to  a  nervous breakdown,[line break]but  this  has not  been confirmed[line break]by any of Dr. Rebis' colleagues.[line break]   (continued on D5)[line break][variable letter spacing]"
"(photostatic copy)"	"(photostatic copy of a much older document; a notation at the bottom dates it at the end of the 18th century)[paragraph break]BE IT KNOWNE that, through the Generositie and Enterprise of the Hon. Goodman Heinrich Verlac, the Miskaton Valley Mille shall be Rebuilt, even upon the Ashes of the Olde which was Tragically Burnt; and[paragraph break]BE IT KNOWNE that, upon its Newe Christening, there shall Arise a Sore Need for Men of Able Bodie and Industrious Bent to Work therein; and[paragraph break]BE IT KNOWNE that the Hon. Goodman Heinrich Verlac is thereby holding a General Call for Employment, and any Honest Man of Working Age is Encouraged to Apply."
"(Arkham Herald, April 9, 1935)"	"[fixed letter spacing][line break]ANTHROPOLOGIST TURNED AWAY IN[line break]PROPERTY DISPUTE[paragraph break]   Prominent  anthropologist   Dr.[line break]Joseph Corbin's  repeated attempts[line break]to secure permission  to set up an[line break]archeological   dig   in    nearby[line break]Anchorhead  came to an end yester-[line break]day  when he lost his suit against[line break]the Rev. Mordecai Verlac. The case[line break]has  been  pending  for  over  six[line break]months.[line break]   The  Rev. Verlac  has  strongly[line break]disputed  Corbin's right to dig in[line break]the area, contending that the land[line break]in   question   belongs   to   the[line break]ancestral  Verlac  estate  and  is[line break]therefore  his  private  property.[line break]Last week,  Rev. Verlac's  lawyers[line break]presented conclusive  evidence  of[line break]prior  ownership,  and  the  judge[line break]quickly ruled in his favor.[line break]   Dr. Corbin,  who  is  a protégé[line break]and  close personal friend  of the[line break]noted folklorist  Dr. J. Arnsworth[line break]Frazer,  hoped to discover  relics[line break]of   the   little-known    Misquat[line break]Indian culture,  which is believed[line break]to have  inhabited this area  cen-[line break]turies prior  to European  settle-[line break]ment.  Corbin called  the decision[line break]'a travesty'.[line break]   Many expected scholars at near-[line break]by   Miskaton University  to rally[line break]behind  Corbin's battle,  but most[line break]of the faculty have been strangely[line break]   (continued on D8)[line break][variable letter spacing]"
"(Arkham Herald, July 7, 1988)"	"[fixed letter spacing][line break]CONFLAGRATION CLAIMS PAPER MILL --[line break]AGAIN[paragraph break]   Arkham firefighters worked late[line break]into the night yesterday, battling[line break]a blaze that brought  Anchorhead's[line break]historic paper mill  to the ground[line break]despite their best efforts.[line break]   The mill,  which  provides jobs[line break]for  roughly   two-thirds  of  the[line break]town's  population,   caught  fire[line break]yesterday around 4:00 pm. Although[line break]there  have been rumors  of an ex-[line break]plosion,  the  exact cause  of the[line break]fire remains unknown.[line break]   Fire Inspector Donald Brown re-[line break]mains puzzled.  'There is evidence[line break]of chemical burns  that are incon-[line break]sistent with the materials used in[line break]paper  manufacture,'  he  told re-[line break]porters. 'There's metal fused with[line break]metal in there...  it's all messed[line break]up.'[line break]   Interestingly,  this is not the[line break]first time the Anchorhead mill has[line break]burned.   The  original  mill  was[line break]built  by  Wilhelm  Verlac  in the[line break]latter  part of  the 17th century,[line break]and  historical  records  indicate[line break]that it burned down after only ten[line break]years.  The  mill  was  rebuilt by[line break]Wilhelm's grandson,  Heinrich Ver-[line break]lac,  a  few  decades  later. This[line break]one  lasted  until shortly  before[line break]the  Civil War  --  and some still[line break]hold  that it was  burned down  by[line break]Confederate sympathizers.[line break]   The  current  mill was  rebuilt[line break]in 1922 by Heinrich's great-great-[line break]grandson,  Rev.  Mordecai  Verlac.[line break]Mordecai,  in addition  to being a[line break]fiery preacher  and outspoken Pro-[line break]hibitionist, was quite wealthy and[line break]owned numerous  and widespread in-[line break]vestments.  At the age of 70, this[line break]controversial  figure  was accused[line break]   (continued on A16)[line break][variable letter spacing]"
"(announcement)"	"[fixed letter spacing][line break]It is with great joy  that Gwyneth[line break]and Paul Ward announce the engage-[line break]ment of their only daughter, JULIA[line break]GWENDOLYN  WARD,   to  Dr.  EDWARD[line break]PHILLIP  VERLAC.   Edward   is  an[line break]associate professor  of history at[line break]Miskaton University in Anchorhead,[line break]Massachusetts;   Julia   plans  to[line break]attend  medical  school  at Arkham[line break]College.  They  plan  a  late June[line break]wedding. We wish them good fortune[line break]and long happiness in their union.[line break][variable letter spacing][paragraph break](The announcement is dated December 12, 1984, and is accompanied by a picture of the young couple.  She has long, dark hair and a serious expression; he, although only in his twenties, is already starting to bald a little. You find yourself unable to tear your eyes away from his face for some time. It seems open and guileless, and he is clearly very happy. There is no hint there of the nightmare his world would one day become.)".

Book 4 - Family Info

Table of Verlacs
topic	name	birthday		deathday	album	blook (number)	dlook (number)
"wilhelm"	"Wilhelm Verlac"	"March 11, 1651"	"October 18, 1734"	"[italic type]Wilhelm Verlac: Fled with mother Eustacia Verlac during the Witch Burnings of 1653; returned to Anchorhead in 1663; elected mayor of Anchorhead in 1690; built the Miskaton River Mill in 1695; began construction of the lighthouse in 1706.[roman type][paragraph break]The picture is a reproduction of a charcoal sketch, probably done when he was a younger man. The similarities to the portrait in the sitting room is evident, though: the patrician nose; the harsh, thin line of the mouth; the lean, wolfish jaw. It is the eyes, however, that carry the true family resemblance. Even in the rough, colorless strokes of charcoal, you can see that they are edged with the same raw madness that haunts the red-tinged gaze of the sitting room portrait."	0	0
"heinrich"	"Heinrich Verlac"	"October 18, 1734"	"December 16, 1802"	"[italic type]Heinrich Verlac: Added cupola to the Verlac Estate in 1759; elected mayor of Anchorhead in 1765; rebuilt the Miskaton River Mill in 1770; led the battle of Quattac Bend in the Misquat Uprising of 1772; arrested as a Royalist sympathizer in 1777 but subsequently cleared of all charges; completed construction of the lighthouse in 1795.[roman type][paragraph break]The portrait is of Heinrich as an older man, in his late fifties, perhaps. The German ancestry shows through more clearly here, in the set of his jaw and the line of his forehead. The eyes burn with aggressive pride... and perhaps a little of the madness which stained the gaze of his ancestors as well."	0	0
"elijah"	"Elijah Verlac"	"December 16, 1802"	"January 30, 1886"	"[italic type]Elijah Verlac: Traveled to Europe in 1824 to study painting and to research the Verlac genealogy; returned to Anchorhead in 1832; entered the seminary at Arkham College in 1834; ordained in 1844; began construction of the Church of Celestial Wisdom in Anchorhead in 1860; accused of Confederate sympathies in 1862; retired from the clergy and devoted life to painting in 1873.[roman type][paragraph break]On of the earliest photographic portraits in the album, it depicts a man in his sixties, at least. His face is deeply scored by time, his skin mottled with liver spots, his long, gray hair swept back from a high, bony forehead. This man resembles the portrait in the sitting room more than any of the others, for he has practically the same eyes -- the raw, bloodshot madness staring out from hollow caves in his skull.[paragraph break]You note one other interesting detail: he appears to have an extra digit, a sixth finger, on his
right hand."	0	0
"mordecai"	"Mordecai Verlac"	"January 30, 1886" 	"April 26, 1960"	"Mordecai Verlac: Currently residing in Anchorhead; attended seminary at Arkham College in 1906; ordained in 1912; re-established the Church of Celestial Wisdom in 1920; rebuilt the Miskaton River Mill in 1922.[paragraph break]The photograph depicts a man who has returned to his Puritan roots: dressed in spartan black, hair clipped in an archaic tonsure, clutching a Bible in his lap as he glares stoically at the camera. This is the kind of man who would whip his children for laughing on Sunday. His eyes still carry the Verlac madness, burning with single-minded righteousness."	0	0
"edward"	"Edward Verlac"	"April 26, 1960"	"March 14, 1997"	"Since this book was only published in 1944, there is no mention of Edward Verlac or his family. He probably wasn't even born yet."	0	0
"blank"	"blank"	--	--	--	0	0

To decide what text is the birthday for (whom - a snippet):
	if whom is a topic listed in the Table of Verlacs:
		now blook entry is 1;
		decide on "[name entry]: born [birthday entry]";
	otherwise:
		decide on "blank".

To decide what text is the deathday for (whom - a snippet):
	if whom is a topic listed in the Table of Verlacs:
		now dlook entry is 1;
		decide on "[name entry]: died [deathday entry]";
	otherwise:
		decide on "blank".

To decide what text is the album content for (whom - a snippet):
	if whom is a topic listed in the Table of Verlacs:
		decide on "[album entry]";
	otherwise:
		decide on "blank".

To decide if the player understands the pattern:
	let scare be 0;
	repeat through Table of Verlacs:
		now scare is scare + (blook entry * dlook entry);
	if scare is greater than 2:
		repeat through Table of Verlacs:
			now blook entry is 0;
			now dlook entry is 0;
		decide yes.

Book 5 - Frazer

Table of Frazer Contents
title	text (some text)
"Introduction"	"[description of frazer]"
"The Legend of Croseus Verlac"	"This chapter deals with the strange mythology surrounding the person of Croseus Verlac, the first of the American Verlacs, who immigrated from the Black Forest region of Germany in the early 1600s. He settled in the Miskaton Valley and there helped establish the small fishing port soon to be known as Anchorhead.[paragraph break]Croseus sired six raven-haired daughters and schooled all of them at home. The girls were reclusive and odd of habit, and by the time the eldest turned fifteen the town had all but openly accused them of witchcraft. The townsfolk shunned the Verlac daughters and called them 'the Old Man's Coven' -- although never within earshot, since Croseus was already a very powerful and influential man in that region.[paragraph break]Although he never had a son, Croseus apparently sired a number of grandsons by more than one of his daughters -- ostensibly to keep the Verlac blood pure, such practice being not uncommon in the more secluded and xenophobic early settlements. However, most of the male children were born dead, or horribly deformed, or both, and there were furtive whispers that Croseus was practicing some form of dark sorcery on his progeny. The fact that Croseus fell ill on the day that the first healthy male child was born (to his youngest daughter), and died before day's end, did not go unnoticed.[paragraph break]After Croseus died, the townspeople turned against the 'coven', burning all of them to death except for Eustacia, the youngest, who managed to escape along with her infant son, Wilhelm. She returned some years later, after an outbreak of smallpox wiped out much of the town's older population, including the Calvinist minister and every last man and woman who had participated in the burning of Verlac's brood.[paragraph break]With a start, you remember the pattern you uncovered in the city archives -- each Verlac dying on the very day his grandson is born... no parents listed on the birth certificates... no marriage records, only sons then daughters then sons... and a sickening, horrifying thought begins to take shape: what if the foul tradition begun by Croseus Verlac did not end with his death?[paragraph break]What if, for centuries, the Verlacs have been raping their own daughters in order to sire grandsons?[paragraph break]What in God's name was wrong with this family? How could this have gone on for so long without anyone knowing about it or trying to stop it? And why does each Verlac die on the very day his grandson is born?[paragraph break]Edward Verlac, the man from whom Michael inherited the house and all its madness, must have been the last of his line, the child of his mother and his mother's own father. He went insane and killed his entire family, and now his legacy has been passed on to your husband. With a sudden rush of urgency and fear, you realize that you have to get out of this town, and you have to get Michael out with you, as soon as humanly possible."
"Rituals of the Misquat Indians"	"Little is known about the enigmatic Misquat Indians. They are believed to have occupied a small, unobtrusive area around southeastern Massachusetts, along the banks of the river which now bears their name. At the time that this book was published, various property disputes prevented any thorough archaeological investigation of the area; information regarding this tiny, sequestered tribe is therefore scarce and based largely on hearsay and folklore.[paragraph break]Analysis of the only known fossil -- a partial skull -- has led some anthropologists to conclude that the Misquat were not indigenous to the region. One popular theory holds that the tribe is most closely related to certain degenerate branches of the northern Esquimeaux, and were perhaps driven from their original sub-arctic clime and forced to settle in exile in what would become the northeastern United States.[paragraph break]Although precious few physical artifacts have been recovered -- chief among them a pair of ritual masks and a crudely carved, seven-holed wind instrument -- tall tales of Misquat ritual abound. They appear to have been a unilaterally reviled tribe. Most of the whispered stories involve horrid, ululating chants around blazing bonfires in the dead of winter night, grotesque copulations performed in honor of bestial gods, and of course abundant human sacrifice. The Misquat were generally known as child-stealers, creeping through open windows at night to perpetrate foul kidnappings. None of these claims can of course be verified; nearly all Indian tribes encountered by the first European settlers have been subject to such prejudices at one time or another.[paragraph break]It is known that the Misquat were most likely star-worshippers, and possessed what was likely a quite complex theology involving entities that dwelled beyond 'the bowl of tiny fires' -- their term for the night sky. These entities granted wisdom or insanity, bestowed prosperity or famine, according to how well or how laxly the tribe performed its ritual appeasements. The rituals attempted to contact or possibly summon aspects of these entities through elaborately carved 'beacons' -- mounds of stones or obelisks placed at significant geographical locations.[paragraph break]The few eroded hieroglyphs left by them (oddly, the Misquat were one of the few North American tribes to have developed a system of writing prior to any contact with Europeans) have proved a compelling but so far intractable puzzle for linguists today; all further detail about their ritual and mythology remains yet a mystery."
"The Dark Man and Other Aspects"	"Nearly all of the early European settlements circulated stories of a being known as 'The Dark Man' that lived in the primordial woods beyond the settlements' borders. Deeply religious and at the same time almost hysterically superstitious, clinging precariously to the edges of an unexplored and therefore terrifying continent, it was only natural for people in those times to project their collective fears onto the unknown. For the predominantly fundamentalist Protestant sects that first colonized the New World, these projections typically were embodiments of the Christian concept of the Devil.[paragraph break]The Dark Man generally takes the form of a man, sometimes of large or even giant stature but more often no larger than a natural human. He is invariably dark-skinned, although rarely described as a Negro -- most often he is a Caucasian with jet-black skin, thus combining the refined, cunning intelligence of the European with the base carnality of the African. He is regularly portrayed as the consort of witches. He has many names: The Dark Man, The Grinning Man, Old Scratch, Springheel Jack, The Evil One, etc., but always his formal, Biblical appellation -- 'Lucifer' or 'Satan' -- is scrupulously avoided, a holdover from the tradition that to speak a demon's name is to attract his attention and perhaps even summon him.[paragraph break]More interesting to the folklorist are the names that harken further back than these simple Christian superstitions, recalling a more pagan portrayal of the dark and unknown. These tales, which originate from the more reclusive colonies, often bring out the more animalistic, nature- worshipping aspect of the Dark Man. He is sometimes pictured as being covered with hair, or having hooves instead of feet, resembling Classical images of Pan. His names are more obscure: The Wicker (or Wicca) Man; The Black Goat With A Thousand Young. Therein lie tantalizing clues offering the enterprising folklorist still deeper glimpses into the collective unconscious.[paragraph break]A few rare instances of The Dark Man have been uncovered that point beyond even these antiquated references -- bizarre aspects that seem to reflect some of the less understood concepts of Native American mysticism. Such baroque names as 'The Lurker At The Threshold' or 'The Watcher Beyond The Stars' point to a substratum of human mythology as yet untouched. These versions typically describe not physical manifestations, but rather abstract concepts of Evil and Time that some scholars have linked to the pre-Roman god Saturn, before he became characterized as merely the father of Zeus, when he was instead identified with the Ouroburos Dragon, Devourer of Worlds. Hopefully, as more archaeological evidence is uncovered, we will be able to speak of these primordial connections with greater confidence."
"The 'Strangling Mist' Legend"	"Rather unique to the lower Miskaton River Valley, this tale centers around a seemingly malevolent
fog that roams the forests and lonely night roads, choking the unwary traveler with invisible,
untouchable hands.[paragraph break]The experience of being attacked by this strange entity is described in an 1855 journal as: '...lyke as thowe a deade man were to put his corpsey fingers downe yr throate withe one hande, & up yr nostrille withe the other...'[paragraph break] No two tellings can agree on the origins of this terrible mist. Some accounts insist that it is a spirit of the restless dead; others attribute the effect to malicious hobgoblins. Other versions implicate witchcraft, a pirate's curse, swamp faerie... the list goes on. Some of the more esoteric explanations seem to indicate that the legend was adapted by white settlers from native superstitions held by the tribes indigenous to the Miskaton region; however, there is no evidence as yet that the 'strangling mist' existed in any form prior to the appearance of Europeans."
"The 'Ghost Train' Legend"	"Yet another colorful folk legend involves the recurring image of a 'ghost train' -- a spectral locomotive that materializes from nowhere, glides across the haunted track for a short period of time, and then disappears as mysteriously as it came.[paragraph break]This story did not originate among the first white settlers, of course; obviously it only came into being after the advent of the steam locomotive in our burgeoning Machine Age. The earliest known recorded version of this story, in fact, is dated 1882. Nonetheless, the legend provides us with an interesting example of how the collective unconscious adapts itself to changing aspects of our culture, cloaking old symbolism in the trappings of new technology.[paragraph break]Although many versions hold that the ghost train represents the ghastly echoes of a locomotive that was wrecked (derailed and lost off a mountain pass is the most popular means of destruction), this is in fact a simplistic interpretation not seen until many decades after the myth originated. More intriguing and more useful to the folklorist are versions that explain the ghost train as a transport to the land of the dead -- a modernized boat of Charon, ferrying damned souls across the shroud to the devil's newly industrial Hell. These are the versions which most faithfully maintain links to the traditions of the past, and demonstrate the curious evolutionary behavior of the myth.[paragraph break]In some of these tellings, the traveling soul must have a ticket to present to the grim conductor -- an element directly analogous to the ancient custom of placing of gold coins beneath the tongue to buy passage to the underworld. Living souls who ventured too near the tracks as the ghost train made its nightly sojourn would find themselves swept along -- echoing the Celtic/Germanic myth of the Wild Hunt, in which witness were compelled to join as either hunter or prey. Those who thus boarded the train by accident, madness or mere foolishness were inevitably carried back to whatever eldritch dimension from whence the train originated. Tales of return voyages are rare and generally held by those who pass them along to be apocryphal.".

Book 6 - Journals

The torn text is always "It's a slim little book, no bigger than your hand, bound in imitation leather. The mice really have been at it; most of the pages have been chewed away.". The printing of the journal is "It's a slim little book, no bigger than your hand, bound in imitation leather. The mice really have been at it; most of the pages have been chewed away. What's left of the journal reads:[paragraph break][italic type]Desperate. Went back to the old twisting lane and found only a blank wall. Without the amulet, how can I resist --[paragraph break]...bottles, bottles...[paragraph break]Getting worse. People I have never met smile knowingly at me in the street. The police believe I am a child molester, but have brought no charges against me as yet. Why? Head hurts all the time. I have turned the cellar upside-down... damn it all, where is it?[paragraph break]Dreamed of Father again. Dreamed of Grandfather. Those horrible, red-rimmed eyes...[paragraph break] -- into the safe, finally. [m1 of safe]-[m2 of safe]-[m3 of safe]. Won't forget THAT soon. Ha![paragraph break]CANNOT DISCOVER ENTRANCE IN THE CELLAR!!! Secret eludes me still but I WILL FIND IT!!! The clue is in their names, that pestilential procession of names! If I could only -- [roman type][paragraph break]The text breaks off as several more pages are missing. the last fragmented entry reads:[paragraph break][italic type] -- will fail. There is no recourse left. I know now what I must do. Julia -- [roman type]".

The soggy text is always "Carefully, you turn the tattered pages. The handwriting is that of a young girl. You idly wonder if this might have been the diary of one of Edward Verlac's daughters -- but then you notice part of a date, just visible in the corner of the page: 1953. This must have been written, then, several years before Edward was born.[paragraph break]The entries that are legible read as follows:[paragraph break][italic type]...Father came again to my bed last night... mother doesn't... tells me I can't... to be a good daughter. Sometimes it hurts, but Father always tells me I shouldn't cry. Father says a daughter must do her Duty if she wants to get into Heaven. And I do want to get into Heaven...[paragraph break](this entry dated 1957) [italic type]...my poor little William. Father calls him an aberration, child of the Devil, but I don't believe... locked in the attic. I go to see him whenever Father is away. I sing to him, sometimes, through the keyhole, and slip him sweets through the crack under the door... my baby is beautiful... can't let him hurt my dear baby William... to the doctor, and he has a plan... I can never... this locket, William, and I will always keep yours... to always remember my face...[roman type][paragraph break]Nothing else is readable except for one fragmented entry near the very end of the book, the date in the corner reading February 27, 1961:[paragraph break][italic type]...dead, but not dead yet... will not allow him to do to Edward what he wanted to do to William... have learned... given him the charm against the... never take it off, dear Edward...[roman type] (a page has been torn away) [italic type]...fear to sleep... mist at the window --[roman type][paragraph break]And that's all.".

Volume 13 - Testing

Understand "solve the safe" as solving the safe. Solving the safe is an action applying to nothing. Carry out solving the safe:
	try turning the dial to m1 of safe;
	try turning the dial to m2 of safe;
	try turning the dial to m3 of safe.

Goobling is an action applying to nothing. Carry out goobling:
	now the player has the flask;
	now the player has the tin;
	now the player has the house key;
	now the player has the cellar key;
	repeat with x running through things carried by the player:
		now x is in the Master Bedroom;
	repeat with x running through things worn by the player:
		if x is not the wedding ring:
			now x is in the Master Bedroom;
	now the player is in the bed;
	now the day of the player is 2.
Understand "go2" as goobling.

Umpelling is an action applying to nothing. Carry out umpelling:
	now the player has the house key;
	now the player has the cellar key;
	now the player has the small copper key;
	now the player has the iron key;
	now the player has the strange black disk;
	repeat with x running through things carried by the player:
		now x is in the Master Bedroom;
	repeat with x running through things worn by the player:
		if x is not the wedding ring:
			now x is in the Master Bedroom;
	now the player is in the bed;
	now the day of the player is 3.
Understand "go3" as umpelling.