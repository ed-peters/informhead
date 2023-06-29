"Informhead" by Ed Peters

[ There are five levels of headings available--"volume", "book", "part", "chapter" and "section" ]

[ TODO - TEST ]
[ folks on the road - killed too soon ]
[ folks on the bridge ]
[ mill workshop ]
[ read blueprint ]
[ man's corpse in the square ]
[ before vs check ]
[ consult Michael during gimme ]
[ closing things up for the day ]
[ trying to open the wine rack ]
[ reporting on closed containers ("you can't see in X, because it is closed") ]
[ full score ]
[ cultists heading to island ]
[ random atmospherics & backdrops ]
[ backdrops ]
[ ladders as doors ]
[ consult table ]
[ message source ]

Volume 1 - Meta

Book 1 - Settings

Use scoring.

Include Basic Screen Effects by Emily Short.
Include Glulx Text Effects by Emily Short.
Include Locksmith by Emily Short.
Include Menus by Dannii Willis.
Include Epistemology by Eric Eve.

The player is in Office Exterior.

Table of User Styles (continued)
style name    	relative size
all-styles    	2

Book 2 - Extensions

The carrying capacity of the player is 5.
The player has a number called day. Day is initially 1.
A thing has a number called last turn examined. The last turn examined is initially -2.
A thing has some text called printing. The printing of a thing is usually "blank".
A thing can be oiled. A thing is usually not oiled.
A thing can be dirty. A thing is usually not dirty.
A thing can be breakable. A thing is usually not breakable.

A thing has a table name called consult table. A thing has text called the consult empty message. The consult empty message of a thing is usually "[The noun] doesn't seem to have any information about that.". The consult empty message of a person is usually "[The noun] doesn't seem to have anything to say about that.".

Instead of consulting something about:
	if the consult table of the noun is not empty:
		repeat through the consult table of the noun:
			if the topic understood matches the topic entry:
				say "[the message entry].";
				if there is a rule entry:
					follow the rule entry;
				stop the action;
	say "[the consult empty message of the noun].".

Before asking something about:
	if the consult table of the noun is not empty:
		try consulting the noun about the topic understood instead.

Table of Here's How You Do It
topic	message (text)	rule (rule)
--	--	--

Jumping into it is an action applying to one thing and requiring light. Carry out jumping into it: try entering the noun.
Understand "jump into [thing]" as jumping into it.

A room has a text called notion. The notion of a room is usually "blank". After looking when the notion of the location is not "blank": say "[the notion of the location]."; now the notion of the location is "blank".

Cutting it with is an action applying to two things and requiring light. Carry out cutting it with: say "Cutting that up would achieve little.".
Understand "cut [thing] with [thing]" as cutting it with.

Covering it with is an action applying to two things and requiring light. Carry out covering it with: try putting the second noun on the noun.
Understand "cover [something] with [something]" as covering it with.

Understand "lower [something]" as pulling.

Burning it with is an action applying to two things and requiring light. Carry out burning it with: say "Like the Boss said, you can't start a fire without a spark." instead.
Understand "burn [something] with [something]" as burning it with.
Understand "light [something] with [something]" as burning it with.

Snuffing is an action applying to one thing and requiring light. Carry out snuffing: say "[The noun] isn't lit." instead.
Understand "snuff [something]" as snuffing.
Understand "extinguish [something]" as snuffing.
Understand "blow out [something]" as snuffing.
Understand "put out [something]" as snuffing.

Understand "put [things] in [thing]" as inserting it into.

Check burning: say "If only you had some matches ..." instead.

Breaking it with is an action applying to one thing and one carried thing and requiring light. Check breaking it with:
	if the noun is not breakable:
		say "Violence may not be the answer here." instead;
	otherwise if the second noun is not carried:
		say "You aren't holding [the second noun]." instead;
	otherwise:
		say "You can't get in a good blow with [the second noun]; you need something heavier." instead.
Understand "break [something] with [something]" as breaking it with.
Understand "attack [something] with [something]" as breaking it with.
Understand "kill [something] with [something]" as breaking it with.

Understand "break [something]" as attacking.
Understand "kick [something]" as attacking.

Attacking it with is an action applying to one thing and one carried thing and requiring light. Check attacking it with: say "Violence is probably not the answer to this one."
Understand "attack [something] with [something]" as attacking it with.
Understand "hit [something] with [something]" as attacking it with.
Understand "kill [something] with [something]" as attacking it with.

Untying is an action applying to one thing and requiring light. Check untying: say "Little would be accomplished by that.".
Understand "untie [something]" as untying.
Understand "free [something]" as untying.
Understand "release [something]" as untying.

After examining a noun:
	now the last turn examined of the noun is the turn count.

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

Knocking on is an action applying to one thing and requiring light. Check knocking on: say "No one answers." instead.
Understand "knock on [something]" as knocking on. 

Hiding is an action applying to nothing. Check hiding: say "There's nowhere you can hide here." instead.
Understand "hide" as hiding.
Understand "hide in [something]" as entering.
Understand "hide under [something]" as entering.
Understand "hide behind [something]" as entering.

Understand "look through [something]" as searching. 

Measuring is an action applying to one thing and requiring light. Before measuring when the player is not holding the calipers, say "You don't have the proper instruments for taking accurate measurements." instead. Carry out measuring:
	say "(with the calipers)[command clarification break]";
	try measuring the noun with the calipers.
	
Measuring it with is an action applying to two things and requiring light. Check measuring it with: say "[The second noun] is not an appropriate measuring device.". Instead of measuring something with the calipers:
	if the noun is a mirror:
		say "The instrument holds the mirror delicately clamped between its pincers; the readout reads '[thickness of the noun]'.";
	otherwise:
		say "The caliper-like instrument wasn't designed to measure [the noun]; it won't fit properly between the pincers.". 

Understand "measure [something]" as measuring.
Understand "measure [something] with [something]" as measuring it with.

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
Understand "undress" as disrobing.
Understand "get undressed" as disrobing.

Dressing is an action applying to nothing and requiring light. Carry out dressing:
	let t be false;
	if the player is wearing the clothes:
		say "You're already dressed!" instead;
	if the player is not holding the clothes:
		if the clothes are not visible:
			say "Your clothes are nowhere to be found." instead;
		try silently taking the clothes;
		say "(taking your clothes)[command clarification break]";
	try silently wearing the clothes;
	if the player is not wearing the trench coat:
		if the player is not holding the trench coat and the trench coat is visible:
			try silently taking the trench coat;
			say "(taking your trench coat)[command clarification break]";
		if the player is holding the trench coat:
			try silently wearing the trench coat;
			now t is true;
	say "You slip on your clothes[if t is true] and your trench coat[end if].".
Understand "dress" as dressing.
Understand "get dressed" as dressing.

Oiling is an action applying to one visible thing and requiring light.
Understand "oil [something]" as oiling.
Instead of putting the fish oil on something, try oiling the second noun instead.

Putting it under is an action applying to two visible things, requiring light. Check putting it under: say "That would accomplish very little.".
Understand "put [something] under [something]" as putting it under.
Understand "slide [something] under [something]" as putting it under.

Naming the demon is an action applying to nothing. Carry out naming the demon:
	if the telescope is not handled:
		say "Where on earth did you come up with that name?" instead;
	otherwise:
		say "The blasphemous syllables crawl loathsomely from your lips. The word lingers in the air like a cyst -- just hearing the sound of it makes you nauseous. Nature itself seems to draw back from the sound, as though horrified by your very voice.";
		continue the action.
Understand "say ialdabaoloth" as naming the demon.
Understand "utter ialdabaoloth" as naming the demon.

Blowing is an action applying to one thing and requiring light. Check blowing: if the noun is not carried, say "You aren't holding [the noun]." instead; if the noun is not the strange metal flute, say "Little would be accomplished by that.".
Understand "blow [something]" as blowing.
Understand "play [something]" as blowing.

Bathing is an action applying to nothing and requiring light. Carry out bathing: say "This isn't the most appropriate place." instead.
Understand "bathe" as bathing.
Understand "take bath" as bathing.
Understand "take a bath" as bathing.

Book 3 - Scoring

Table of Accomplishments
code	action	points	time (number)
"find-keys"	"Finding the house key"	2
"find-michael"	"Retrieving your husband"	2
"old-man"	"Getting the old man to talk"	2
"find-amulet"	"Getting the amulet"	5
"give-amulet-1"	"Giving the old man the amulet"	5
"open-puzzle"	"Getting into the puzzle box"	2
"read-torn"	"Reading the torn journal"	2
"read-soggy"	"Reading the soggy pages"	2
"find-safe"	"Finding the safe"	1
"open-safe"	"Opening the safe"	2
"find-frazer"	"Getting the book from the librarian"	2
"open-laptop"	"Getting into the laptop"	2
"spying"	"Spying on Michael"	2
"view-darkness"	"Viewing the coming darkness"	5
"find-iron"	"Getting the crypt key"	1
"enter-shack"	"Entering the house near the mill"	2
"mill-key"	"Getting the mill key"	1
"small-drawer"	"Finding the real estate agent's letter"	2
"cut-jacket"	"Escaping the strait jacket"	2
"read-edwards-letter"	"Reading Edward's jailhouse letter"	2
"free-madman"	"Freeing the madman"	2
"kill-will"	"Killing William Verlac"	2
"show-ring"	"Showing Michael your wedding ring"	5
"give-amulet-2"	"Giving the amulet to Michael"	5
"banish-ghost"	"Banish the ghost of Croesus Verlac"	15

To record (T - text) as accomplished:
	choose row with a code of T in the Table of Accomplishments;
	if there is no time entry:
		now time entry is the turn count;
		increase the score by the points entry. 

Requesting the full score is an action out of world. Carry out requesting the full score:
	if the score is 0, say "You have achieved nothing towards supper." instead;
	repeat through the Table of Accomplishments in reverse time order:
		say "[time entry]: [action entry] ([points entry])."

Understand "full" or "full score" as requesting the full score.

Volume 2 - Scenes

Scenes can be tired. A scene is usually not tired.

To decide if sleep is prevented:
	repeat with S running through scenes:
		if S is happening and S is tired:
			decide no;
	decide yes.

Instead of sleeping:
	if sleep is prevented:
		say "You're not tired.";
	otherwise if the location is not Master Bedroom:
		say "This isn't the best place for it.";
	otherwise if the player is not on the bed:
		say "You really should get in bed first.";
	otherwise if the front door is open:
		say "Something is nagging at you, preventing you from sleeping... suddenly you remember -- you've left the front door open.";
	otherwise:
		now the day of player is the day of player plus one.

Book 1 - Day One

Day 1 is a scene. Day 1 begins when play begins. Day 1 ends when Day 2 begins.

When Day 1 begins:
	display the boxed quotation "The oldest and strongest emotion of mankind
	is fear, and the oldest and strongest kind of
	fear is fear of the unknown.
	
	-– H.P. Lovecraft";
	show the current quotation;
	center "INFORMHEAD";
	pause the game;
	say "[the day1 intro]";
	pause the game;
	set the combination of the safe;
	darken the mansion;
	
Instead of going south from the Town Square during Day 1, say "The courthouse is closed for the day.". Instead of going south from the Asylum Courtyard during Day 1, say "The asylum is closed for the day.".

After going to University Court when Day 1 is happening for the first time:
	now the goal of Michael is ignore;
	continue the action.

Part 1 - Michael Reads

Michael Reads is a scene. Michael Reads begins when the goal of Michael is ignore. Michael Reads ends when Michael Follows begins.

Every turn when the player is in the Library and the goal of Michael is ignore:
	if a random chance of 1 in 4 succeeds:
		say "Michael turns to a new page in the book and begins reading intently.".

Instead of saying hello to Michael when Michael Reads is happening:
	if Michael is not greeted:
		say "Michael looks up, startled, then realizes it's you and smiles. 'Hi, hon,' he says, closing the book and stretching. Then he glances at his watch. 'Good grief, what happened to the time? I'm so sorry -- I just lost track.' He smiles sheepishly.[paragraph break]'Well?' he asks. 'Did you get the keys?'";
		now Michael is greeted;
	otherwise:
		say "Michael nods distractedly. He doesn't seem to be listening to you.".

To decide if (T - thing) gets Michael's attention:
	if T is the house key, decide yes;
	if T is the cellar key, decide yes;
	if T is the keyring and the house key is on the keyring, decide yes;
	decide no.

Instead of asking Michael about when Michael Reads is happening, try saying hello to Michael. Instead of showing something to Michael when Michael Reads is happening:
	if Michael is greeted:
		if the noun gets Michael's attention:
			say "'Great!' says Michael. 'You hang on to that. Just a second, I'll put this back.' He takes the book up to the circulation desk and hands it to the librarian. 'Okay then,' he says, returning, 'let's go.'[paragraph break]Michael suddenly smacks his forehead. 'Oh, crap, I forgot to tell you. The car broke down.' He spreads his hands. 'I don't know what happened to it; one second I'm parking outside, the next second it dies and I can't get it started again. I called a tow truck, but the nearest garage is up in Arkham. They picked it up but won't be able to look at it until next week at the earliest. Anyway, it looks like we'll have to walk back to the house.' He offers you a lame smile. 'You can hold the umbrella.'";
			now the goal of Michael is follow;
			record "find-michael" as accomplished;
		otherwise:
			try saying hello to Michael;
	otherwise:
		try saying hello to Michael.
		
Part 2 - Michael Follows

Michael Follows is a scene. Michael Follows begins when the goal of Michael is follow. Michael Follows ends when Michael Sleeps begins.

Table of Michael's Inane Comments
comment
"Michael stops to point out some deteriorated bit of colonial architecture. 'Everything is so old here,' he says, genuinely delighted. 'Isn't it neat?'"
"Michael strolls along after you."
"'We really should be getting on to the house, don't you think?' asks Michael. 'It's a bit rainy out.'"
"Michael scuffs around dispiritedly."
"Michael waits patiently nearby."
"'What the --' says Michael suddenly. You turn to see him peering up at the sky. 'That bird, it...' He looks a bit embarrassed. 'It, uh, I thought it was looking at me. But it flew away.' He stuffs his hands in his pockets and tries to look nonchalant."
"'I apologized about the car, right?' says Michael sheepishly."

Every turn during Michael Follows:
	if Michael is not visible:
		move Michael to the location of the player;
		if the location of Michael is the Foyer:
			now the goal of Michael is sleep;
		otherwise if a random chance of 1 in 4 succeeds:
			choose a random row in the Table of Michael's Inane Comments;
			say "[the comment entry].";
		otherwise:
			say "Michael follows you.".

Part 3 - Michael Sleeps

Michael Sleeps is a tired scene. Michael Sleeps begins when the goal of Michael is sleep. Michael Sleeps ends when the day of the player is not 1.

When Michael Sleeps begins:
	say "Michael stretches his arms and yawns. 'Well,' he says, 'I think I'm going to turn in. There'll be plenty of time to unpack and explore tomorrow. Good night, hon.' He kisses you on the cheek. 'Don't stay up too late.'";
	now Michael is in the Master Bedroom;

Instead of saying hello to Michael during Michael Sleeps, say "Best not. He seems exhausted.". Instead of asking Michael about during Michael Sleeps, try saying hello to Michael. Instead of showing something to Michael during Michael Sleeps, try saying hello to Michael.

Book 2 - Day Two

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
	center "SECOND DAY";
	pause the game;
	say "You wake up. Steam billows gently by, and you can hear the sound of running water coming from the bathroom.";
	now the clammy mist is nowhere;
	move the graffiti to Twisting Lane;
	move the newspaper to the Town Square;
	now the goal of Michael is shower;
	light the mansion.
		
Part 1 - Michael Showers

Michael Showers is a scene. Michael Showers begins when Day 2 begins. Michael Showers ends when the goal of Michael is write.

The pants are a plural-named proper-named opaque container with printed name "Michael's pants". "On the four-poster bed you can see Michael's pants." The description of the pants is "They're the same plain khakis he usually wears[if the pants contain something]. You notice something in the back pocket[end if].". Rule for deciding whether all includes the pants: it does not.

The wallet is a proper-named opaque container with printed name "Michael's wallet". The wallet is in the pants. The description of the wallet is "It's just his wallet, an ordinary leather wallet.[if the wallet contains something][run paragraph on][end if]". Before searching the wallet for the first time: now the faculty card is in the wallet; continue the action. Rule for deciding whether all includes the wallet: it does not.

The faculty card is a proper-named thing with printed name "Michael's faculty card". The description of the card is "The card identifies your husband as a faculty member at Miskaton University, entitled to all the privileges that implies.".

The towel is a thing. The description of the towel is "It's a bit mildewy since Michael didn't hang it up, but otherwise it's a perfectly ordinary bath towel.".

When Michael Showers begins:
	now Michael is nowhere;
	move the pants to the Master Bedroom;
	move the towel to the Master Bathroom.

Check going to the Master Bathroom during Michael Showers: say "The bathroom is occupied at the moment." instead.

Report listening when the player is in the Master Bedroom during Michael Showers:
	say "You've never known anyone who loves a morning shower more than your husband. To him it's better than coffee. You can hear him from all the way out here, [one of]belting out 'I'm Deranged' in his best David Bowie croon[or]belting out a spirited, one-man rendition of Beethoven's 'Ode to Joy'[or]practicing his Christopher Walken routine. 'Do you know who I am? I am the Antichrist!'[or]having a spirited conversation with himself. You can't make out any of the words; he's probably sounding out some dialogue for one of his stories[or]practicing his Dennis Hopper routine. 'Heineken?! Fuck that shit! PABST BLUE RIBBON, MAN!'[or]belting out 'You're So Cruel' in his best Bono falsetto[or]practicing his Gabriel Byrne routine. 'Sister, when I've raised hell, you'll know it!'[or]belting out 'Rock Me Amadeus' at the top of his voice[cycling]."; 
	rule succeeds.

Every turn during Michael Showers:
	if the faculty card is carried:
		say "The shower suddenly stops. Quickly you palm the card, replace the wallet and arrange the pants the way you found them. A moment later Michael emerges from the bathroom, toweling his hair. 'My, don't you look tempting this morning,' he says, giving you a kiss. He tosses the towel back into the bathroom and gets dressed. 'I think I'm going to stay home and get some writing done. I don't actually start work until tomorrow, so...' He kisses you on the cheek as he walks out into the hall. 'If you go out today, see if you can find a newspaper. I want to learn as much as I can about this town.'[paragraph break]He looks at you for a moment, and his voice becomes serious. 'I love you, hon. You know that, don't you? I really want us to try and be happy here.'[paragraph break]Then he turns and pads down the hall.[paragraph break]You take a deep breath as he goes. You've never lied to Michael or hidden anything from him before, ever; now, hardly two days into your new life, you're already sneaking through his wallet.[paragraph break]Oh yeah. You're off to a great start.";
		now the goal of Michael is write.

After going to the House Library during Michael Showers:
	say "You pause as the shower shuts off, and you hear Michael moving around in the next room. His footsteps thump loudly on the hardwood floor as he comes down the hall, and then are muffled again as he steps onto the deep green carpet of the library.[paragraph break]'Good morning,' he says, smiling and kissing you lightly on the cheek. He looks around at the crowded rows of books. 'Neat, huh? I may go through some of them this morning. Since the fogies don't need me to start work until tomorrow, I thought I'd stay home and try to get some writing done.'[paragraph break]As he steps through the sliding doors into the study, he turns and says, 'I'll be in here for a while, okay? Oh, and if you go out today, see if you can find a newspaper somewhere.' He smiles as he slides the doors shut.";
	now the goal of Michael is write;
	continue the action.

After going to the Foyer during Michael Showers:
	now the goal of Michael is write.

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

After going to Foyer for the first time during Close of Day, say "You call out to let Michael know you're home, but no one answers. The house is still, hushed; an eery prickling walks up your back like centipede legs. Michael isn't here, you realize. The house is empty. You are alone..".

Instead of locking keylessly the front door during Close of Day, say "A thought occurs to you: what if Michael comes back and can't get in the house? You'd better leave it unlocked for him.".

Instead of locking the front door with the house key during Close of Day, say "A thought occurs to you: what if Michael comes back and can't get in the house? You'd better leave it unlocked for him.".

Book 3 - Day Three

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
	center "THIRD DAY";
	pause the game;
	say "You wake up, shivering. Michael is in bed next to you, sleeping like a dead man with the sheets wrapped in a twisted snarl around his body.";
	now the goal of Michael is shower;
	now the graffiti is nowhere;
	now the trees are familiar;
	now the notion of Outside the House is "The hairs on the back of your neck prickle as you step outside. Something is wrong. Something is very wrong with the air. A heavy, charged sensation, like standing next to high-tension wires; a faint odor of spoiled meat drifting on the wind; you can't put your finger on it, but it might have something to do with that strange hole in the sky.";
	now the notion of the Twisting Lane is "Strange; the graffiti is gone now. Not a trace of it left.";
	light the mansion.

Part 1 - Michael Sleeps (Again)

Michael Sleeps Again is a scene. Michael Sleeps Again begins when Day 3 begins. Michael Sleeps Again ends when Michael Wanders Begins.

When Michael Sleeps Again begins:
	now Michael is in the bed;
	now Michael's feet are in the Master Bedroom;
	now the initial appearance of Michael is "Michael is sprawled across the bed, sound asleep.";
	now the description of Michael is "Michael is sprawled across the bed with the sheets tangled around his legs, oblivious to the world. Usually, Michael is a light sleeper; you've never seen him so thoroughly knocked out before.[paragraph break]You notice something odd about Michael's feet. They are covered with dried mud.".

When Michael Sleeps Again ends:
	now Michael's feet are nowhere.
	
Michael's feet are scenery. Understand "mud" or "leaves" or "twigs" as Michael's feet. "The bottoms of Michael's feet are caked with dried mud. Bits of leaves and twigs are stuck to his skin as well.".

After taking the clothes during Michael Sleeps Again:
	say "You try to get dressed as quietly as possible, but apparently Michael isn't as knocked out as you thought he was.";
	try waking Michael.
		
Instead of waking Michael during Michael Sleeps Again:
	say "Michael comes awake with a jerk and a hoarse shout. For a moment or two he only stares about blindly, as if unsure of where he is and all but unaware of your presence. Then, with a grunt of surprise, he seems to come to his senses and painstakingly crawls out of bed.";
	now the goal of Michael is wander.
	
Part 2 - Michael Wanders

Michael Wanders is a scene. Michael Wanders has a number called spy level. The spy level of Michael Wanders is 0. Michael Wanders begins when the goal of Michael is wander. Michael Wanders ends when the location of Michael is nowhere.

Wander limit is a number that varies.

When Michael Wanders begins:
	now the rage of Michael is 0;
	now wander limit is the turn count plus 15.

Every turn during Michael Wanders:
	if the player is in the Kitchen:
		say "Michael suddenly brushes past you, heading toward the cellar with a flashlight in his hand. Before you can even ask him what he's doing, he is already down the stairs and out of sight.";
		now Michael is nowhere;
	otherwise if Michael is visible and a random chance of 2 in 3 succeeds:
		have Michael do something weird;
	otherwise:
		scoot him along.

Every turn during Michael Wanders:
	if the turn count is greater than the wander limit and Michael is not visible:
		say "Suddenly you hear a deep grinding noise that seems to vibrate up through the floor from beneath the house. A moment later there is a terrible, wailing howl as of some subterranean wind shrieking through unlit passages. Then the grinding again, and all is silent.[paragraph break]Timidly, you call out Michael's name. There is no answer. You are alone in the house.";
		now Michael is nowhere.

Before going from the Foyer during Michael Wanders:
	if the room gone to is Outside the House:
		say "Suddenly you hear a deep grinding noise that seems to vibrate up through the floor from beneath the house. A moment later there is a terrible, wailing howl as of some subterranean wind shrieking through unlit passages. Then the grinding again, and all is silent.[paragraph break]Timidly, you call out Michael's name. There is no answer. You are alone in the house.";
		now Michael is nowhere.

Table of Michael's Weird Behavior
message
"Michael stands here, frowning and absently rubbing at his forehead."
"Michael walks a few steps across the room and then stops, as if he had forgotten what he had gone there to do."
"Michael glares at you suspiciously."
"Michael cocks his head suddenly, as if listening to a distant sound."
"Michael rubs his forehead and groans."
"A shiver runs up your back, for no apparent reason; turning, you realize that Michael has been staring at you. He looks away, his expression unreadable."
"Michael stops, as if suddenly remembering something. He looks down at his feet, and mutters, '...jesus...'"

To have Michael do something weird:
	choose a random row in the Table of Michael's Weird Behavior;
	say "[the message entry].".

Table of Michael's Going Messages
message
"with a furtive, suspicious glance in your direction"
"muttering something about 'always being watched...'"
"muttering something about 'needing privacy...'"
"absently rubbing his forehead"
"looking around aimlessly, as though searching for something without even knowing what it is that is lost"

To scoot him along:
	let home be the location of Michael;
	let next be a random room which is adjacent to home;
	let way be the best route from home to next;
	if Michael is visible:
		choose a random row from the Table of Michael's Going Messages;
		say "Michael wanders off to the [way], [the message entry].";
	otherwise if next is the location:
		say "Michael wanders in. He seems surprised, as if he didn't expect to see you here.";
	otherwise if a random chance of 1 in 4 succeeds:
		say "You can hear Michael moving around elsewhere in the house, the floorboards creaking uneasily with
his footsteps.";
	move Michael to next.

Table of Michael's Grumpy Answers
topic	reply
"family"	"Michael visibly shudders when you mention the name. 'I'm sick of hearing about them,' he mutters."
"verlac"	"Michael visibly shudders when you mention the name. 'I'm sick of hearing about them,' he mutters."
"edward"	"Michael suddenly claps his hands over his ears. 'Shut up about that guy, will you?' he shouts. 'I am so sick of hearing about Edward Verlac; can we PLEASE talk about something less fucking depressing? The guy is dead and gone and so are his poor fucking wife and his poor fucking kids; it's ancient history! I am NOT Edw-- '[paragraph break]He breaks off abruptly and looks away. Your heart skips a beat, however, because you realize what he was about to say:[paragraph break][bold type]'I am not Edward Verlac.'[roman type]"
"william"	"Michael dismisses you with an irritable wave of his hand. 'You shouldn't believe everything an old drunk tells you,' he says."
"mordecai"	"Michael mutters noncommittally."
"anna"	"Michael mutters noncommittally."
"julia"	"Michael gives you a pained look. 'Can we please talk about something else? They're dead now, and it's terrible, but nothing can bring them back. Okay?'"
"wilhelm"	"Michael mutters noncommittally."
"elijah"	"Michael mutters noncommittally."
"eustacia"	"Michael mutters noncommittally."
"croseus"	"Michael stops and stares at you with an odd, distrustful expression. 'Where did you hear that name?' he croaks. 'I dreamed that name.' He rubs his forehead again. 'I dreamed it...'"
"town"	"Michael rounds on you irritably. 'Look, this is our home now, goddammit, whether you like it or not; we've made the decision and we'll have to stick with it. If you don't like living here, maybe you should move out!'"
"informhead"	"Michael rounds on you irritably. 'Look, this is our home now, goddammit, whether you like it or not; we've made the decision and we'll have to stick with it. If you don't like living here, maybe you should move out!'"
"book"	"'I told you,' snaps Michael, 'I was just doing some research, is all. I really don't feel like talking about it now.'"
"house"	"Michael rounds on you irritably. 'Look, this is our home now, goddammit, whether you like it or not; we've made the decision and we'll have to stick with it. If you don't like living here, maybe you should move out!'"
"feet"	"Michael stops and looks down at his feet. For a moment he looks genuinely dumbfounded. 'I... I, uh... I don't know. I have no idea how that got there.'[paragraph break]He spreads his hands and looks the other way. Suddenly you realize: he is frightened. He is hiding something from you, certainly, but he's hiding it because he is frightened of it. Maybe he doesn't himself understand what happened to him last night... or where it happened to him."

Instead of asking Michael about during Michael Wanders:
	repeat through Table of Michael's Grumpy Answers:
		if the topic understood matches the topic entry:
			say “[the reply entry].”;
			now the rage of Michael is the rage of Michael + 1;
			if the rage of Michael is greater than 4:
				say "'Jesus, just give it a rest!' Michael shouts, throwing his hands up. 'Can't you just fucking leave me alone for two goddamn minutes?' He rounds on you. 'I mean it,' he says, 'You push me one more time and...' He leaves the rest unfinished. Turning his back on you, he stalks off to the other side of the room.[paragraph break]You draw a shaky breath, dismayed and hurt. This is horrible; you can't do anything for Michael if he won't talk to you, and everything you say seems to make it worse. In your frustration, you even catch yourself wishing that you could spy on your own husband -- that perhaps, unobserved, he might offer you some clue as to what is bothering him.[paragraph break]Sighing, you dismiss the thought. What, after all, would that solve?";
				now the rage of Michael is 0;
				scoot him along;
			rule succeeds;
	say "You can't think of anything to say about that for the moment.".

Part 3 - Out on the Town

Out on the Town is a scene. Out on the Town begins when Michael Wanders ends. Out on the Town ends when the player is in the Trampled Path.

When Out on the Town begins:
	now the description of the sky is "There is a spinning, churning hole in the clouds, directly over the lighthouse; an inverted whirlpool sucking streamers of gray up into itself. You'd think it was some sort of funnel cloud, except that it's not moving anywhere. It's simply hanging, turning slowly in the sky. The sight of that horrible, whirling hole makes you shudder, involuntarily recalling that hideous entity that lurks behind those clouds.";
	prepare the wine puzzle.

Instead of examining the trees when the player is in Down the Road and Out on the Town is happening:
	say "You scrutinize the edge of the road carefully, looking for whatever it was you saw...[paragraph break]There. On the west side. That stump, and the twisted sapling growing next to it; you recognize them. And just beyond them... the path. It's the path you took in your dream, a narrow rut running west through the underbrush. You can hardly believe it, but there it is.";
	now the stump is in Down the Road;
	now the sapling is in Down the Road.

Part 4 - Good Will Hunting

Good Will Hunting is a scene. Good Will Hunting has a number called start. The start of Good Will Hunting is 0. Good Will Hunting begins when Crumbled Ruin is visited and the start of Good Will Hunting is 0. Good Will Hunting ends when the start of Good Will Hunting is -100.

Before going east from the Crumbled Ruin during Good Will Hunting:
	if the start of Good Will Hunting is 0:
		now the start of Good Will Hunting is the turn count;
		say "You are about to step back through the eastern wall when a noise makes you stop. In the woods outside, to the east -- something is there. Something breathing. Something huge.[paragraph break]A branch cracks sharply; and another. It's coming this way.";
		stop the action;
	otherwise:
		say "You never even see it coming. A sudden commotion from the trees; a bloated wall of flesh heaving itself through the branches and underbrush; a writhing thicket of tentacles reaching out for you... what you see next, when the branches suddenly give way, is so utterly, blasphemously hideous that your mind is mercifully blasted into unconsciousness, sparing you any knowledge of the butchery which takes place during the next few minutes.";
		end the story saying "you have died".

Every turn during Good Will Hunting:
	if the start of Good Will Hunting is greater than 0:
		let t be the turn count - the start of Good Will Hunting;
		if t is 1:
			say "The sound of tearing undergrowth grows louder. Whatever it is, it's practically bulldozing its way through the forest.";
		otherwise if t is 2:
			say "The ground trembles slightly with the thing's thunderous footsteps as it tromps up the path. It's right outside the slaughterhouse!";
		otherwise if t is 3:
			if the player is in Crumbled Ruin:
				say "You never even see it coming. The east wall bursts inward in an eruption of bricks and mortar dust; squirming, ropy tentacles snake out from the obscuring cloud and wrap themselves around your your body... within moments you are unconscious, mercifully spared the sight of what happens to your body in the next few bloody minutes.";
				end the story saying "You have died";
			otherwise:
				say "You hear it pause inside the building, its hide slithering loudly against the brick walls as it moves about. There is a horrible, wet snorting sound, as if it were trying to pick up a scent, then an unspeakable, inhuman grunt of anger.";
		otherwise if t is 4:
			if the player is in Behind the Slaughterhouse:
				say "You never even see it coming. A massive, bloated shape suddenly looms up behind the hole in the northern wall, and half a dozen fat, fleshy tentacles snake out with awful, twitching speed and wrap themselves around your body. Your head cracks against a brick as it drags your body through the opening, knocking you mercifully unconscious before the thing starts on you.";
				end the story saying "You have died";
			otherwise if the player is not in the bones:
				say "You cower down in the bottom of the well as the thing, whatever it is, moves closer. A shadow falls across the mouth of the well, and then the circle of light above you is blotted out by a shape so utterly, blasphemously hideous that even its mere silhouette is enough to blast you into unconsciousness. The last things you see are its squirming tentacles groping down the sides of the well for you...";
				end the story saying "You have died";
			otherwise:
				clear the screen;
				say "Scarcely daring to breathe, you lie as still as possible beneath your cover of bones as the thing, whatever it is, moves closer. A shadow falls across the mouth of the well, and then the circle of light above you is blotted out by a shape so utterly, blasphemously hideous that it is all you can do to remain conscious. Two grotesquely blue and childlike eyes blink down into the darkness of the well, searching...";
				pause the game;
				say "And then it is gone.[paragraph break]You must have lost consciousness after all, judging from the stiffness in your limbs and the difference in the light. You have no idea how long you were out, but the creature must have passed you by. The forest is still again; the breathing and footsteps, gone.[paragraph break]Involuntarily, you let out a long, shuddering breath.";
				now the start of Good Will Hunting is -100.

Part 5 - Folks on the Road

Folks on the Road is a scene. Folks on the Road begins when Good Will Hunting ends. Folks on the Road has a number called rage. The rage of Folks on the Road is 0. Folks on the Road ends when the Church Cellar is visited.

Check of going north from Deserted Lane during Folks on the Road: say "The threatening townsfolk block your escape in that direction. You could probably break away to the east, if you were quick." instead.

After going to the Deserted Lane for the first time during Folks on the Road:
	say "A small group of townsfolk has gathered up at the north end of the road. As you approach, still breathless from your encounter with the thing at the slaughterhouse, they turn toward you -- and that's when you notice that the one in the lead has an axe in his hand. And the one behind him has a pair of garden shears.[paragraph break]A couple of men move over to your left, and several more step out of the forest behind you. All of them carry weapons or nasty farm implements of some kind, and all of them look as though they're just about ready to put an end to a certain over-curious, outsider woman who doesn't know enough to keep her nose out of things better left undisturbed.".

Every turn during Folks on the Road:
	if the player is in the Deserted Lane:
		if the rage of Folks on the Road is greater than 2:
			say "Someone lunges at you from your left, and before you can react a machete blade buries itself several inches deep into your collarbone. You try to scream, but shock trauma has robbed your lungs of strength; you can only whimper quietly as your legs give out and the blood pours down your arm. The last thing you see is the business end of a pitchfork darting toward your eyes, but the last thing you feel doesn't come until several minutes later, as the townsfolk leisurely hack your body to
pieces.";
			end the story saying "You have died";
		otherwise:
			say "The townsfolk shuffle a bit closer, raising their weapons in anticipation of the kill.";
			increase the rage of Folks on the Road by 1.
			
Part 6 - Folks on the Bridge

Folks on the Bridge is a scene. Folks on the Bridge begins when Folks on the Road ends.

Hubbub Central is a region. Town Square and Narrow Street are in Hubbub Central. The commotion is backdrop. "The townsfolk have gathered in a small crowd on Whateley Bridge. Word of your snooping must have gotten around quickly; these fellows are obviously not taking any chances on the possibility of you escaping from the church, and are keeping a sharp lookout.".

When Folks on the Bridge begins:
	now the commotion is in Hubbub Central.
	
When Folks on the Bridge ends:
	now the commotion is nowhere.

Before going to Hubbub Central during Folks on the Bridge: if the room gone from is not Whateley Bridge, say "There appears to be a commotion of sorts to the [if the room gone to is Narrow Street]south[otherwise]north[end if], where a group of townsfolk have gathered.".

After going to Whateley Bridge during Folks on the Bridge:
	say "A group of wary-looking townsfolk has gathered, keeping a watchful eye on the street
from the bridge.[paragraph break]The townsfolk turn toward you as you walk blithely up to them.[paragraph break]Suddenly, someone's finger jabs out at you. 'It's the woman!' He shouts. 'Get her!!'";
	The townspeople attack in 1 turn from now.

At the time when the townspeople attack:
	say "There is no time to run. Heavy boots on the cobblestones; hands lunging toward you -- they are everywhere, grabbing you from every side, immobilizing you. Someone's huge, calloused paw closes around your windpipe and starts to squeeze. Just before you black out, you can feel yourself being lifted off your feet...";
	end the story saying "You have died".
	
Part 7 - Michael Snaps

Michael Snaps is a scene. Michael Snaps begins when M2 is oiled. Michael Snaps ends when Day 4 begins.

When Michael Snaps begins:
	now the notion of Mill Road is "A distant flicker of movement draws your eyes eastward to the faraway lighthouse. A lone figure, tiny in the distance, makes its way stealthily around the small spur of rock at the end of the breakwater and slips inside the door at the tower's base. It's impossible to see the person's face from this distance, but the hair, the way he walks... you'd swear it was Michael.";
	now the great bronze door is unlocked;
	now the great bronze door is open.

After going down from Lighthouse Top during Michael Snaps:
	say "There is a faint scuffing noise from the shadows behind you -- before you can turn around, something slams into the back of your head with brutal force. Sparks go off in front of your eyes, and you fall to the cool concrete floor with the world reeling under you. As you kneel there, dazed and struggling not to pass out, your assailant walks slowly around you. He pauses, as if wondering whether or not to finish you off.[paragraph break]Terror and nausea wash over you in alternating waves. You are too weak to look up and see his face, but you recognize his shoes easily enough. After all, you helped him pick them out not three weeks ago.[paragraph break]More footsteps come down the stairs, and you sense a number of men standing around you. 'We'll take care of her, Your Holiness,' rasps an old, weathered voice. Rough hands start to drag you to your feet.[paragraph break]'No,' says Michael, and the hands pause.[paragraph break]'Your Holiness, she has seen too much,' protests the raspy voice. 'She must be killed.'[paragraph break]'That won't be necessary,' Michael says. 'Put her somewhere out of the way, where she can't get into any more trouble. I'll deal with her myself... after the Blessed Event.'[paragraph break]The horror and pain are too much; the darkness overwhelms you. You try to catch a glimpse of your husband's face as the men drag you away, but in your clouding vision all you can see are a pair of burning, red-rimmed eyes...";
	pause the game;
	now the day of the player is 4.

Book 4 - The Last Day

Day 4 is a scene. Day 4 begins when the day of the player is 4.

When Day 4 begins:
	clear the screen;
	display the boxed quotation "
	The most merciful thing in the world, I  
	think, is the inability of the human     
	mind to correlate all its contents. We   
	live on a placid island of ignorance in  
	the midst of black seas of infinity,     
	and it was not meant that we should      
	voyage far... but some day the piecing   
	together of dissociated knowledge will   
	open up such terrifying vistas of        
	reality, and of our frightful position   
	therein, that we shall either go mad     
	from the revelation or flee from the     
	deadly light into the peace and safety   
	of a new dark age.                       

	-– H.P. Lovecraft";
	show the current quotation;
	center "THE LAST DAY";
	pause the game;
	say "[the day4 intro]";
	pause the game;
	now the description of Michael is "He is someone else, now, someone you have never known and would never want to know. His flesh is gaunt; his skin waxy and pale; his forehead burning and feverish. And his eyes... you can't bear to look into the seething madness of those wild, red-rimmed eyes. Your husband is gone, now -- some other, alien force has devoured him from within and now animates his body.";
	now the swivel mount is nowhere;
	now the strange device is in Lighthouse Top.
	
Part 1 - Loony Binned

Loony Binned is a scene. Loony Binned begins when Day 4 begins. Loony Binned ends when the madman is nowhere.

When Loony Binned begins:
	repeat with T running through things carried by the player:
		now T is in the janitor's closet;	
	repeat with T running through things worn by the player:
		if T is not the clothes and T is not the wedding ring:
			now T is in the janitor's closet;
	now the player is in the Cell Interior NE;
	now the player is wearing the strait jacket;
	now the orderly's name tag is in the Waiting Room.
	
Instead of going south from Upper Hallway South for the first time:
	now Cell Door ME is unlocked;
	now Cell Door ME is open;
	now the madman is in Upper Hallway South;
	now the madman is free;
	say "You are stopped halfway to the stairs by a loud banging noise behind you.[paragraph break]You turn around -- there it is again. A loud, shuddering bang, like something heavy slamming into something wooden -- and you see a cell door halfway down the hall shiver in its frame.[paragraph break]Looks like someone else is trying out your brilliant escape plan.[paragraph break]The door is hit a third time, the latch snaps and the door flies open, and a filthy, ragged man staggers out into the hall. You have just enough time to notice -- with no small amount of disquiet -- that the man is not wearing a strait jacket, and then he looks up at you and grins an utterly psychotic grin.[paragraph break]The madman lurches after you." instead.

After going to The Waiting Room when Loony Binned is happening for the first time:
	say "The madman stops, stoops down, and picks a bit of gristly stuff out of the back of the orderly's head. He pops it into his mouth and chews it rapidly, rubbing his belly.".

After going to the Asylum Courtyard when Loony Binned is happening for the first time:
	say "The madman comes prancing out the front door of the asylum, and suddenly stops dead in his tracks. He looks around, utterly dumbfounded. He looks up at the sky, and feels the raindrops striking his face. Slowly it dawns on his addled brain that he is outside; that he is, in fact, free.[paragraph break]With a wild whoop of pure joy, the madman hobbles away down the street, laughing and chattering to himself with such unabashed happiness that for a moment you almost forget that you have just let loose a dangerous and quite probably homicidal psychotic into the world at large.[paragraph break]Then again, you think, in this town he might just fit right in.";
	now the madman is nowhere;
	record "free-madman" as accomplished.

Part 2 - Mob Justice

Mob Justice is a scene. Mob Justice begins when Loony Binned ends. Mob Justice ends when the old man's body is in Town Square. Mob Justice has a number called rage. The rage of Mob Justice is 0.

To murder the old man:
	now the old man's body is in Town Square;
	now the amulet is in Town Square;
	now the amulet is not handled;
	now the initial appearance of the amulet is "Your amulet is lying on the cobblestones a few yards away from the obelisk. Apparently, it didn't give the old bum as much luck as he'd hoped.";
	now the mob of citizens is nowhere;
	now the rage of Mob Justice is 0.

Every turn during Mob Justice:
	if the rage of Mob Justice is greater than 0:
		choose row (the rage of Mob Justice) from the Table of Mob Activity;
		say "[the message entry].";
		if the rage of Mob Justice is greater than 2 and the player is in Town Square and the robe is not worn:
			say "Someone points and shouts: 'It's her! Get the bitch!' There is no time to run. Heavy boots on the cobblestones; hands lunging toward you -- they are everywhere, grabbing you from every side, immobilizing you. Someone's huge, calloused paw closes around your windpipe and starts to squeeze. Just before you black out, you can feel yourself being lifted off your feet...";
			end the story saying "You have died.";
		if the rage of Mob Justice is 3:
			now the description of the old man is "The old man cringes helplessly, staring about with the wet, rolling eyes of a trapped animal.";
			now the mob of citizens is in Town Square;
		if the rage of Mob Justice is 8:
			murder the old man;
		increase the rage of Mob Justice by 1.

Before going to the Town Square when Loony Binned has happened for the first time: now the rage of Mob Justice is 1.

Before going from the Town Square: if the mob is in the Town Square, say "The crowd is too thick in that direction for you to pass through." instead.

Before taking off the hooded robe: if Mob Justice is happening and the player is in the Town Square, say "Right now, it seems smarter to leave it on." instead.

Table of Mob Activity
message
"As you step into the open square you hear a sudden commotion -- several crowds of people are converging onto the town square from different directions. You can hear their shouts and see the flickering glow of their torches as the mob begins to swarm in from the north and east."
"The obelisk glows red with the bloody light of their torches. They are almost here; you'd better find somewhere to hide, quickly."
"Robed men brandishing torches pour into the square, rallying around the obelisk at its center. Several of them seem to be struggling with someone[if the player is in the Town Square]. You huddle back into the shadows, but  no one seems to notice yet another robed figure in the midst of the crowd. For the moment, it seems, you are safe[end if]."
"You wait, helplessly.[paragraph break]The struggling men step forward, and you can see they have the old bum from the
vacant lot. His wrists are bound and his arms held by two cultists on either side. Although he screams and writhes with frantic desperation, the frail old drunkard is no match for his captors. Someone raises his hands for silence -- you can't quite see him from where you are -- and the mob quiets down. Even the old bum's screams lower to a fearful whimpering."
"You wait, helplessly.[paragraph break]'My brethren,' intones the leader, 'we are gathered here to mete out bloody justice upon one who has sinned against us. This one,' -- he jabs a finger at the old bum -- 'has divulged our secrets to an outsider and betrayed the sacred trust of our brotherhood! For this, his soul must be condemned forever, embraced and encysted within the necrotic folds of the Womb of Nehilim!'"
"You wait, helplessly.[paragraph break]The cultists drag the bum over to the monument and prepare to lift him up. Suddenly, he makes a break for it[if the player is in Town Square], bolting through the pressing crowd and running, by some grotesque twist of luck, straight at you.[paragraph break]The old man stops short. The flickering torchlight illuminates your face, and his eyes widen in recognition. He opens his mouth to speak...[paragraph break]And four burly cultists tackle him simultaneously, pulling him down[otherwise]and gets about two yards before the cultists bring him down[end if]. As the old man's body hits the ground, a small, shiny object falls out of the bum's clothes and bounces out across the cobblestones, unnoticed by all.[paragraph break]The cultists carry the bum back and lift him up onto the monument, hanging him by the wrists from the iron ring set into its tip.[paragraph break]At this, the crowd lets loose with a roar of approval, while the old bum throws back his head and shrieks helplessly into the storm."
"'Please,' sobs the old man pitifully, 'please, I didn't, I swear, I didn't tell nobody nothing, so I didn't! I SWEAR TO GOD I DIDN'T TELL -- '[paragraph break]Before the poor old man can finish his plea, a dozen cultists brandishing long metal rods begin brutally beating him. You avert your eyes; his screams are quickly cut off as his ribs are staved in, and soon all you can hear are the horrible thuds, and the wet snapping sound of breaking bones."
"Although it seems to go on forever, the slaughter is finished in less than a minute. The crowd backs away, its cheering and chanting diminished to a low, hypnotic murmur. The cultists quickly disperse back into the streets, and within moments the square is once again empty... except for the mutilated thing hanging from the obelisk.".

The mob of citizens is scenery. Understand "torches" and "men" as the mob of citizens. The description of the mob of citizens is "The hellish torchlight transforms the cultists' faces into hideous, twisted masks. They howl like animals, hungry for blood.".

[ The poor old man's mutilated corpse hangs from the top of the obelisk. ]
The old man's body is scenery. Understand "man" and "corpse" as the old man's body. The description of the old man's body is "The poor man's torn and broken body has been savaged nearly beyond recognition. You can hardly bear to look at him.".

Part 3 - Will Attacks

Will Attacks is a scene. Will Attacks begins when Mob Justice ends. Will Attacks ends when William is nowhere.

When Will Attacks begins:
	move William to Whateley Bridge.

William is a breakable person. Understand "creature", "monster" and "boy" as William. William has a number called state. The state of William is 0.
	
Instead of examining William:
	say "Unfortunately, forcing yourself to gaze into the monster's countenance is, finally, more than your mind can bear, and your senses snap inside your head like so many rotted hawsers. You can only stand, paralyzed, as the thing lumbers toward you with its tendrils writhing and groping; and your hysterical laughter is drowned out by the thunder, and your horrified tears are washed away by the rain."; 
	end the story saying "You have died".

Instead of breaking William with, try attacking William. Instead of attacking William, have William murder after he "easily sidesteps your attack". Instead of breaking William with the hook when the state of William is 4:
	now William is nowhere;
	record "kill-will" as accomplished;
	say "With a hoarse yell of desperation, you raise the meat hook over your head and fly at the monster while its attention is absorbed by the tiny picture of its mother.[paragraph break]It never even sees you coming. With brutal accuracy, you sink the meat hook deep into the left eye of the little boy's face. It screams, a high, squawling wail like a frightened infant, and a thick, black ichor spurts from the wound. It thrashes about helplessly, knocking you onto the ground, and you scramble back on your hands and feet crab-style, trying to get away from its struggles.[paragraph break]Another flash of lightning, and you see the thing stagger over to the side of the bridge. One tentacle manages to pluck out the hook, which clatters to the pavement -- but the damage has been done. The monster hits the stone parapet, overbalances, and goes over the side, taking the locket with it. It hits the water with a giant splash and is instantly engulfed by the raging current. By the time you get to your feet, rush to the side and look over, the monster's body is gone." instead.

Instead of giving something to William:
	if the noun is the gold locket:
		say "You toss the gold locket at the monster's feet, and the clasp springs open when it hits the cobblestones, revealing the woman's portrait inside. The creature looks down and is immediately captivated. It bends over awkwardly, delicately grasps the chain with the tip of one tentacle, and holds the locket up to its face.[paragraph break]For a single heartbeat of time, even the storm seems to hold still. The little boy's face gazes at the picture in the locket for a long, aching moment. And a silent tear wells up in the corner of its eye and trickles down its cheek.";
		now the state of William is 3;
	otherwise:
		say "The creature doesn't seem remotely interested.".

To have William murder after he (T - text):
		say "With a quickness you never would have suspected in something so big, the creature [T]. There is no time to run. Thick, ropy tendrils wrap themselves around your neck and lift you off the ground, and the little boy's face presses against yours, breathing its raspy, fetid breath into your mouth. And then the biting begins...";
		end the story saying "You have died";

Every turn when Will Attacks is happening and the player is in Whateley Bridge:
	if the state of William is 0:
		say "As you approach the bridge, you see a hulking shadow lurking about on the far bank. You slow down warily, remembering the townsfolk who threatened you earlier, peering through the darkness and obscuring rain to catch a glimpse of the person. Then the figure moves slightly, and you realize that it's much larger than a man; in fact, the figure isn't shaped anything like a man at all.[paragraph break]A sudden crack of lightning illuminates the bridge for a brief, horrible instant -- and in that instant, you see it.[paragraph break]In the next few moments, your battered mind manages to blot out the memory of that bloated, barrel-like, armless trunk; those thick, double-jointed legs that end in shiny black hooves; that writhing forest of fleshy tendrils crowning the torso in place of a proper head -- but you are not, and will never be, able to banish the horrible, searing memory of the thing's misplaced face which leers madly out at you from the side of the trunk -- that child's face on a monster's body![paragraph break]The creature lurches toward you, its hooved feet thumping heavily on the old stone bridge.";
		now the state of William is 1;
	otherwise if the state of William is 1:
		say "The little boy's face opens its mouth and lets forth a horrible, wailing squawl, a sound like a frightened infant calling for its mother.";
		now the state of William is 2;
	otherwise if the state of William is 2:
		have William murder after he "lunges at you";
	otherwise if the state of William is 3:
		say "The monster ignores you for the moment, fascinated by the portrait of its mother.";
		now the state of William is 4;
	otherwise if the state of William is 4:
		say "Suddenly the monster seems to shake itself, as if just then remembering the business at hand. It
drops the locket and turns to you.";
		have William murder after he "lunges at you".

Part 4 - Michael Inspects

Michael Inspects is a scene. Michael Inspects begins when the goal of Michael is inspect. Michael Inspects ends when the goal of Michael is not inspect.

Instead of going down from Lighthouse Top when Day 4 is happening and Michael is not in Lighthouse Top: now the goal of Michael is inspect. After taking the real mirror for the first time: now the goal of Michael is inspect.

When Michael Inspects begins:
	say "'Well, well; if it isn't the loyal wife.'[paragraph break]You whirl around to find Michael standing in the doorway, flanked by two robed guards who stare at you with a distinct glitter of malice in their eyes.";
	now the guards are in Lighthouse Top;
	now Michael is in Lighthouse Top.

Every turn during Michael Inspects:
	if Michael Inspects has been happening for exactly 1 turn:
		say "Michael smirks as he advances on you. 'You're quite a persistent little tart, aren't you? Quite the gutsy little irritant. I suppose Michael must have been one of those 'modern' men; didn't go in for the submissive type.' Michael -- or whatever fiend is speaking from behind Michael's face -- sneers.  'Didn't have the balls for it, is my guess. In my day, we knew how to keep our wives. A headstrong woman should be broken in, just like a headstrong horse.'";
	otherwise if Michael Inspects has been happening for exactly 2 turns:
		say "Michael walks past you and runs his fingers along the strange device. [no line break]";
		if the real mirror is in the receptacle:
			say "'Well, at least you weren't able to do too much damage,' he remarks. He checks the focusing mirror. 'Everything seems to be in order here.' He turns to you. 'Your little game is over now, woman, and you've lost.'";
			now the goal of Michael is summon;
		otherwise if Michael has a mirror:
			have Michael check out his best mirror;
		otherwise:
			say "'My, my, you do keep busy,' Michael remarks when he finds the focusing mirror missing. 'It's a good thing I caught you in time.'";
			now the goal of Michael is gimme.

Section 1 - Calipers

Instead of giving the calipers to Michael when Michael Inspects is happening:
	say "'Yes,' says Michael tiredly. 'You managed to get your dirty little paws on all sorts of my things, didn't you? I suppose that makes you clever, in a way.'";
	now Michael has the calipers.

To decide what text is Michael grabs the calipers:
	if Michael carries the calipers:
		decide on "Once again Michael produces the calipers";
	otherwise if the calipers are in the Workshop:
		now Michael has the calipers;
		decide on "From his pocket he produces the caliper instrument from the mill workshop";
	otherwise if the player has the calipers:
		now Michael has the calipers;
		decide on "He leans in close to you, and you can smell corruption on his breath like rotting oranges. 'I've
been wondering where this had gotten off to,' he murmurs in your ear, taking the caliper-like instrument from you";
	otherwise:
		now Michael has the calipers;
		decide on "'You really shouldn't leave my tools lying around, dear,' he says. 'They're awfully expensive'".

Section 2 - Fighting

Instead of attacking Michael with when Day 4 is happening:
	if the second noun is the meat hook:
		say "Before Michael or his guards can react, you whip the meat hook up in a vicious underhand arc, burying its point deep under your husband's breastbone. Michael shrieks and sinks to his knees, feebly plucking at the hook's wooden handle, which vibrates in time with his impaled heart. Blood suddenly pours from his mouth in a hot geyser, splattering onto the ground and onto your clothes. He looks up at you, gasping, and in his eyes you see a feeble, flickering spark of identity, one last dying spark left of the man you once knew and loved -- and suddenly you realize:[paragraph break]He's there. In that body -- the body that you just killed. It's Michael you're looking at.[paragraph break]You have just killed your husband.[paragraph break]'...why...' he whispers, through a dark bubble of blood.[paragraph break]But you cannot answer. You are too busy screaming.";
		end the story saying "You have gone utterly mad";
	otherwise:
		say "Without even blinking, Michael backhands you hard enough to send sparks across your vision. 'Silly bitch,' he sneers. 'There's nothing you can do to hurt me.'".

Instead of throwing a strange mirror at Michael when Michael Inspects is happening:
	say "Michael's arm whips out and snatches the mirror out of the air. 'Why thank you,' he says, bowing mockingly.";
	now Michael has the noun.

Instead of throwing something at Michael when Day 4 is happening:
	say "Michael easily sidesteps the clumsily thrown [noun]. 'Silly bitch,' he jeers, 'there's nothing you can do to hurt me.'";
	now the noun is in the location.

Section 3 - Mirrors

Instead of dropping a strange mirror when Michael Inspects is happening and Michael is visible:
	say "[The noun] clatters loudly to the floor.[paragraph break]'My, my, how brave and insolent,' sneers Michael. 'Now pick it up and give it to me before I hurl your fucking corpse from the top of this lighthouse.'";
	now the noun is in the location.

Instead of giving a strange mirror to Michael when Michael Inspects is happening:
	say "'Ah, thank you,' says Michael, taking [the noun] from you. 'I'd been told you'd stolen one of these.'";
	now Michael has the noun.

Instead of inserting something into the receptacle: if the real mirror is in the receptacle, say "There's not enough room in the strange device for the mirror labeled #3."; otherwise say "'Don't touch that,' snaps Michael, pushing you sharply back.".

To decide which strange mirror is the best mirror in (M - list of strange mirrors):
	if the real mirror is listed in M, decide on the real mirror;
	if M3 is listed in M, decide on M3;
	if the number of entries in M is greater than 0, decide on entry 1 of M;
	decide on M5.

To have Michael check out his best mirror:
	let B be a strange mirror;
	now B is the best mirror in the list of strange mirrors carried by Michael;
	if B is not M5:
		say "Michael pauses, glances down at [the B] in his hand, then smirks at you. 'But of course, there's no telling where else you've been poking around, what you might have gotten your dirty little hands on, hmm?'[paragraph break][Michael grabs the calipers]. He applies the instrument to [the B], and frowns as he checks the readout.[paragraph break]";
		if B is ceremonial:
			say "Then he smiles. 'Well, that's that then,' he says, placing [the B] into the receptacle. He nods toward the guards, who seize you and begin dragging you down the stairs.";
			now B is in the receptacle;
			now the goal of Michael is summon;
		otherwise:
			say "'This is not the correct mirror, of course,' Michael says, putting it away, 'You're beginning to bore me, woman. Give me the real mirror, now.'";
			now the goal of Michael is gimme;
	otherwise:
		say "GIMME! GIMME!".

Part 5 - Michael Demands

Michael Demands is a scene. Michael Demands begins when the goal of Michael is gimme
. Michael Demands ends when the goal of Michael is not gimme.

Instead of giving a strange mirror to Michael when Michael Demands is happening:
	say "'That's more like it,' says Michael, taking [the noun] from you.";
	now Michael has the noun.

When Michael Demands begins:
	say "He turns to you and holds out his hand. 'Your little game is over now, woman, and you've lost. Give me the mirror now.'".

Every turn during Michael Demands:
	if Michael has a strange mirror:
		have Michael check out his best mirror;
	otherwise if Michael Demands has been happening for 1 turns:
		say "With a sudden, vicious snarl of hatred, Michael lunges forward and grabs you, shaking you brutally. 'The mirror, you insolent bitch!' he roars. 'Give it to me, damn you!' Without waiting for your answer, he whirls you around and slams you against the side of the device. A metal flange cuts deep into your lower back, and you scream in pain.[paragraph break]'I'll make you scream; you'll scream your throat to bloody tatters!' Michael gloats, and with a sudden surge of strength he bends you backward over the painfully-angled device. Something snaps in your back. A sickening numbness washes over your legs like warm, viscous water.[paragraph break]Michael pulls you off the device -- the flange makes a horrible sucking noise at it comes out of your back -- spins you once more, and sends you hurtling across the room into one of the great floor-to-ceiling windows. Glass cracks and shatters outward, and the next instant you are plummeting to earth surrounded by a rain of glittering shards. The last sight you see before striking the jagged rocks below is the top of the lighthouse rushing away from you, and your husband's face looking down after you, his mouth stretched open in a demonic fit of laughter, his mad, alien eyes rimmed with red.";
		end the story saying "You have died";
	otherwise:
		say "Michael glares at you with impatience. 'Give me the mirror, woman,' he hisses into your face. 'Don't
make me damage you...'".

Part 6 - Michael Summons

Michael Summons is a scene. Michael Summons begins when the goal of Michael is summon. Michael Summons ends when the goal of Michael is not summon.

When Michael Summons begins:
	say "'It's time to clue you in to just what's been going on around here,' Michael says, following behind you. 'First hand. I think you'll find it quite... enthralling.'[paragraph break]You are dragged bodily down to the foot of the lighthouse and around to the rocky outcropping, where an island of flesh floats just beyond the breakwater's tip. The guards shove their way through the crowds of robed supplicants, carrying you to the island's center. They force you to your knees and, despite your best efforts at escape, manhandle you into a pair of handcuffs looped through an iron ring set in a heavy stone block. The block is so low, you are forced to remain kneeling in the squelchy muck, craning your neck to watch the orgiastic ceremoney taking place... and your husband -- no, you tell yourself, not your husband; the creature that your husband has become -- leading the terrible rites.";
	now the initial appearance of Michael is "Michael stands in the center of it all, leading the hellish rites.";
	now Michael is in Flesh Island;
	now the player is in Flesh Island.

Jeffrey is a man. Jeffrey is in Flesh Island. Understand "boy" as Jeffrey. The initial appearance of Jeffrey is "Lashed to a stake in the center of the island is a young boy.". The description of Jeffrey is "A skinny, tow-headed boy of eight or so, he bears all the markings of a recent victim of trauma. His face is smudged with dirt, his wrists are raw and red from the tight bindings, and his eyes are shadowed with deep, purple half-circles. For all this, however, you instantly recognize his face from the newspaper story: it's Jeffrey Greer, the boy who was kidnapped two days ago.". Instead of untying Jeffrey: say "Quickly you untie the bonds holding the boy to the stake; as his hands slip free he jumps away from you and eyes you warily. Then, sniffling and rubbing his arms, he runs to the edge of the island, hops over onto the breakwater and starts sprinting home."; now Jeffrey is nowhere.

Instead of doing something other than waiting or looking or taking inventory or examining when Michael Summons is happening, say "A booted foot slams cruelly into your ribs. 'Keep still, bitch!' snarls the guard.".

Report waiting when Michael Summons is happening: say "You wait, helplessly."; stop the action.

Table of Michael's Incantations
message
"Michael takes up a torch from one of the crowd. Holding it high above his head, he turns to the lighthouse and intones:[bold type]'Iach! That Which May Not Be Named, I call upon Thee! Formless Drifter of the Gulfs Between, I summon Thee!'[roman type]"
"[bold type]'I cast aside the Seals! I throw open the Gates!'[roman type][paragraph break]Michael traces a mystic sigil in the air in front of him with the flaming torch. The flames seem to hang for a moment in strange patterns before twisting away into nothing.[paragraph break][bold type]'OHODOS - SCIES - ABYSSON!'[roman type][paragraph break]The torch flares up with a roar, and the ocean waves seem to respond with sudden, inexplicable fury, crashing brutally against the island.[paragraph break]The boy cries pitifully, his sobs going unheeded by the chanting cultists and the raging storm."
"Michael turns his back on the lighthouse, facing out to sea.[paragraph break][bold type]'To the East, where the Spawning Chaos seethes and suppurates within the Crucible of Grum, from whose bursting pustules arise the Million Unseeable Forms, I summon Thee!'[roman type]"
"Michael makes a quarter-turn to his left.[paragraph break][bold type]'To the North, where the Howling Hunger sweeps invisibly across the Yellow Plains and gnaws upon the entrails of the pious, I summon Thee!'[roman type][paragraph break]A monstrous bolt of lightning licks down from the sky and strikes the sea just north of the island, sending a spume of steam and boiling water fifty feet into the shrieking sky. Screams of fear and rapture erupt throughout the pressing crowd, almost inaudible beneath the deafening peal of thunder."
"Michael isn't even fazed. He makes a half-turn to the right and continues:[paragraph break][bold type]'To the South, where the Seven Corpulent Sultans of Slaas'tha stand in judgment over the Heretics of Kron, and force their vile copulations upon the repentant, I summon Thee!'[roman type] [paragraph break]Another lightning bolt, this time striking just south of the island, and another spume of water. The crowd begins to writhe and gibber madly, like a single, plasmic organism."
"Michael makes a three-quarter turn to his left, coming all the way around to face the lighthouse once more.[paragraph break][bold type]'To the Ultimate West, wherein lies the Void That Conquers All, I summon Thee!'[roman type][paragraph break]The top of the lighthouse begins to glow with an unwholesome, violet light. A low, ominous vibration creeps up from the ground, crawling up through your bones and reverberating painfully in your teeth."
"The air around the lighthouse is rippling now. Several cultists fall convulsing to the mud; others are screaming in strange, strangled tongues. The earth shakes, and the air is split by a high-pitched harmonic ringing, like a crystal about to shatter.[paragraph break]Michael raises the torch, preparing to thrust it into the pyre at the child's feet. He throws his head back and shrieks directly into the eye of the storm:[paragraph break][bold type]'IACH! PIOTH XENOBETHAKLES! ULUTUK FH'TAGHN!! BY THE KEYS OF IOK-SOTOT I NAME THEE![paragraph break]'!!! IALDABAOLOTH !!! COME FORTH !!!'[roman type][paragraph break]The boy cries pitifully, his sobs going unheeded by the chanting cultists and the raging storm."

To decide which text is Michael's next utterance:
	repeat through the Table of Michael's Incantations:
		if there is a message entry:
			let m be the message entry;
			blank out the whole row;
			decide on m;
	decide on "blank".

Every turn during Michael Summons:
	let u be Michael's next utterance;
	if u is not "blank":
		say "[u][paragraph break]";
	otherwise if the real mirror in the receptacle:
		say "With a triumphant shout, Michael plunges the torch into the kindling piled up around the little boy's feet. You turn away as the child's screams rise over the sound of crackling flames. The ringing sound reaches a crescendo. The sky splits like a rotted shroud, and the squirming, bubbling chaos of Ialdabaoloth pours through. The earth withers under the unspeakable malevolence of Its great, red-rimmed eye, and all of mankind are engulfed and encysted within the necrotic folds of the Womb of Nehilim.[paragraph break]It is a dark time for everyone.";
		end the story saying "The world's doom is complete";
	otherwise:
		say "What happens next is rather unexpected.[paragraph break]The high-pitched ringing sound reaches a crescendo, and without warning the upper half of the lighthouse explodes violently in a boiling fireball of violet flames. For a moment, Michael's lunatic grin of triumph remains frozen in place, licked by the purple radiance, not yet cognizant that the ritual has gone wrong. In the next instant, however, he is stricken.[paragraph break]'The mirror...' he whispers hoarsely.[paragraph break]Bits of burning debris are raining down on the island. The cultists fall back in panic and start pushing at each other to get off the island and escape. Many are pushed off into the water, where clusters of ropy, jellyfish-like tentacles immediately drag them screaming beneath the waves. A burning chunk of masonry strikes one of your guards in the head, and he drops to the mud next to you with a mass of chewed-spaghetti pulp where his face used to be. The other guard takes a quick, frightened look around, then bolts without a backward glance.[paragraph break]'Come back!' screams Michael. 'Come back, cowards!' But no one heeds him. With a strangled curse he turns and hurls the torch into the sea.";
		now the goal of Michael is flee.

Part 7 - Abandon Ship

Abandon Ship is a scene. Abandon Ship begins when the goal of Michael is flee. Abandon Ship ends when the player is not in Flesh Island.

When Abandon Ship begins:
	now the robed cultists are nowhere;
	now the robed guards are nowhere;
	say "The horrible, fleshy ground shudders beneath you. Bubbles begin to boil up around the island's edges.[paragraph break]'You -- ' Michael snarls at you, his voice a barely intelligible choke. The malice pouring out of his expression is almost more than you can bear to look at. 'If I had the time I'd gut you right here and now -- ' suddenly the ground lurches slightly, and Michael smiles. 'But perhaps I won't need to.' With a mocking bow he strides past you and hops over to the shore. 'I'm sorry I can't stay around to watch you die,' he calls over his shoulder, 'but I have some rather urgent business to attend to.' The next moment he is gone, running down the breakwater toward town.";
		
Table of Sinking Island Messages
message
"The boiling is becoming more violent. You also notice that the tide seems to be striking the island a bit higher than before, even though the waves themselves aren't getting any taller."
"The island is definitely sinking now."
"Not much time left; the water is lapping up almost to the island's center, and the gap between the island and the rocky spur is nearly too wide to jump across."

To decide which text is the next island message:
	repeat through the Table of Sinking Island Messages:
		if there is a message entry:
			let m be the message entry;
			blank out the whole row;
			decide on m;
	decide on "blank".

Every turn during Abandon Ship:
	let m be the next island message;
	if m is not "blank":
		say "[m][paragraph break]";
	otherwise:
		say "With a final, shivering heave, the island of flesh sinks beneath the waves, taking you along with it. The vicious undertow drags you under instantly; brine fills your mouth and nostrils. You have precious little time to drown, however, before the gelatinous tendrils from below snake around your throat and ankles, pulling you down to a fate far worse...";
		end the story saying "You have died".

Part 8 - Michael Flees

Michael Flees is a scene. Michael Flees begins when the goal of Michael is flee. Michael Flees ends when Michael Coughs begins.  Michael Flees has numbers called strangle and confound.

When Michael Flees begins:
	now the initial appearance of Michael is "Michael -- or rather, the thing that has possessed Michael's body -- is standing here.";
	now the notion of the Town Square is "Michael looks at you and smiles. It is not a particularly pleasant smile. He walks over to the obelisk and places his hand against the bloodstained stone, then mutters something guttural under his breath. The twisted hieroglyphs begin to shine with an eerie phosphorescence which quickly brightens and envelopes Michael. His form wavers, then becomes transparent, and when the light fades he has disappeared.";
	move Michael to the Burial Mound.

After going to the Town Square when Michael Flees is happening for the first time:
	now the glow of the obelisk is 3;
	continue the action.

Instead of touching the obelisk when the glow of the obelisk is greater than 0:
	say "As your fingers touch the gore-streaked stone, the green light grows brighter, fanning out to envelope you. The odor of rotting fruit briefly assails your nostrils; your vision streaks, then blurs; there is the sound of rushing air, and when your eyes clear, you are somewhere else...";
	now the player is in the Burial Mound;
	now the glow of the obelisk is 0;
	now the strangle of Michael Flees is 1;
	now the confound of Michael Flees is 0.

Instead of attacking Michael with when Michael Flees is happening, try attacking Michael. Instead of attacking Michael when Michael Flees is happening, say "Without even blinking, Michael backhands you hard enough to send sparks across your vision. 'Silly bitch,' he sneers. 'There's nothing you can do to hurt me.'".

Instead of giving the wedding ring to Michael when Michael Flees is happening, try showing the wedding ring to Michael. Instead of showing the wedding ring to Michael when Michael Flees is happening for the first time:
	say "There is one chance -- if you can only somehow reach whatever weak flicker of humanity still survives within that shell; if the person who was your husband still exists somewhere, buried beneath the part that is Croseus Verlac...[paragraph break]Silently, you raise up your left hand, your wedding ring gleaming softly in the strange, green light.[paragraph break]Michael is transfixed. He seems to want to recoil from the sight, yet is somehow simultaneously drawn to it. Suddenly, his face crumbles, the madness and stoic evil falling away to reveal confusion, fear, vulnerability and anguish -- all superimposed upon the malevolent features of Croseus, struggling to regain control.";
	record "show-ring" as accomplished;
	now the strangle of Michael Flees is 2;
	now the confound of Michael Flees is 3.

Instead of showing the ring to Michael when Michael Flees is happening:
	say "You've shown him the ring once already; it's done all the good it's going to do.".

Instead of showing the amulet to Michael when Michael Flees is happening, try giving the amulet to Michael. Instead of giving the amulet to Michael when Michael Flees is happening:
	if the confound of Michael Flees is 0:
		say "You can't; not while he's strangling you to death.";
	otherwise:
		say "In his moment of hesitation, you see your chance; straining against his choking grip, you slip the amulet's cord around Michael's neck, letting the silver pendant drop to his chest.[paragraph break]Instantly Michael begins convulsing, arching his back and clawing at his chest. His jaws stretch open as if to release a howl of torment, but instead of voice, a thick, ropy stream of ectoplasmic mist pours from his throat. It pools into the center of the room, roils about, then coalesces into a human form -- the vaporous, half-rotted apparition of Croseus Verlac himself!";
		record "give-amulet-2" as accomplished;
		now the goal of Michael is cough;
		move the ghost to the Burial Mound.

Every turn during Michael Flees:
	if the glow of the obelisk is greater than 0:
		if the obelisk is visible, say "[if the glow of the obelisk is greater than 1]The obelisk is still glowing brightly[otherwise]The green phosphorescence fades away; the obelisk is only dark stone once again[end if].";
		decrease the glow of the obelisk by 1;
	otherwise if the confound of Michael Flees is greater than 0:
		if the confound of Michael Flees is 2:
			say "For just a moment, he is almost back with you; his features soften, his grip around your throat weakens. For just a moment, the thing that possesses him falters and loosens its hold.";
		if the confound of Michael Flees is 1:
			say "Then, it is gone. Michael shudders, shakes his head as if to clear it of a fog; and when he turns
back to you, his eyes burn with the red-rimmed madness of Croseus Verlac.";
		decrease the confound of Michael Flees by 1;
	otherwise if the strangle of Michael Flees is greater than 0:
		if the strangle of Michael Flees is 1:
			say "Suddenly Michael lunges forward and grabs your arms. He shakes you, causing your head to whip back and forth and your teeth to click painfully together.[paragraph break]'Bitch -- ' he hisses, ' -- rotten, filthy bitch -- you never give up, do you? You've foiled me for the last time! There's no way to fix what you've undone tonight, but by all the unholy spawn of darkness I will put you in a stone cold place for it!!' And his hands lock tightly around your
throat and begin to squeeze.";
		if the strangle of Michael Flees is 2:
			say "Grimly, Michael continues to strangle you...";
		if the strangle of Michael Flees is 3:
			say "His iron grip has closed your throat completely; you cannot even draw in enough breath to cry for mercy. As inky black flowers bloom in your vision, you desperately search Michael's eyes for some sign, some glint of the person he once was, the husband you knew and loved. Sadly, you find nothing. As drool from his crazed rictus grin spatters down on your face and the world goes black, the last sight you see is the madness burning in Michael's red-rimmed eyes.";
			end the story saying "You have died";
		increase the strangle of Michael Flees by 1.

Part 9 - Michael Coughs

Michael Coughs is a scene. Michael Coughs begins when the ghost is in the Burial Mound. Michael Coughs ends when the ghost is nowhere.

Every turn during Michael Coughs:
	let m be the next thing out of the ghost's mouth;
	if m is "die":
		say "The tendrils wriggle toward you like eels, and you barely resist as they embrace you. There is nothing left to fight for. As the mist creeps down your throat and begins to drown you in its foetid breath of graves, you welcome the coming oblivion.";
		end the story saying "You have lost everything";
	otherwise if m is not "blank":
		say "[m].".

When Michael Coughs ends:
	now the day of the player is 5.

Book 5 - Epilogue

Day 5 is a scene. Day 5 begins when the day of the player is 5.

When Day 5 begins:
	say "Silence reigns.";
	pause the game;
	say "There passes some time that your memory cannot account for; a brief period of blackness and oblivion, you and your unconscious husband, together in the subterranean vault. Perhaps you were unconscious as well; you cannot remember. At some point you become conscious again. You lift Michael to his feet, putting his arm around your shoulders, and the two of you stagger up the titan stairs to the surface. The ground begins rumbling just as you are exiting the house, but by that time Michael has recovered some of his senses and can walk a bit faster.[paragraph break]You make it down to the bend in the road overlooking the town just in time to see the town square collapse, the vile obelisk sinking into the earth. Several buildings are dragged down along with it. A gas pipe ruptures in the courthouse, sending a gout of flame high into the air, and soon the entire town is burning.[paragraph break]Behind you, a muffled explosion and a sudden warmth against your back bespeak a similar end to the Verlac family mansion. For a moment you find yourself almost turning back, driven by instinct to rescue your belongings -- but you stop. You turn away. And while Michael rests, you stand at the overlook and watch the sparks rise like fireflies, mingling with the stars in a clear, cloudless sky.";
	record "banish-ghost" as accomplished;
	pause the game;
	display the boxed quotation "
	He always returns to his blood.               
                           	
	-- Edward Verlac";
	show the current quotation;
	center "EPILOGUE";
	pause the game;
	now the player is in Fake Home.

Table of Epilogue Messages
message
"A cool wave of uneasiness washes slowly over you; you're not sure why."
"'Well?' Michael calls excitedly from downstairs. 'Have you looked yet?'"
"Michael calls up again, this time sounding slightly worried: 'Hon? Everything okay up there?'"
"A nameless, formless apprehension grips you suddenly, leaving you short of breath. Why are you so frightened, on what should be such a joyous occasion?"
"You can hear a fly buzzing around, right around your head."

To decide which text is the next Epilogue Message:
	repeat through Table of Epilogue Messages:
		if there is a message entry:
			let m be the message entry;
			blank out the message entry;
			decide on m;
	decide on "blank".

Every turn during Day 5:
	let m be the next Epilogue Message;
	if m is not "blank":
		say "[m]."

Fake Home is a room with printed name "Home". "You are home, and it is a momentous event. Downstairs, Michael is waiting for you to bring him the wondrous news. To the east is the bedroom you both share, and to the north is your bathroom."

Fake Bedroom is a room. Fake Bedroom is east of Fake Home. Before going east from Home, say "There's nothing important in the bedroom at the moment." instead.

Fake Bathroom is a room with printed name "Bathroom". "Your bathroom; an ordinary place. A normal, safe, familiar place.". Fake Bathroom is north from Fake Home.

The home pregnancy test is a thing in Fake Bathroom. The initial appearance of the home pregnancy test is "On the counter is a home pregnancy test." The description of the home pregnancy test is "It's an ordinary pregnancy test, the kind you can get at any drugstore; the kind with the little window that turns pink if you're going to have a baby.".

The pregnancy result is a part of the home pregnancy test. Understand "window" as the pregnancy result. Instead of examining the pregnancy result, spill the beans. To spill the beans:
	say "The window is pink. The test is positive.[paragraph break]From downstairs, you can hear Michael joyfully talking to himself:[paragraph break]'Oh, I hope it's a little girl,' he says. 'I've always wanted to have a little girl.'";
	end the story saying "You have won ... for now".

[
Home
You are home, and it is a momentous event. Downstairs, Michael is waiting for you to bring him the
wondrous news. To the east is the bedroom you both share, and to the north is your bathroom.

A cool wave of uneasiness washes slowly over you; you're not sure why.

Your score has just gone up by fifteen points.


]





Volume 3 - Regions & Backdrops

Book 1 - Regions

The Woods is an region. Scenic View, Deserted Lane, Path Behind the House, Family Plot and Down the Road are in The Woods.

Book 2 - Backdrops

The rooftops are a backdrop in the Town. The rooftops are in Dark Corner. "The crumbling buildings of Anchorhead, with their ubiquitous peaked rooftops and ancient, leaning gables, cluster thickly around you in every direction."

The cobblestones are a backdrop in Town. "The cobblestones are slick from the rain and worn with many centuries' passage." Understand "street" as the cobblestones.

The sky is a backdrop in Town. "The sky is an unbroken blanket of seething gray clouds in every direction."

The sea is backdrop. "The sea is the color of old pewter, surging and chopping restlessly beneath the clouds.". Understand "ocean" as the sea. The sea is in Narrow Beach and Wharf.

The river is backdrop. "The Miskaton's waters are sluggish and dark. Some sort of oily film coats the surface, reflecting back ghostly swirls of color.". Understand "water", "miskaton" and "film" as the river. The river is in Whateley Bridge and Under the Bridge. Instead of searching the river, say "You can make out a shadowy reflection of yourself in the slowly rippling water.".

The open road is backdrop in The Woods. "Out here, beyond the boundaries of the city proper, the cobblestones have given way to unpaved dirt.".

The trees are backdrop. They are in The Woods. The trees can be familiar. They are not familiar. Understand "woods" as the trees. "The woods are ancient, thick with undergrowth and full of shadows. Branches creak, leaves rustle beneath unseen, half-imagined footsteps, and strange birdcalls echo through the trees.".

Volume 4 - North of the River

Book 1 - Office Environs

Part 1 - Outside the Office

Office Exterior is a room. The printed name of Office Exterior is "Outside the Real Estate Office". "A grim little cul-de-sac, tucked away in a corner of the claustrophobic tangle of narrow, twisting avenues that largely constitute the older portion of Anchorhead. Like most of the streets in this city, it is ancient, shadowy, and leads essentially nowhere. The lane ends here at the real estate agent's office, which lies to the east, and winds its way back toward the center of town to the west. A narrow, garbage-choked alley opens to the southeast." Instead of going nowhere from Office Exterior, say "The street goes west from here. You can enter the office to the east or the alley to the southeast.".

The office door is a closed locked door and scenery. The initial appearance of the office door is "The office door is [if the office door is open]open[otherwise]closed[end if]." It is east of Office Exterior and west of Office Interior. "[if the player is in Office Exterior]The door has a glass front with the name of the real estate company -- Benson & Brackhurst -- stenciled across it[otherwise]You can make out the words 'tsruhkcarB & nosneB' stenciled across the glass. There is a latch on this side which can be turned to lock or unlock the door[end if].".

Narrow Beach is a room. "This narrow strip of beach is tucked away between two outcroppings in the predominantly rocky shoreline, accessible only from a steep, muddy slope to the west. The sand is filthy and strewn with rocks, seaweed, litter and other bits of storm-tossed detritus.[paragraph break]Near the bottom of the slope, a sewage outflow pipe juts out over the beach, about three feet above the ground. A thin stream of acrid-smelling sewer water trickles out over the lip of the pipe, forming a puddle in the sand."

Part 2 - Alley

The Alley is a room. "This narrow aperture between two buildings is nearly blocked with piles of rotting cardboard boxes and overstuffed garbage cans. Ugly, half-crumbling brick walls to either side totter oppressively over you. The alley ends here at a tall, wooden fence.[paragraph break]High up on the wall of the northern building there is a narrow, transom-style window. [if the cans are moved]One of the garbage cans has been pushed up against the wall directly underneath it.[end if]". The Alley is southeast from Office Exterior.

The boxes are scenery in the Alley. Understand "box" or "cardboard" as the boxes. "The boxes are filthy, slimy and soaked with rain." The wall is scenery in the Alley. Understand "brick" as the wall. "It's just an ordinary-looking wall."

The fence is scenery and a door. It is closed. It is east of the alley and west of Narrow Beach. Instead of examining the fence: say "One of the boards seems to be loose down at the bottom; you could probably just squeeze through."; now the fence is open. Instead of opening the fence, say "That's not something you can close.". Instead of closing the fence, say "That's not something you can close."

The window is a door and scenery. It is closed. It is north of the Alley and south of the File Room. "It's about eighteen inches wide and a foot tall, with hinges along the top that allow it to swing out. It's currently [if the window is open]open[otherwise]closed[end if]". Windoward is a direction. Understand "window" as windoward.

The cans are an enterable supporter and scenery in the Alley. The cans can be moved. "The metal garbage cans are stuffed to overflowing with slowly decomposing refuse.". Report entering the cans:
	say "You clamber onto the wobbling garbage can, precariously balanced[if the cans are moved]. You can just reach the lower edge of the window from here[end if].";
	rule succeeds.

To describe alley exits: say "You can only exit the alley to the northwest[if the fence is open] or crawl through the fence to the east[end if][if the cans are moved]. With those cans in place, you might also be able to give the window a try[end if].".

Instead of going nowhere from the Alley, describe alley exits. Instead of going west from Alley, describe alley exits. Instead of going east from the Alley when the fence is closed, describe alley exits.

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

Before searching the window:
	if the player is in the File Room:
		say "You can see the damp, dirty alley outside." instead;
	if the player is not on the cans:
		say "The window is too high." instead;
	if the cans are not moved:
		say "Hmm. You still can't quite reach, because the garbage can is too far away from the wall. Perhaps if you pushed it closer..." instead;
	say "Peering in through the foggy glass, you can see what looks like a file room." instead.

Before opening or closing the window:
	if the player is enclosed by the Alley:
		if the player is not on the cans:
			say "The window is too high." instead;
		if the cans are not moved:
			say "Hmm. You still can't quite reach, because the garbage can is too far away from the wall. Perhaps if you pushed it closer..." instead.

Before entering the window:
	if the player is enclosed by the Alley:
		if the player is not on the cans:
			say "The window is too high." instead;
		otherwise if the cans are not moved:
			say "Hmm. You still can't quite reach, because the garbage can is too far away from the wall. Perhaps if you pushed it closer..." instead;
	if the window is not open:
		say "(first opening the window)[command clarification break]";
		now the window is open;
	if the player is on the cans:
		try silently exiting;
	continue the action.
		
Before going north from the Alley:
	try entering the window instead.

Instead of going down from the Alley when the player is on the cans:
	try exiting.

Part 3 - File Room

File Room is a room. "Peering through the murk, you can make out the blocky outlines of filing cabinets lining the walls and a doorway to the west. A window high up on the south wall lets in a very faint illumination."

The file cabinet is scenery in the File Room. Understand "file" and "files" and "cabinet" as the file cabinet. "There must be hundreds of files here, too many to browse through. You'll have to look up something specific if you want to find anything." The consult table of the file cabinet is the Table of File Cabinet Knowledge. The consult empty message of the file cabinet is "You don't find anything filed under [the topic understood]".

Table of File Cabinet Knowledge
topic	message	rule
"verlac"	"Strange; the file on the Verlac property has been cleaned out. Title, deed, all the papers, all of it gone. There is, however, a set of keys tucked down in the hanging folder. You quickly pocket them."	pocket the keys rule

The filing rules are a rulebook. A filing rule (this is the pocket the keys rule):
	if the location of the house key is nowhere:
		now the house key is on the keyring;
		now the cellar key is on the keyring;
		choose row 1 in the Table of File Cabinet Knowledge;
		now the message entry is "You've already perused that file once";
		blank out the rule entry;
		record "find-keys" as accomplished.

Every turn when the player is in File Room or Office Exterior: if a random chance of 1 in 4 succeeds, say "You can hear a fly buzzing around, somewhere in [one of]this[or]the next[at random] room.".

Part 4 - Office Interior

Office Interior is a room. The printed name of Office Interior is "Office". "Pallid gray light trickles in through the drawn blinds. The office is deserted, papers still scattered across the top of the desk. The front door lies west, and the file room lies east.

Sitting on the corner of the paper-strewn desk are a telephone and an answering machine." Office Interior is west of File Room.

The papers are scenery in Office Interior. "Sifting through the paperwork, you find nothing that catches your attention." Instead of taking the papers, say "You're not here to burglarize the place.".

The desk is scenery in Office Interior. "The top of the desk is littered with paperwork -- notes, messages, files, etc.; the way most desks tend to get at the end of a busy day. A telephone sits on one corner, next to a digital answering machine. There is a small drawer to one side."

The small drawer is scenery and a closed locked openable container in Office Interior. "You can't see inside, since the drawer is closed.". After opening the small drawer for the first time: record "small-drawer" as accomplished; continue the action.

The hastily written letter is a thing in the small drawer. The description of the hastily written letter is "It consists of several pages torn from a yellow legal pad and stapled in the corner; each page is covered on both sides, top to bottom, with erratic, frightened handwriting. It is dated two days ago -- the day you arrived in Anchorhead.". The printing of the hastily written letter is "To whom it may concern --[paragraph break]My name is Claudia Benson, and I attest that I am of sound mind and body, at least for what little time I have left.[paragraph break]If you are reading this anywhere within the city limits of Anchorhead, be aware that your life is in grave and immediate danger. Nearly all of the inhabitants of this city are members of a secret cult that has thrived since before the first settlers arrived here in the early 1600s and is still strong today.  Its members are fanatical and quite insane, and will kill anyone who learns their secrets. I received a phone call early this morning which I believe is a threat to my life; I assume the cult somehow discovered that I was planning to divulge information to an outsider and now plans to silence me. In case I don't make it, I am leaving this testimony for someone to find; hopefully it will be someone who can put a stop to this madness once and for all.[paragraph break]The cult originally evolved from the rituals of the ancient Misquat Indian tribe that once lived in this region. Although this tribe is now extinct, its beliefs have been passed down relatively unchanged through generations of settlers for nearly four centuries. These beliefs center around the worship of some sort of demon or god from the outer reaches of space, which visited the earth millions of years ago and will return some day to wreak terrible destruction. I am unclear on the exact details as there is very little historical information available on this tribe, unless the University is hiding material from me, which I am half-convinced it may well be.[paragraph break]The ringleaders of this cult are and have always been the Verlac family. Every second generation a male Verlac is born, and the role of high priest is passed down from grandfather to grandson, following some arcane ritual of ascension. There is a persistent legend that this ritual somehow involves a transmigration of souls -- that, in fact, all male Verlacs are actually the reincarnation of the original founder of the American line. Although this is obviously nothing more than local superstition, the legend has such a hold on the people of the region that it may have become a self-perpetuating delusion on the part of the members of the Verlac family, each male child honestly believing that he is his own grandfather reborn. Edward Verlac rejected this obscene birthright, and I believe that the townspeople drove him to insanity for it.[paragraph break]Regardless of the truth behind these legends, the cult is planning to act very soon. In the 1920s, Edward's grandfather Mordecai Verlac began preaching that the return of the 'Nameless God' was imminent -- specifically, that it would occur the day after tomorrow. He re-opened the defunct paper mill, converting it into a factory to build some sort of device, a 'beacon' with which to facilitate the Nameless God's entry into this world. This device is very nearly finished, and in two days they will be ready to enact their great ritual -- what they call the 'Blessed Event'. It will most likely entail the wholesale slaughter of every non-cultist man, woman and child in the city. The child abductions of the past few years were most likely preparatory sacrifices perpetrated by the cult, and there is no reason to believe that the killing will stop once their great ritual is complete.[paragraph break]If you are, in fact, the young man who planned to move into the Verlac estate, you must be careful. The cult is almost certainly watching your every move, and will attempt to induct and brainwash you into their cult or, failing that, murder both you and your wife. I had hoped to warn you upon your arrival; however, as the message on my answering machine this morning attests, I don't have much time left. With any luck, I'll be out of the city by tonight. If I don't make it, please try to stop these people. This key might help -- I managed to dig it out our old property file on the lighthouse. I know they consider that building important for some reason. Do what you can with it. And be careful. These cultists are a menace, inbred and insane to the last man, and no one will be safe until they are wiped off the face of the earth.[paragraph break]Good luck, and be careful.[paragraph break]-- Claudia Benson".

The tarnished bronze key is a passkey in the small drawer. The description of the tarnished bronze key is "You pick up the tarnished bronze key. It is heavy and apparently very old, crusted thin rime of verdigris.". The tarnished bronze key unlocks the great bronze door.

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
		say "For a while there is nothing but a quiet hiss, followed by intermittent skirls of strange-sounding static. It sounds like one of those annoying glitches where the caller hangs up but the machine keeps recording anyway. Then, barely audible through the static, you detect what sounds like a human voice whispering a single word:[paragraph break]'Verlac.'[paragraph break]The machine beeps.";
	if the answering machine is pristine:
		say "[line break]A brief shudder ripples up your back. You remember now, 'Verlac' is the name of this branch of
Michael's family.";
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

Book 2 - The Streets

Part 1 - Narrow Street

The Narrow Street is a room. "As the lane winds along from east to west, it narrows until the steep, jagged rooftops on either side of the street practically touch each other. To the south, a side street leads across Whateley Bridge toward the center of town, and a twisting lane leads up a hill to the northwest. A short flight of steps to the north leads down to the local watering hole[if the commotion is in Narrow Street].[paragraph break]There appears to be a commotion of sorts to the south, where a group of townsfolk have gathered[end if]." Narrow Street is west of Office Exterior.

Instead of going nowhere from the Narrow Street, say "The street goes east and west; you can also take a side street to the south, or go up a narrow, twisting lane to the northwest. The pub is down a short flight of steps to the north.".

Part 2 - Local Pub

The Local Pub is a room. "A dank, drafty old drinking hole lit by flickering, oil-burning lanterns. Smoke collects in greasy pools among the rafters, and shadows crowd thick around. The bar runs the length of the room to your right, while to the south a low doorway opens onto the street.

Mill workers and fishermen occupy a few of the tables, drinking beer or puffing grimly at long-stemmed pipes. Each is wrapped in his solitude, soaking up the general miasma of dreary fatalism." Instead of going nowhere from the Local Pub, say "The exit is to the south.". The Local Pub is north of Narrow Street.

The bar is scenery in the Local Pub. "A dark and dour expanse of wood, pitted and scarred and stained with the rings from over a hundred years' worth of slopping beer mugs."

The patrons are scenery in the Local Pub. "The patrons of this place are taciturn and grim. No one speaks. No one looks anyone in the eye. No one, in fact, even looks up from his beer. A heavy aura of resignation -- and, it almost seems, dread -- hangs palpably over the whole crowd." Understand "workers", "fishermen", and "people" as the patrons.

The lantern is a thing in the Local Pub. The lantern is unlit. Understand “lamp” as the lantern. "The lantern sitting on the table nearest you sputters fitfully, throwing distorted shadows across the wall.". The description of the lantern is "It's an old-fashioned hurricane lamp, with a tall glass chimney to protect it from the wind. The cotton wick burns fitfully in its reservoir of cheap oil.".

Instead of snuffing the lantern:
	if the lantern is unlit:
		say "The lantern isn't lit." instead;
	otherwise:
		say "You blow the lantern out.";
		now the lantern is unlit.

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
	
Part 3 - Junction
	
The Junction is a room. "To the north, a gap in the crowded press of gloomy buildings opens onto a country lane, heading out over a grassy heath. The main street continues to the east, while to the northwest, over the top of a steep rise, you can just make out the vaulted rooftops of the university." The Junction is west of the Narrow Street. Instead of going nowhere from the Junction, say "The street goes east and northwest, or you can take the road out of town to the north.".

The rise is scenery in the Junction. "You can just see the tops of the ivy-covered brick walls from here.". Understand "university" as the rise.

Part 4 - Twisting Lane

Twisting Lane is a room. "The lane narrows here to little more than a badly cobbled sidewalk as it wends its way up through a series of tortuous bends and switchbacks. In some places, the street is so steep that steps have been cut into it, worn down over the years and slick with moss. Your progress is blocked at the top of the street by a [if graffiti is nowhere]blank [end if]brick wall." Twisting Lane is up from the Narrow Street. Twisting Lane is northwest from The Narrow Street. The Narrow Street is southwest from Twisting Lane. Down from Twisting Lane is nowhere. Southeast from Twisting Lane is nowehre.

Instead of going nowhere from Twisting Lane, say "You take a few tentative steps back down the lane, but it seems to lead only to a short switchback, bringing you right back to the brick wall. You're not entirely sure now, which direction leads back to the narrow street.". Before going west from Twisting Lane: if the graffiti is nowhere, try going north instead.

The brick wall is scenery in the Twisting Lane.

The graffiti is a thing. It is fixed in place. The initial appearance of graffiti is "Someone has sprayed graffiti across the wall in black spray paint.". The description of the graffiti is "It's a strange design done in black spraypaint; an upturned hand with an irregular triangle inscribed in the palm. Beneath it is drawn an arrow pointing roughly west, and following it with your gaze, you realize that it points directly at the narrow aperture of a sidestreet you'd never noticed before."

Part 5 - Hidden Court

Hidden Court is a room. "You had no idea this little courtyard even existed, cleverly tucked away amidst the confusing tangle of darker avenues. Although surrounded on all sides by steep rooftops and overshadowed by the ever- ominous clouds, this secluded circle somehow manages to convey a sense of peace and brightness, a safe harbor from the oppressive gloom pervading the rest of the town. To the south, a hanging sign marks a humble shop, while a sidestreet to the east leads back into the labyrinth.". Hidden Court is west from Twisting Lane.

The shop sign is scenery in Hidden Court. "It simply reads, in gaudily illuminated letters, 'The Cauldron'.".

Part 6 - The Cauldron

The Cauldron is a room. "A warm and pleasantly dim light surrounds you and suffuses this cozy little shop. The shelves are crammed with every conceivable variety of new age curiosity: books, crystals, pendants, charms, herbs, potions, incense, candles and -- sure enough, on a display stand right near the door -- decorative cast-iron cauldron-shaped paperweights. How cute. In the rear of the store, a lit display case contains several items of interest. The courtyard lies outside, to the north.". The Cauldron is south of Hidden Court. Before going south from Hidden Court, say "A silvery bell jingles as you open the door.". Before going north from the Cauldron, say "The old man waves as you leave. 'Come back soon,' he calls.".

The violin is a thing in the Cauldron. The initial appearance of the violin is "On the display case is a violin.". The description of the violin is "It's a gorgeous instrument -- the wood is a rich, polished mahogany, the scroll and fingerboard gleaming ebony. The strings almost seem to vibrate of their own accord, as if aching to be played.". Before taking the violin, say "It belongs to the proprietor, and besides, you don't know how to play it." instead.

The display case is a transparent container and scenery in The Cauldron. Instead of examining the case:
    say "The display case has a glass front and sliding doors in back that allow the proprietor to reach inside. Lined up inside the case are [list of things in the case]. Resting on top of the case is a violin.".

The paperweights are scenery in The Cauldron. "Mostly a lot of hokey, pseudo-spiritualist knick-knacks. Junk, really. Tourist souvenirs.".

The set of tarot cards is a thing in the display case. The description of the tarot cards is "A beautiful set of cards in a velvet-lined box. The top card, 'The Tower', has been turned up, allowing you to see the exquisitely detailed artwork. In this representation, the tower has been painted to resemble a lighthouse, broken by a bolt of lightning emanating from a great, red-rimmed eye. Two figures, a man and a woman, tumble from the tower's summit, cast lifelessly into the sea.".

The geode is a thing in the display case. The description of the geode is "A hemisphere of rough, gray stone, about the size and shape of a halved cantaloupe. Its center is a glittering cavity of violet crystals, thousands of sparkling, faceted stalactites and stalagmites inside a cave of colored glass.".

The amulet is a wearable thing in the display case. The description of the amulet is "It's an unassuming silver pendant hanging from a thin leather thong, fashioned in the shape of a tiny, upturned hand with a triangle inscribed within the palm. It reminds you a little of one of those cast pewter game pieces from Monopoly.".

The proprietor is a man in the Cauldron. Understand "man" as the proprietor. The initial appearance of the proprietor is "The proprietor watches you quietly from behind the display case." The description of the proprietor is "A fabulously thick and bushy tangle of moustache, beard and eyebrows frame the portly old proprietor's deeply seamed face. His eyes are kind, however, and his smile warm and ingenuous, and he seems content to watch you quietly with his hands folded across his considerable paunch as you browse through his shop.".

After asking the proprietor about:
	if the topic understood includes "amulet":
		if the amulet is in the display case:
			say "The proprietor reaches in through the back of the case and takes out the amulet. It spins slowly as he holds it up to the light.[paragraph break]'I think, perhaps, that he eventually found different. And I think, perhaps, that you will, too.' He leans forward and, before you can react, slips the leather thong around your neck. 'But you won't make the same mistake, will you, Miss? No. You go on and keep that, now. My treat. You may find it useful soon.'";
			try the player wearing the amulet;
			record "find-amulet" as accomplished;
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
	record "open-puzzle" as accomplished.

Book 3 - The University

Part 1 - University Court

University Court is a room. "Isolated and serene within its high, ivy-covered walls, Miskaton University represents this benighted town's single, if somewhat dubious, claim to cultural achievement. Founded some time in the early 1800s, the school's reputation and enrollment have diminished somewhat as Anchorhead drifts further and further into the abyss of provincial backwaterism. Still, it is generally recognized for its collection of folklore and esoteric mythology (one of the oldest and most extensive on the east coast). The Board of Deans was also kind enough to offer Michael a full professorship upon hearing of his recently discovered heritage and his plans to move into the estate. Ivory tower, perhaps, but at least they take care of their own.[paragraph break]There are numerous buildings surrounding this cobbled court, but the only one you are interested in is the library to the west, where Michael told you he'd be until he came back to the real estate agent's office to pick you up. Which, incidentally, he has not yet done.". Instead of going nowhere from University Court, say "Although these hallowed halls of learning probably hold a veritable trove of knowledge, you are no longer a student, and the only building you have any business in is the library.". University Court is northwest of the Junction.

Part 2 - University Library

The University Library is a room. "Shadows roost thickly in the vaulted ceiling, and small, green-shaded desk lamps cast pools of warm radiance here and there around the library's dim interior. You pause a moment to let the hushed peacefulness of this place soak in -- a welcome relief from the unsettling events of the day. An exit lies east, and a small alcove to the north houses the circulation counter.". Instead of going nowhere from the University Library, say "You may leave to the east, or approach the counter to the north.". The University Library is west of University Court.

A library book is a kind of thing. A library book has some text called author. A library book has some text called title. The printed name of a library book is "[italic type][title][roman type], by [author]". Some library books are defined by the Table of Known Library Books.

Table of Known Library Books
book	author	title	topic
Wheldrake	"Lord Wheldrake"	"N-Fold Transduction and the Space-Time Barrier"	"wheldrake"
Greene	"Warner Greene"	"The Righteous Invasion: a History of Indian/Settler Conflicts in the Colonial Period"	"greene"
Horne	"C. C. H. Horne"	"Mechanics of Metempsychosis"	"horne"
Frazer	"J. Arnsworth Frazer"	"A Historical Overview of Superstitions"	"frazer"

The rlamps are scenery in the University Library. Understand "reading" and "lamps" as the rlamps. "The lamps have curved, brass stands and frosted green shades; the kind of thing you'd expect to see on an accountant's desk in the 1930s.".

The desks are scenery in the University Library. "The desks are small but comfortable." Understand "reading desks" as the desks.

Michael is in the University Library.

Instead of going east from University Library when the player is holding a library book: say "You're not allowed to leave the library with the book.".

Part 3 - Circulation Desk

The Circulation Desk is a room. "A high counter divides the public portion of the library from the reserved stacks -- all the more esoteric and mysterious volumes from the university's collection. If anything, the area behind the counter is even more shadowy than the side you're on. The main reading area lies south.[paragraph break]Hanging on the wall next to the counter is a small, printed sign. Beneath the sign sits a heavy, dog-eared register, and sitting next to the register is a bell." Instead of going nowhere from the Circulation Desk, say "The alcove only opens to the south.". The Circulation Desk is north of the University Library.

The book sign is scenery in the Circulation Desk. "'All restricted books must be signed for on the register, and may not be removed from this building. Please have your faculty ID ready when you make your request.'"

The register is scenery in the Circulation Desk. "It's basically a log, recording what book was checked out, who checked it out, and when. There must be hundreds of names here.". Instead of reading the register: try examining the register. Check taking the register: say "That's library property." instead. The consult table of the register is the Table of the Reading Register. The consult empty message of the register is "You don't find that name on the register."

Table of The Reading Register
topic	message
"michael"	"Your husband's name is down at the bottom. The title of the book is [italic type]A Historical Overview of Superstitions in the Miskaton Valley Region[roman type] by J. Arnsworth Frazer, pub. 1906. Quite a mouthful."
"benson"	"Claudia Benson's name is up near the top of the page. She has checked out several books in the last few weeks: [italic type]A Historical Overview of Superstitions in the Miskaton Valley Region[roman type] by J. Arnsworth Frazer; [italic type]The Righteous Invasion: a History of Indian/Settler Conflicts in the Colonial Period[roman type] by Warner Greene; [italic type]Mechanics of Metempsychosis[roman type] by C. C. H. Horne; and [italic type]N-Fold Transduction and the Space-Time Barrier: a New Theory in Particle Physics[roman type] by Lord Wheldrake. Strange; you can't help but wonder why your real estate agent would have amassed such an esoteric reading list."

The bell is scenery in the Circulation Desk. "One of those little round bells with the button on top; you ring it for service.". Check taking the bell: say "That's library property." instead. Instead of ringing the bell: summon the librarian.

Volume 5 - North of Town

Book 1 - Mill Exterior

Part 1 - Mill Road

Mill Road is a room. "The road carries you across a desolate heath of gray, windswept grass. To the south, the black, jagged outline of Anchorhead's steep roofs and sharp, leaning gables cuts across the horizon. The road forks here to the west and east, heading across the railroad tracks in one direction, out toward the seashore in the other.". Instead of going nowhere from Mill Road, say "There's not much in that direction except the featureless, desolate heath.". Mill Road is north from the Junction. Before going west from Mill Road, say "As you cross the railroad tracks, the air becomes warmer, more dingy, and slightly more difficult to breathe.".

The heath is scenery in Mill Road. Understand "grass" as the heath. "The undulating heath stretches away to the west and northwest, an unending carpet of colorless grass."

The roofs are scenery in Mill Road. Understand "rooftops" and "town" as the roofs. "From this distance, all you can make out of Anchorhead are the leaning shapes of its rooftops, huddled in a thin, jagged line against the base of the hills to the south.".

The tracks are scenery in Mill Road. Understand "rails" and "railroad" as the tracks. "The tracks run down from the northeast and pass by the paper mill before bending west. They cross the Miskaton river some miles out of town.".

Part 2 - Mill Entrance

Mill Entrance is a room with printed name "Entrance to the Paper Mill". "The road turns southwest here and runs squarely through the front entrance to the old paper mill. A gate of heavy iron bars blocks the only opening into this charred fortress, although an overgrown path leads around the wall to the south. To the north, a rutted lane threads its way past a row of dilapidated shacks." Instead of going nowhere from Mill Entrance, say "The road goes north and east from here. The mill gate lies southwest, and an overgrown trail leads south.".

The pmill is scenery in Mill Entrance. Understand "paper mill" as the pmill. "The paper mill is a sprawling, box-like conglomeration of soot-stained brick, surmounted by blackened stumps of smokestacks that continuously belch fat, rolling clouds of smoke into the leaden sky.". Mill Entrance is west from Mill Road.

The iron gate is a closed locked door and scenery. Understand "bars" as the iron gate. The description of the gate is "The gate, a twenty-foot high barricade of narrowly spaced, thick, black, iron bars, is designed to roll horizontally, sealing off the entrance to the mill compound. It is currently shut and locked.  There are no guardhouses, no buzzers or intercoms, no apparent means of getting in or letting anyone inside know you want in; just this implacable gate in an unscalable wall.". The iron gate is southwest of Mill Entrance.

Part 3 - Shanty Town

Shanty Town is a room. "The road peters out at a wide clearing of rutted mud, flanked by uneven rows of decrepit, clapboard shacks. The town is quiet, almost deserted; only a few bits of loose tarpaper blowing listlessly in the wind betray the overall stillness.". Instead of going nowhere from Shanty Town, say "The only way out of here is south, back toward the Mill.". Shanty Town is north of Mill Entrance.

The shacks are scenery in Shanty Town. "All peeling paint, broken glass and missing shingles, the houses are poorly built and teetering on the verge of falling apart completely. They are arranged in a vague suggestion of rows on either side of the mud clearing, numbered #1 through #12 with those cheap little nail-up plastic numbers you can buy at hardware stores. Presumably, these denote each shack's 'street address'.".

The go-away-shack is scenery in the Shanty Town. Understand "1", "#1", "2", "#2", "3", "#3", "4", "#4", "5", "#5", "6", "#6", "7", "#7", "8", "#8", "9", "#9", "10", "#10", "12", and "#12" as the go-away-shack. "It looks run-down and weather-beaten, just like all the others.". Instead of knocking on the go-away-shack, say "No one answers. If anything, the whole town becomes even more still, as though holding its breath, hoping you'll go away.".

The knock-here-shack is scenery in the Shanty Town. Understand "11" and "#11" as the knock-here-shack. Instead of knocking on the knock-here-shack during Folks on the Bridge:
	say "After a moment or two of silence, you hear a furtive rattling, and the door opens a crack to reveal a woman's pale and haggard face. She stares out you with a mixture of trepidation and mistrust.";
	now the mother is in Shanty Town;
	the mother recoils in 2 turns from now.

At the time when the mother recoils:
	if the mother is in Shanty Town:
		say "Suddenly the woman slams the door shut, and you hear the rattle of a bolt being drawn.";
		now the mother is nowhere.

Table of Shanty Town Effects
message
"Curtains twitch behind a grimy windowpane, and you glance over in time to see a lean, suspicious face pulling back into the shadows."
"A pair of starving dogs come sniffing around the refuse by one of the shacks, but as soon as you move they shy away, disappearing over the edge of the clearing."

Every turn when the player is in Shanty Town:
	if a random chance of 1 in 5 succeeds:
		choose a random row from the Table of Shanty Town Effects;
		say "[the message entry].".

Part 5 - #11 Mill Town Road

Number Eleven is a room with printed name "#11 Mill Town Road". "A dirty, ramshackle home, scraped together out of the bits and ends of working-class poverty. The floor is warped and broken wood, bare dirt showing through the cracks between boards. Rags hang across the window in lieu of curtains. Over in the far corner is a rickety old stove; in the opposite corner a threadbare cot; it hits you suddenly that a family of three once lived, slept and ate all in this single room, which is slightly smaller than your bedroom back at the house.".

Shanty Town is west from Number Eleven. East from Shanty Town is nowhere. Before going from Number Eleven, say "The woman attempts a wan smile as you make ready to leave. 'Thank you,' she says softly, indicating the stuffed bear. 'If you discover anything else, please let me know.'".

The stove is scenery in Number Eleven. "It's an ancient, rusted thing, probably scrounged from a scrap heap somewhere. It puts out barely enough heat to make this place livable.".

The cot is scenery and a supporter in Number Eleven. "It looks barely big enough to sleep even one person comfortably, and yet it's the only thing in the room approximating a bed.".

The overalls are a plural-named open opaque container in Number Eleven. The initial appearance of the overalls is "A set of grime-smeared overalls hangs on a hook next to the front door to the west.". The description of the overalls is "They look like a normal set of industrial overalls, the kind of uniform you'd see mill workers in. Stitched into the fabric just above the breast pocket is the name 'Max'.". Instead of taking the overalls, say "You wouldn't take this poor woman's last memento of her departed husband.". Before searching the overalls for the first time: now the long steel key is not scenery; now the long steel key is not fixed in place.

The long steel key is a passkey and scenery in the overalls. The description of the long steel key is "Its shape is rather odd -- a long, cylindrical barrel with several rows of peg-like teeth set radially around it.". The long steel key unlocks the mill hatch. After taking the long steel key for the first time:
	say "That key might just come in handy; while the woman is looking in the other direction, you quickly pluck it from the overall pocket.";
	record "mill-key" as accomplished.

Part 6 - Bare Foundations

Bare Foundations is a room. "The foundations of an older structure lie crumbling in a sunken square of ground, hidden away behind the imposing shadow of the mill wall. Weeds push up through cracked and buckling slabs of concrete; twisted rebar and rusting pipes poke up like the legs of dead insects. The ruins are surrounded on all sides by dense thickets, although narrow, overgrown trails lead northeast and southeast through the underbrush[if the mill hatch is found][paragraph break]Set into the base of the mill wall, nearly covered by the thickets, is a metal hatch[end if].". Instead of going nowhere from Bare Foundations, say "The thickets are too dense in that direction.". Before going north from Bare Foundations:
	if the mill hatch is not found:
		try going south instead.

The mill hatch is a closed locked door and scenery. The mill hatch can be found. The mill hatch is not found. "It's just an ordinary-looking metal hatch." The mill hatch is north of Bare Foundations and south of AT1.

The thicket is scenery in Bare Foundations. Understand "bush", "bushes" and "brush" as the thicket. "The thickets are full of painful thorns and appear quite impenetrable. They are also very deep; there's no telling what could be hidden -- or what could be hiding -- in their brambly depths." Instead of searching the thicket:
	if the mill hatch is scenery:
		say "Carefully pushing the prickly branches aside, you find a rusty metal hatch set into the base of the wall.";
		now the mill hatch is found;
	otherwise:
		say "You find nothing else of interest.".

South of Mill Entrance is Bare Foundations. Before going from Mill Entrance when the room gone to is Bare Foundations, say "The path curves southwest, leading you into an overgrown area behind the mill.".

Northeast of Bare Foundations is Mill Entrance. Before going from Bare Foundations when the room gone to is Mill Entrance, say "The path curves north, leading you around to the front of the mill.".

Part 7 - Railroad Tracks

Railroad Tracks is a room. "The trail heads up a short embankment and emerges from the thicket alongside the railroad tracks. The tracks run down from the northeast and past the mill, continuing southwest but slowly curving westward until they cross the Miskaton River some miles outside of town. From the embankment you can look out over the entire heath: jagged, shadowy rooftops to the south; the oily ribbon of the Miskaton to the west; and to the east, the lighthouse sentinel and the leaden waters of the Atlantic beyond.". Railroad Tracks is southeast from Bare Foundations.

Instead of going southeast in the Railroad Tracks, say "It's dangerous to walk along railroad tracks.". Instead of going northeast in the Railroad Tracks, say "It's dangerous to walk along railroad tracks.". Instead of going north in the Railroad Tracks, say "The thickets block the way back, except for the trail to the northwest.". Instead of going west in the Railroad Tracks, say "The thickets block the way back, except for the trail to the northwest.". Instead of going nowhere from Railroad Tracks, say "There's nothing in that direction but empty heath.".

Part 8 - Maintenance Tunnel (part 1)

AT1 is north of Shanty Town.

AT is a region. AT1, AT2 and AT3 are in AT.

AT1 is a dark room with printed name "Maintenance Access Tunnel". "You are at the southern end of a long, narrow crawlway leading northward into the mill. All around you, through the metallic walls, you can hear the oppressive thumping and grinding of heavy machinery. The air in here is hot and smells of burnt engine oil.[paragraph break]A large metal valve wheel juts out from the middle of one of the many fat, sweating pipes lining the walls. Just to its left is a gauge of some sort.". Before going north from AT1, say "The air grows hotter the farther in you go, and it is becoming difficult to breathe.".

The wheel is a supporter and scenery in AT1. "It's a large, spoked metal wheel, about a foot in diameter, for opening and shutting a valve somewhere inside the pipes.".

Instead of turning the wheel:
	if the towel is not on wheel:
		say "The metal wheel is incredibly hot, and you jerk your blistered hands away.";
	otherwise:
		say "You grip the sides of the wheel -- even through the towel, you can feel the heat radiating from it -- and haul it clockwise with all your strength. It squeaks reluctantly at first, then gives all at once. From down the corridor you hear an enormous hissing rush as steam is vented from the pipes, and the needle in the gauge drops abruptly down to zero..";
		[ record "mill-wheel" as accomplished - 1 point ]
		now the level of the gauge is 4.

Definition: a thing is wheelable if it is the towel or it is the trench coat or it is the robe.

Check putting something on the wheel: 
	if the noun is not wheelable:
		say "There is no way to cover the wheel with [the noun]." instead;
	otherwise:
		let l be the list of things on the wheel;
		if the number of entries in l is not 0:
			say "[The entry 1 of l] is already covering the wheel." instead.
After putting something on the wheel: say "You drape [the noun] over the wheel.".

The maintenance pipes are scenery in AT1. "Dozens of thick, metal pipes line the walls and ceiling of the crawlway, some of them leaking tiny plumes of steam from loose joints.".

Table of Gauge Levels
level	needle position	message
0	"currently resting all the way to the left, at zero"	"blank"
1	"slowly rising, about a quarter way up the dial"	"The noise of machinery is growing steadily louder"
2	"slowly traveling down the right side of the dial, about three-quarters of the way to the red zone"	"The machines behind the walls are reaching a feverish pitch, and an unpleasant vibration ripples up and down the crawlway"
3	"steadily creeping into the red zone"	"Just as the mechanical noises reach a crescendo, the pipes at the north end of the crawlway suddenly give vent to an enormous gout of superheated steam. The entire north half of the crawlway is momentarily filled with vapor and intense heat, which just as quickly dissipates. The noise behind the walls recedes to a calmer level, and the needle on the gauge swings back down to zero."
4	"currently resting all the way to the left, at zero"	"blank"

The gauge is scenery in AT1. The gauge has a number called level. The level of the gauge is 3. "The gauge has a circular face with a needle that sweeps in a 270 degree arc across a set of numbered calibrations, most of which are colored green. The last 30 degrees or so are colored bright red. The needle is [the needle position corresponding to a level of the level of the gauge in the Table of Gauge Levels].".

Every turn while the player is in AT and the level of the gauge is less than 4:
	if the level of the gauge is 3 and the player is not in AT1:
		say "With a sudden shriek, an enormous blast of steam erupts from the pipes above your head, engulfing you in a cloud of superheated vapor well in excess of 300 degrees Fahrenheit. The pain is intense but mercifully brief as your skin scalds instantly and peels from your body like cheap wallpaper.";
		end the story saying "You have died";
	otherwise:
		let message be the message corresponding to a level of the level of the gauge in the Table of Gauge Levels;
		if message is not "blank":
			say "[message].";
		increase the level of the gauge by 1;
		if the level of the gauge is 4, now the level of the gauge is 0.

Part 9 - Maintenance Tunnel (part 2)

AT2 is a dark room with printed name "Maintenance Access Tunnel". "You are roughly at the center of the access crawlway, which stretches north and south from here.". AT2 is north of AT1.

AT3 is a dark room with printed name "Maintenance Access Tunnel". "The north end of the access crawlway ends at a sturdy metal hatch. A thick haze of steam hangs in the air, and the heat is like an oven -- the walls and floor are almost blistering to the touch.". AT3 is north of AT2.

The small notice is scenery in AT3. "Maintenance hatch operates on a timed-release mechanism. Door will unlock approx. 15 s after handle is pulled." Before reading the small notice, try examining the small notice instead.

The maintenance hatch is a closed locked openable door and scenery. The description of the maintenance hatch is "The hatch is round and quite sturdy-looking. There is a handle on this side, and a small notice fixed to the wall nearby." The handle is part of the maintenance hatch. The handle can be raised or lowered. The handle is raised. The description of the handle is "The handle is in the [if the handle is raised]raised[otherwise]lowered[end if] position.". The maintenance hatch is north from AT3 and south from the Mill Floor. Instead of pulling the handle:
	if the hatch is open:
		say "The handle jiggles up and down easily.";
	otherwise if the handle is lowered:
		say "The handle is down as far as it will go.";
	otherwise:
		say "You shove the handle down, and it remains in the lowered position when you let go. Behind the metal
walls you can hear mechanisms clanking into gear, and a faint, rapid ticking sound.";
		now the handle is lowered;
		the maintenance hatch unlocks in 2 turns from now.

At the time when the maintenance hatch unlocks:
	say "You hear a heavy clunking sound from within the hatch.";
	now the hatch is unlocked;
	the handle snaps back in 0 turns from now.

At the time when the handle snaps back:
	if the hatch is closed:
		say "There is a sharp metallic CLANK from within the hatch, and the handle snaps back to an upright position.";
		now the handle is raised;
		now the hatch is locked.

After opening the hatch, say "With a sharp tug, the heavy metal door swings open.". After closing the hatch, say "The hatch slams shut.".

Part 10 - Mill Floor

The Mill Floor is a room. "Waves of heat and noise assault you from every corner. Towering above you on all sides are the enormous vats, presses and sundry machinery, the ever-churning inner workings of the paper mill. An opening in the base of the south wall leads back to the maintenance crawlway, and narrow aisles lead in several other directions through the chugging machinery. A grilled catwalk high over your head provides a more direct route across the factory; however, you see no way to get up there from here.[paragraph break]Bolted to the side of one of the machines is a steel ladder, leading up.".

The chain is scenery in the Mill Floor. "It runs all the way up past the catwalk to the ceiling. Its links look somewhat greasy.". Before climbing the chain, say "The chain is too greasy for you to get a good grip on it." instead. Before pulling the chain, say "You pull on the chain with all your weight, but it doesn't want to give." instead.

The machinery is scenery in the Mill Floor. Understand "vats", "presses", and "machines" as the machinery. "The machines squat like gigantic mechanical trolls all around you, ceaselessly clanking, groaning, vibrating and spitting steam.". After examining the machinery for the first time, say "Strange; although you could hardly call yourself acquainted with the workings of a paper mill, you can't help but notice that none of the machines you can see seem to be involved with anything like the making of paper. At any rate, you don't see any paper -- or any wood pulp, or any dye, or anything else you might reasonably assume a paper mill would have on hand -- anywhere. The machines are definitely busy churning out something -- but what?".

Part 11 - Workshop

The Workshop is a room. "Several workbenches and racks of arcane electronic equipment have been dragged together to form a sort of open laboratory on this wide balcony overlooking the mill. A wide table dominates the area, strewn with precision tools, bits of wire, and scribbled calculations. To the south, a narrow catwalk hangs above the mill floor, and a metal ladder leads down into the machinery below.[paragraph break]On the workbenches are [if the memo is in the Workshop]a printed memo, [end if]some notes and some arcane electronic equipment.[paragraph break]One of the racks contains a number of circular mirrors, stacked side by side like dishes in a dishwasher." The Workshop is up from the Mill Floor.

The workbenches are scenery in the Workshop. Understand "benches" and "tables" as the workbenches. "The benches are strewn with scribbled notes and bits of arcane electronic equipment.".

The electronic equipment is scenery in the Workshop. Understand "electronics" as the electronic equipment. "Circuitboards, electronic components of various shapes and sizes. It's all entirely beyond you.".

The calipers are a thing in the Workshop with printed name "pair of calipers". Understand "pincers", "arms", "readout" and "instrument" as the calipers. The initial appearance of the calipers is "Prominent among the strange tools scattered across the table is a strange caliper-like instrument.". The description of the calipers is "Made of stainless steel, molded in a strangely flowing, almost organic design, the calipers -- if that is what they are -- resemble no other tool you've ever seen. It has three independently adjustable arms, each ending in a needle-point pincer, which fold back on themselves at grotesque, asymetrical angles toward a floating center point. There is a calibrated readout set near the base, which presumably provides a measure of whatever strange contortion of space is occupied by whatever object is placed between the pincers at the tool's other end.".

The notes are scenery in the Workshop. "The notes are a mess of incomprehensibly scrawled numbers; long printouts of technical data, tangled diagrams and complex formulae. Even if you had the slightest idea what all the calculations meant, the numbers are barely even legible.". Before taking the notes, say "You've no use for any of it." instead. After examining the notes:
	say "Lifting up a sheet of cribbed equations, you notice what looks to be a general memo to all mill workers.";
	now the memo is in the Workshop.

The memo is scenery. "It's a flimsy sheet of paper with the following message printed on it:[paragraph break]!!NOTICE TO ALL BRETHREN!![line break]The focusing mirrors must be kept absolutely clean at ALL TIMES. Even the slightest smudge of dirt
or grease can create dangerous instabilities in the refraction patterns.[paragraph break]All mirrors must receive ionization treatment as a matter of course. As an extra precaution, however, always use sterilized surgical gloves when handling them.[paragraph break]In the Name of He Who Is Named Not,[line break]the Mgt.". Before reading the memo, try examining the memo instead.

The blueprint is thing in the Workshop. The initial appearance of the blueprint is "Tacked up on the wall is a large technical blueprint.". The description of the blueprint is "The blueprint is a technical schematic for some extremely complicated device, the exact purpose of which is anything but clear. It looks a bit like a telescope, a bit like a microwave oven turned inside out, and a bit like the 'industrial laser' from [italic type]Goldfinger[roman type]. The inner workings of the device involve a complicated arrangement of lenses and mirrors and a hopeless tangle of circuitry that vaguely resembles several dozen street maps of Manhattan laid across each other. Some of the notations on the circuitry don't even look like technical symbols; they look more like cabbalistic runes.[paragraph break]Next to what must represent the main focusing mirror of the device, someone has written the number '0.0113'; someone else, in another handwriting, has scratched that number out and written below it, '0.0182'.". After taking the blueprint, say "The blueprint curls up into a loose tube as you pull it from the wall.".

The rack of mirrors is a transparent container and scenery in the Workshop. Understand "racks" as the rack of mirrors. "The rack has four slots labeled one through four.[paragraph break]In the rack are TODO.".

Book 2 - Lighthouse

Part 1 - Breakwater

Breakwater is a room. "You are picking your way across the breakwater's bare, rocky spine, where the road has diminished to little more than a pair of dusty ruts. A hundred yards to the northeast, at the breakwater's far end, the lonely stone tower of Anchorhead's lighthouse stands vigil against the ocean.". Instead of going nowhere from Breakwater, say "The narrow breakwater is surrounded by ocean. You can only go west, back to shore; or northeast, to the lighthouse.". Breakwater is east from Mill Road.

The lview is scenery in Breakwater. Understand "lighthouse" as lview. "The lighthouse stands tall against the horizon, a dingy white tower amidst a gray sky and a grayer sea. Despite the ominous cast to the weather, no beacon is shining from the tower's top.". Breakwater is east from Mill Road.

Part 2 - Lighthouse Base

Lighthouse Base is a room with printed name "At the Foot of the Lighthouse". "You stand in a circular clearing among the stones, surrounded on nearly every side by the sea. Before you looms the ancient, massive lighthouse, a vertiginous pillar of pale brick jabbing defiantly up at the sky. The road from the southwest ends here, although it looks as though you could pick your way down the rocks to the southeast, around the structure's base.[paragraph break]To the east, the great bronze door of the lighthouse stands [if the great bronze door is open]slightly ajar, revealing a narrow rectangle of blackness within[otherwise]closed[end if].". Instead of going nowhere from Lighthouse Base, say "In that direction there is only the sea.". Lighthouse Base is northeast from Breakwater.

The lhouse is scenery in Lighthouse Base. Understand "brick" and "pillar" as the lhouse. "Its towering shadow seems to lean menacingly over you, eclipsing half the sky. It is an old and brooding thing, heavy with the weight of centuries of dark memories. Craning your neck to see the top of it, you can't help but make the comparison with a lightning rod, as if this building were the focus for whatever restless forces seem to be stirring through the turbid atmosphere above.[paragraph break]Despite the ominous cast to the weather, no beacon can be seen from the top of the lighthouse.".

The great bronze door is scenery and a closed locked door. The description of the great bronze door is "A monstrous slab of solid bronze set into the thick stone wall of the lighthouse base. Age and seawater have covered its once gleaming surface with an unhealthy green crust of verdigris.". After opening the great bronze door, say "With great effort, you manage to pull the ancient, creaking door open a few inches, enough to slip through.". After closing the great bronze door, say "You lean against the door with all your weight until it slowly swings shut.". The great bronze door is east from Lighthouse Base and west from Lighthouse Bottom.

Part 3 - Lighthouse Interior

Lighthouse Bottom is a room with printed name "Bottom of the Lighthouse". "The sound of the ocean is muffled behind the thick cinderblock walls, and the air is damp and heavy. You can almost feel the weight of two hundred feet of hoary old whitewashed brick pressing down on
you from above. To the west, a narrow strip of dim light marks the exit. Cracked concrete steps lead up.". Before going up from Lighthouse Bottom: try entering the lighthouse steps instead.

The lighthouse steps are scenery and an open door. The description of the lighthouse steps is "The stairs lead [if the player is in Lighthouse Bottom]up[otherwise]down[end if] in a spiral to the rest of the lighthouse.". The lighthouse steps are up from Lighthouse Bottom and down from Lighthouse Top.

Lighthouse Top is a room with printed name "Top of the Lighthouse". "The stairs give onto a wide, circular chamber surrounded by windows. The glass is old and streaked with grime, but you still have to catch your breath at the magnificence of the view. In one direction, the dying heath and the stunted cluster of buildings that is Anchorhead; in the other, the ocean like a vast, undulating blanket.[paragraph break]Sitting in the middle of the room is what looks like a swivel mount of some kind, although nothing is mounted on it now. Looking up, you see that it rests directly below a large, hexagonal skylight.".

The swivel mount is scenery in Lighthouse Top. "The mounting is ring-shaped, about three feet in diameter, and is designed to allow whatever is to be mounted on it to turn freely in all directions. It was probably originally intended to hold the beacon when the lighthouse was still in operation.". Check turning the swivel mount: say "The swivel mount itself is not designed to turn; only whatever's mounted on it." instead.

The strange device is scenery. "It looks a bit like a telescope, a bit like a microwave oven turned inside out, and a bit like the 'industrial laser' from [italic type]Goldfinger[roman type]. It's pointed almost straight up, right through the skylight, aimed directly at the rumbling hole in the sky. Its exact purpose is unfathomable, but it is emitting an ominous, throbbing hum and radiating a curious warmth that causes an unwholesome prickling sensation all over your skin.[paragraph break] Most of the exposed components are too complex to comprehend, but there is a receptacle about two thirds of the way along the thing's -- er, 'barrel' -- that contains a round mirror, like a focusing mirror in a telescope. It looks as though you could remove it.".

The receptacle is a container and part of the strange device.

The robed guards are a thing. The robed guards are fixed in place. The initial appearance of the robed guards is "The robed guards hover to either side of you, waiting for you to make a move.". The description of the robed guards is "The guards eye you with malice and a certain hunger, as if they were just waiting for an excuse to tear you to pieces.". Before breaking the guards with: try attacking the guards instead. Instead of attacking the guards, say "There's no way you could take both of them.".

The lighthouse windows are scenery in Lighthouse Top. "The view -- which encompasses the ocean, the heath, the town of Anchorhead and even the distant paper mill -- is magnificent.".

The lighthouse skylight is scenery in Lighthouse Top. "That big, churning hole in the sky is perfectly framed by the hexagonal skylight.".

Part 4 - Rocky Spur

Rocky Spur is a room. "A small outcropping of stone, just large enough for you to stand on, sticks out from the end of the breakwater. The hungry sea laps at your feet, surging over the rocks and then trickling down into crevices. To the southwest, an uneven trail leads back up the rocks, around the side of the lighthouse.[paragraph break]Beyond the breakwater's tip, [if Day 4 is happening and Michael Summons has not happened]a small island has risen from the sea. Robed figures are crowding onto it, and some kind of ritual seems to be taking place; though you can't see it from where you're standing[otherwise]a turbulent patch of water bubbles and seethes, as if something were lurking just beneath the surface -- turning, perhaps, in uneasy sleep[end if].". Instead of going nowhere from Rocky Spur, say "In that direction there is only the sea.". Before going east from Rocky Spur: if Loony Binned has not happened, try going north instead; if Michael Summons has not happened, say "You hop across to the island, but the crowd is so thick that you can't make your way to the center to see what's going on. Eventually the jostling gets so intense that you are forced to hop back onto the shore to keep from being pushed off into the water." instead; otherwise say “The fleshy island has sunken back into the sea.”


The patch of turbulent water is scenery in Rocky Spur. "It looks... unnatural.". Instead of taking the patch of turbulent water, say "The patch of turbulent water is just beyond your reach.". Instead of entering the patch of turbulent water, say "Not on your life.".

Rocky Spur is southeast from Lighthouse Base. Northwest of Rocky Spur is nowhere. Rocky Spur is down from Lighthouse Base. Before going to Rocky Spur, say "Carefully, you climb down the rocks. The path bends northeast, following the curve of the lighthouse wall.".
 
Lighthouse Base is southwest from Rocky Spur. Northeast of Lighthouse Base is nowhere. Before going from Rocky Spur, say "The trail turns northwest, following the curve of the lighthouse wall.".

Every turn when the player is in Rocky Spur: if a random chance of 1 in 7 succeeds, say "A soft splash draws your attention. You look up just in time to see something scaly roll over and slide back beneath the waves.".

Part 5 - Flesh Island (eew)

Flesh Island is a room with printed name "Island of Flesh". "The island is barely forty feet across, its surface covered with an ankle-deep layer of slime and muck. Underneath the muck, the ground throbs -- heaving rhythmically to a blasphemous, living pulse.[paragraph break]The sea thrashes against the shore with storm-driven fury[if the player is wearing the pair of handcuffs].[paragraph break]You are handcuffed to one of several heavy stone blocks set in a rough semicircle around the center of the island[end if].". Flesh Island is east from Rocky Spur. Before going east from Rocky Spur: if Loony Binned has not happened, try going north instead; if Michael Summons has not happened, say "You hop across to the island, but the crowd is so thick that you can't make your way to the center to see what's going on. Eventually the jostling gets so intense that you are forced to hop back onto the shore to keep from being pushed off into the water." instead; otherwise say “The fleshy island has sunken back into the sea.”

The robed cultists are a thing in Flesh Island. The robed cultists are fixed in place. The initial appearance of the robed cultists is "Robed cultists crowd around on every side -- some of them brandishing flaming torches, some of them chanting in some hideous, archaic tongue, all of them swaying to the hypnotic pulse that rises up from the depths of the fleshy ground.". The description of the robed cultists is "The throng of cultists presses around the small clearing in the middle of the island from all directions, chanting, waving torches, and swaying rhythmically to the terrible beat of whatever monstrous heart lies beneath this island.".

The flab is scenery in Flesh Island. Understand "island" and "ground" and "earth" as the flab. The description of the flab is "The fleshy surface of this island is covered in reeking slime. It shivers beneath you to some horrible pulse.".

Volume 6 - South of the River

Book 1 - Town Square Environs

Part 1 - Whateley Bridge

Whateley Bridge is a room. "A hoary monument of crumbling, moss-eaten flagstones, Whateley Bridge is possibly older than any other structure in the entire city. Ponderously it spans the dark, torpid waters of the Miskaton River, connecting the north and south halves of the city and occasionally raining bits of gravel and mortar from its underside into the water. It looks just wide enough for two cars to pass each other between the flanking stone parapets, but you wouldn't volunteer to try it.". Instead of going nowhere from Whateley Bridge, say "The bridge only leads north and south from here.". Whateley Bridge is south of the Narrow Street.

The parapets are scenery in Whateley Bridge. Understand "bridge" as the parapets. "The parapets are about waist high, made of crumbling stone.".

Part 2 - Town Square

Town Square is a room. "A wide expanse of uneven pavestones lies open to the sky, bordered on all sides by the leaning, steep-roofed architecture that looms over everything in this city. The municipal courthouse stands at the south end of the square, next to the mouth of a dark, narrow alley to the southwest. Avenues to the west and east lead back into the cramped and ingrown streets, while to the north lies Whateley Bridge.[paragraph break]In the center of the square, rising from a circular lawn of unhealthy-looking grass and weeds, stands a strange, stone obelisk. It seems to be a monument of some sort, although you can see no plaque or marker anywhere near it[if the commotion is in Town Square].[paragraph break]There appears to be a commotion of sorts to the north, where a group of townsfolk have gathered[end if].".

Instead of going nowhere from Town Square, say "Streets lead north, east and west from here. You can enter an alley to the southwest, or the city courthouse to the south.". Town Square is south of Whateley Bridge.

The faroff bridge is scenery in Town Square. "Old Whateley Bridge spans the river to the north.". Understand "bridge" as the faroff bridge.

The cbuilding is scenery in Town Square. Understand "courthouse" as the cbuilding. "The courthouse is probably the largest building in the old city, although that isn't saying much. Built, like nearly every other structure here, with an eye toward steep roofs, leaning gables, and an overall air of looming decay, it casts its stern shadow across the square like an old Puritan magistrate passing judgment on some cowering sinner. Wide wooden steps lead up to its main entrance due south of here, while a narrow alley leads around the side of the building to the southwest.".

The lawn is scenery in Town Square. "The lawn surrounds the obelisk to a distance of ten feet or so. It looks as though it hasn't been tended to in a while.". Understand "grass" as the lawn.

The obelisk is scenery in Town Square. "The obelisk measures about two feet square at its base, narrowing slightly as it rises a good fifteen feet to a bluntly pointed tip. An iron ring is embedded in the stone high up on one side, about two feet from the top. Dense, twisting hieroglyphs cover all four sides of the obelisk, although they are too worn to be read clearly.". Understand "stone" and "monument" as the obelisk. The iron ring is part of the obelisk. The obelisk has a number called glow. The glow of the obelisk is 0.

The hieroglyphs are part of the obelisk. "They are not Egyptian, which is what you first assumed from the general shape and design of the obelisk. In fact, though you're no archaeologist, these carvings don't look like any sort of ancient writing you've ever seen. The characters, which must have been carved very deeply in order to survive this much erosion, twist and squirm in disturbing ways, flowing into and through each other and almost seeming to shift slightly as you try to follow their lines. The effect is deeply unsettling, and you have to suppress an urge to take a step or two back away from the monument.".

The newspaper is a thing. The newspaper can be under the door. "A damp newspaper lies on the curb, fluttering slightly in the wind." The description of the newspaper is "It's the 'Weekly Arkham Herald'. Anchorhead, apparently, is not large enough to warrant its own newspaper.". The printing of the newspaper is "The front page story is about Jeffrey Greer, 8 years old, who was abducted from his home at #11 Mill Town Road last night. Little Jeffrey is the latest victim in a series of abductions that stretches back for years, one every six months or so, and that authorities believe is the work of a single perpetrator. Local police had hoped to prove that Edward Verlac had been behind the kidnappings, but were unable to obtain a confession or any hard proof. Edward Verlac was convicted of murdering his wife and two daughters, one of whom was 15 months old, in January of this year; he was found not guilty by reason of insanity and incarcerated in Danvers Asylum, where he remained until committing suicide last March. This latest kidnapping, occurring after Edward's death, seems to have cleared up any lingering suspicions that he might have been the culprit.[paragraph break]Anyone possessing information regarding the whereabouts of Jeffrey Greer is strongly urged to speakto the authorities as soon as possible.".

Part 3 - Courthouse

The Courthouse is a room. "A long, dimly lit, north-south corridor stretches away from the courthouse entrance. Closed, unmarked doors line either side of the hall, their pebbled glass windows lit from within by a murky, yellow-orange light. Silence reigns here; your footsteps echo eerily on the tiled floor, and occasionally you can hear muted conversation behind one of the doors -- you can't tell which. At the hall's southern end, a staircase leads down into the basement; a sign hanging above it reads 'RECORDS'. You can return to Town Square to the north.". Instead of going nowhere from the Courthouse, say "All of the doors are locked.". The Courthouse is south from the Town Square.

The cdoors are scenery in the Courthouse. Understand "windows" and "doors" as the cdoors. "Through the pebbled glass you can see a light on inside, but nothing else is visible.".

The cstairs are backdrop. They are in the Courthouse and the Courthouse Basement. Understand "stairs" and "staircase" as the cstairs. "[if the location is the Courthouse]The stairs lead down to the record archives[otherwise]The stairs lead back up to the ground floor.[end if].".

The Courthouse Basement is a room. "A single bulb dangling from the ceiling casts a watery, yellow light against the brick walls. A rickety staircase to the north leads back up to the ground floor, and two narrow doorways lead into the record archives. Over the southeast door hangs a sign that reads 'BIRTH RECORDS', while the southwest door bears the sign 'DEATH RECORDS'.". The Courthouse Basement is down from the Courthouse.

Brecords is a room with printed name "Birth Records". "A bare room with cinderblock walls. Thousands of records and documents, most yellow and brittle with age, are stacked everywhere in towering piles. The exit lies northwest.". Brecords is southeast of the Courthouse Basement.

The birth records are scenery in Brecords. Understand "documents" as the birth records. "The records go all the way back to the seventeenth century and are quite extensive. It would take a while to sort through all the papers, but you could look an individual up by name. Although it would take longer, you can also flip through all the documents in a given year to see if any familiar names pop up.". Instead of consulting the birth records about: say "[the birthday for the topic understood].".

Drecords is a room with printed name "Death Records". "A bare room with cinderblock walls. Thousands of records and documents, most yellow and brittle with age, are stacked everywhere in towering piles. The exit lies northeast.". Drecords is southwest of the Courthouse Basement.

The death records are scenery in Drecords. Understand "documents" as the death records. "The records go all the way back to the seventeenth century and are quite extensive. It would take a while to sort through all the papers, but you could look an individual up by name. Although it would take longer, you can also flip through all the documents in a given year to see if any familiar names pop up.". Instead of consulting the death records about: say "[the deathday for the topic understood].".

Part 4 - Side Alley

Side Alley is a room. "This is a featureless blind alley, a dead end. Through the narrow and heavily shadowed opening to the northeast, you can see the square and the obelisk at its center." Instead of going nowhere from Side Alley, say "The only exit is to the northeast.". Side Alley is southwest from Town Square.

opeek is scenery in the Side Alley. Understand "obelisk" as opeek. "Although you're too far away to read the hieroglyphs on its sides, you have an otherwise excellent view of the obelisk from here.".

Part 5 - Riverwalk

The Riverwalk is a room. "A low, irregular brick wall to the north divides this street from the steep, mud-slick banks of the sinuous Miskaton, while a rusty iron gate provides access to a precarious flight of stone steps leading down the bank to the water's edge. The street bends south here, turning into a misty avenue between the trees. The town square lies west, a vacant lot lies east.". Instead of going nowhere from the Riverwalk, say "The street leads to the west and to the south. A vacant lot lies east and a rusty gate lies to the north.". The Riverwalk is east from Town Square.

The old brick wall is scenery in the Riverwalk. "Presumably, it's to keep people from falling into the river, although it looks old enough to disintegrate were you to even lean on it.".

The rusty gate is scenery in the Riverwalk. "The rusty gate is open.".


Part 6 - Vacant Lot

Vacant Lot is a room. "Where once a building stood, there is now only cracked pavement and rampant weeds. A high chain-link fence surrounds this vacant lot; the only breaks lie to the west and southeast." Instead of going nowhere from the Vacant Lot, say "The chain-link fence surrounds this place on all sides except west and southeast.". The Vacant Lot is east of Riverwalk.

The mattress is a thing in the Vacant Lot. "A filthy old mattress lies among the weeds over in one corner of the lot.". The description of the mattress is "The mattress is stained and beaten, oozing stuffing in several places. From the cans and food wrappers scattered around it, it looks as though somebody's been using it as a bed.". To bleargh: say "The mattress is extremely dirty and probably infested with bugs. You'd just as soon not even touch it, much less drag it around with you.". Instead of taking the mattress, bleargh instead. Instead of pushing the mattress, bleargh instead.

The chain-link fence is backdrop. The chain-link fence is in the Vacant Lot and the Wharf.

The small copper key is a passkey. The small copper key unlocks the metal door. The old man is holding the small copper key. The description of the small copper key is "'Mine!' the old man hisses, clapping his hands onto his chest as though you were about to frisk him for it. 'It's mine, and I won't let it go!'". Instead of examining or taking the small copper key when the old man is holding the small copper key, say "'Mine!' the old man hisses, clapping his hands onto his chest as though you were about to frisk him for it. 'It's mine, and I won't let it go!'". The small copper key unlocks the small metal door.

Test man with "test betray / s / d / s / se / ne / n / n / w / n / n / n / s / look under table / take flask / s / s / s/ e / e".

Part 7 - The Wharf

The Wharf is a room. "The gentle creaking of hawsers and the hollow slap of water beneath the wooden pier provide a faint counterpoint to the endless, rhythmic surging of the sea. The fishing industry (like the paper industry) has all but died away in Anchorhead; nonetheless there are still a few boats tied to the pier. A path leads back through an opening in a chain-link fence to the northwest; otherwise, it's just you and the ocean." Wharf is southeast from the Vacant Lot. Instead of going nowhere from The Wharf, say "There's really only one way to go from here, and that's northwest, back to the city.".

The boats are scenery in the Wharf. "The few fishing boats that remain look barely sea-worthy, held together by barnacles and old habit.". Understand "fishing" as the boats. Instead of entering the boats, say "The boats are not your property, and you have no desire to trespass on what is probably someone's last feeble source of livelihood.".

The old tin is an openable container. The old tin is closed. "An old, discarded tin of fish oil sits at the end of the pier.". Instead of examining the tin, say "It's dented and rusty, and you can barely make out the words 'Skagen, Denmark' printed along the side. The lid is [if the old tin is closed]closed[otherwise]peeled back, revealing a smelly quantity of fish oil[end if]." instead. Instead of searching the tin, say "[if the old tin is closed]You can't see inside, since the old tin is closed[otherwise]In the old tin is a smelly quantity of fish oil[end if].". The old tin is in the Wharf.

Instead of searching the tin, say "[if the old tin is closed]You can't see inside, since the old tin is closed[otherwise]In the old tin is a smelly quantity of fish oil[end if].".

Instead of inserting something into the tin:
	abide by the can't insert what's not held rule;
	abide by the can't insert into closed containers rule;
	say "There's not enough room in the old tin for [the noun]." instead.

The fish oil is a thing with printed name "quantity of smelly fish oil". The fish oil is in the old tin. The description of the fish oil is "It's a viscous, nasty-smelling goo, made from and made for feeding fish. Not very appetizing.".

Instead of taking the fish oil:
	if the player does not enclose the old tin:
		say "(taking [the old tin])[command clarification break]";
		try silently taking the old tin;
	say "You dip your finger in and come up with a small glob of pungent fish oil.";
	now the player is oiled;
	the player gets rid of the fish oil in 1 turns from now.

At the time when the player gets rid of the fish oil:
	if the player is oiled:
		say "Not knowing what else to do with it, you wipe the nasty fish oil off on the leg of your pants.";
		now the player is not oiled.

Check oiling something:
	if the noun is a person:
		say "[The noun] would probably not appreciate that." instead;
	if the noun is oiled:
		say "[The noun] already has fish oil on it." instead;
	if the player is not oiled:
		say "(first taking some fish oil)[command clarification break]";
		try taking the fish oil;

Carry out oiling something:
	now the noun is oiled;
	now the player is not oiled;
	say "You rub some fish oil onto [the noun]." instead.

Part 8 - Chilly Avenue

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

Book 2 - The Asylum

The Upper Asylum is a region 

Part 1 - Dark Corner

Dark Corner is a room. "The rooftops above you lean so close together as to nearly block out the sky altogether, making this a particularly dark and unpleasant section of the city. The street leads away to the east, and a shadowy driveway leads through a high brick wall to the south." Instead of going nowhere from Dark Corner, say "The street leads east and south from here." instead. Dark Corner is west from Town Square.

Part 2 - Asylum Courtyard

Asylum Courtyard is a room. "The grim, white-washed edifice of Danvers Asylum bounds this tiny, shadowed courtyard to the south, its narrow, barred windows staring blankly down at you like ranks of shriveled, empty eye sockets. You can escape through a narrow gateway in the high, brick wall to the north.". Instead of going nowhere from Asylum Courtyard, say "The asylum grounds are surrounded by a high brick wall, and the only way back to the outside world is to the north.". Asylum Courtyard is south from Dark Corner.

Part 3 - Waiting Room

The Waiting Room is a room. "Ugly, mint-green tiles and walls of whitewashed cinderblock comprise the decor of this inhospitable waiting room. A hard little sofa upholstered in avocado vinyl and a feebly struggling potted palm are provided for the comfort of visitors, although you get the feeling that few inmates of this institution are fortunate enough to have visitors. A metal gate bars entrance to a southern passageway, which you assume leads to the inmates' section. The exit lies north.". The Waiting Room is south from Asylum Courtyard.

The tiles are scenery in the Waiting Room. Understand "floor" as the tiles. "The tiles are pale, bland, non-color green, specifically designed to be as soothing as possible. Just looking at them makes you want to smash your head against the wall.".

The asofa is an enterable supporter and scenery in the Waiting Room with printed name "sofa". Understand "sofa" and "couch" as the asofa. "It is the apotheosis of utilitarian decor, little more than a horizontal slab with some vertical slabs around the sides to keep people from falling off. And it is avocado.". Report entering the asofa: say "You ease yourself onto the hard sofa. Your butt begins to get tired almost immediately."; rule succeeds. Report getting off the asofa: say "Gratefully, you stand up again."; rule succeeds.

Part 4 - Upstairs (general stuff)

A cell door is a kind of door. A cell door is scenery. A cell door is locked and lockable. The description of a cell door is "It's a sturdy-looking wooden door, padded on the inside. There is a tiny observation window about five feet up. The door is [if open]open[otherwise]closed[end if].". 

Before opening a cell door when the noun is locked:
	if the player is in Upper Hallway North or the player is in Upper Hallway Middle or the player is in Upper Hallway South:
		say "The door is latched with a simple sliding bolt." instead;
	otherwise:
		say "The door is locked from the other side." instead.

Before locking keylessly a cell door: 
	if the player is in Upper Hallway North or the player is in Upper Hallway Middle or the player is in Upper Hallway South:
		now the noun is locked; 
		say "You slide the latch, locking the door." instead;
	say "You can't lock it from this side." instead.

Before unlocking keylessly a cell door: 
	if the player is in Upper Hallway North or the player is in Upper Hallway Middle or the player is in Upper Hallway South:
		now the noun is unlocked; 
		say "You slide the latch, unlocking the door." instead;
	say "You can't unlock it from this side." instead.

An observation window is a kind of thing. An observation window is scenery. The description of an observation window is "The tiny window is made of thick, reinforced glass.". Instead of searching an observation window, say "You can see a small, padded cell.".

The Asylum Cells are a region. Cell Interior NE, Cell Interior ME, Cell Interior MW, Cell interior SE and Cell Interior SW are in Asylum Cells.

The padding is backdrop in Asylum Cells. Understand "quilted" as the padding. "The dingy white padding is made of thick, quilted canvas, stuffed with cotton. You could probably beat yourself against it all day and not hurt yourself, although you would end up awfully sore.".

A stiff is a kind of thing. A stiff is proper-named. The printed name of a stiff is "orderly's body". The description of a stiff is "The orderly lies face down in a pool of his own congealed blood, the back of his skull savagely beaten into a wet, churned mass.". Before searching or taking a stiff, say "Keep your hands to yourself!" instead.

Part 5 - Upper Hallway North

Upper Hallway North is a room with printed name "Hallway". "A grim hallway of concrete and industrial green tiles. This is the north end; the hallway runs south from here. Doors lead east and west, and a narrow, barred window to the north looks out onto the dark corner outside[if the shard of glass is in the cracks].[paragraph break]There is a jagged shard of glass poking out of the wall here, underneath the window[end if].".

The janitor's closet is a closed openable container and scenery in Upper Hallway North. "This looks like it might have been a janitor's closet, although all the cleaning equipment has been cleared away, leaving only a small, dingy alcove." After opening the janitor's closet, say "You open the closet, revealing [a list of things in the janitor's closet].". Instead of entering the janitor's closet, say "The closet is really too small for you to step into.".

The shard of glass is a thing in Upper Hallway North. The initial appearance of the shard of glass is "A shard of glass from the broken window lies on the floor.". The description of the shard of glass is "The shard is triangular, about two inches long, and very sharp.". 

Instead of taking the shard of glass when the player is wearing the strait jacket:
	say "Painstakingly, you get down on your knees and very, very carefully pick up the shard of glass with your teeth.";
	record "cut-jacket" as accomplished;
	now the player has the shard of glass.

The broken window is scenery in Upper Hallway North. "Building maintenance is obviously not a big priority at this institution. The wall around the window casement is cracked in several places -- some of the cracks are quite large. The window pane itself is broken in, probably by a misguided bird sometime in the recent past.".

The cracks are a container and part of the broken window. Understand "crack" as the cracks. The description of the cracks are "A jagged network of cracks has spread out around the bottom edge of the window as the wall slowly settles. One crack is nearly a quarter-inch wide.".

Instead of inserting the shard of glass into the cracks when the player is wearing the strait jacket:
	say "You wedge the shard of glass into the crack, its sharp edge pointing outward.";
	now the shard of glass is in the cracks.

Cell Window NE is an observation window in Upper Hallway North with printed name "observation window". Understand "observation window" as Cell Window NE.

Cell Door NE is a cell door with printed name "cell door". Understand "cell door" as Cell Door NE. It is east from Upper Hallway North and west from Cell Interior NE. 

Instead of attacking Cell Door NE for the first time, say "You take a few steps back, draw a deep breath, and hurl your body at the door. It shudders violently, and you thought you felt something give.".

Instead of attacking Cell Door NE for the second time: say "With a defiant shout, you launch your body at the door. Something snaps (the door? you think incoherently, or your shoulder?), and the door flies open, sending you sprawling out into the hallway."; now Cell Door NE is open; now the player is in Upper Hallway North.

Cell Interior NE is a room with printed name "Padded Cell". "You are in a padded cell, the kind typically reserved for raving lunatics. The room is barely eight feet by eight feet square, with walls and floor of concrete covered with thick, quilted padding. The door in the west wall is also covered with padding, except for a tiny observation window about five feet up, from which a feeble light trickles in.".

Part 6 - Upper Hallway Middle

Upper Hallway Middle is a room with printed name "Hallway". "A grim hallway of concrete and industrial green tiles, running north and south from here. Doors lead east and west.". Upper Hallway Middle is south from Upper Hallway North.

Every turn when the player is in Upper Hallway Middle and the madman is not free:
	if a random chance of 1 in 3 succeeds:
		say "You hear strange, gibbering laughter coming from the eastern cell.".

Cell Window MW is an observation window in Upper Hallway Middle with printed name "west observation window". Understand "west window" and "west observation window" as Cell Window MW.

Cell Door MW is a cell door with printed name "west door". Understand "west door" as Cell Door MW. It is west from Upper Hallway Middle and east from Cell Interior MW. 

Cell Interior MW is a room with printed name "Padded Cell". "Another padded cell, much like the rest. There is a door in the east wall.". 

Cell Window ME is an observation window in Upper Hallway Middle with printed name "east observation window". Understand "east window" and "east observation window" as Cell Window ME. Before searching Cell Window ME when the madman is in Cell Interior ME, say "Inside the eastern cell you can see what must be one of the asylum's old inmates, prancing and cavorting around the room. You are mildly disturbed to see that he is wearing no strait jacket." instead.

Cell Door ME is a cell door with printed name "east door". Understand "east door" as Cell Door ME. It is east from Upper Hallway Middle and west from Cell Interior ME. Before unlocking keylessly Cell Door ME when the madman is in Cell Interior ME: say "It would probably be best if you kept this door locked for now." instead.

Cell Interior ME is a room with printed name "Padded Cell". "Another padded cell, much like the rest. There is a door in the east wall.". 

Part 7 - Upper Hallway South

Upper Hallway South is a room with printed name "Hallway". "A grim hallway of concrete and industrial green tiles. This is the south end; the hall runs north from here. Doors lead east and west, and a doorway to the south leads to the top of a stairway.". Upper Hallway South is south from Upper Hallway Middle.

Cell Window SE is an observation window in Upper Hallway South with printed name "east observation window". Understand "east window" and "east observation window" as Cell Window SE.

Cell Door SE is a cell door with printed name "east door". Understand "east door" as Cell Door SE. It is east from Upper Hallway South and west from Cell Interior SE.

Cell Interior SE is a room with printed name "Padded Cell". "Another padded cell, much like the rest. There is a door in the west wall.". 

Cell Window XX is an observation window in Upper Hallway South with printed name "west observation window". Understand "west window" and "west observation window" as Cell Window XX. Instead of searching Cell Window XX, say "The window is difficult to see through, what with all the cracks and the smeared blood.".

Cell Door SW is a cell door with printed name "west door". Understand "west door" as Cell Door SW. It is west from Upper Hallway South and east from Cell Interior SW.

Cell Interior SW is a room with printed name "Padded Cell". "The padding in this room seems a bit worse for the wear; murky bloodstains spatter the canvas near the door, and there is a large tear down in the corner of the cell, with bits of stuffing leaking out. There is a door in the east wall.". 

The ragged tear is an opaque container and scenery in Cell Interior SW. "The canvas is frayed and jaggedly torn. It looks as though someone might have gnawed through it with their teeth.". Instead of searching the tear for the first time, say "As you carefully pull the ragged piece of canvas from its hiding place, something pricks you sharply on the finger. You jerk your hand away; then, peering into the tear once again, you notice an old, crusted needle embedded in the stuffing.".

The crusty needle is a thing in the ragged tear. The description of the crusty needle is "It's about two inches long, very old and crusted with what looks like dried blood. The point is worn down but still sharp.";

The torn square of canvas is a thing in the ragged tear. The description of the torn square of canvas is "It's roughly six inches to a side and covered front and back with uneven, barely legible handwriting. The letters are the murky brown color of blood." The printing of the torn square of canvas is "[the jailhouse text]". After reading the torn square of canvas for the first time, record “read-edwards-letter” as accomplished.

Part 8 - Stairs & Lower Hall

Top of Asylum Stairs is a room. "You are at the top of a stairwell leading down to the asylum's ground floor. A hallway lined with doors leads north.". Top of Asylum Stairs is south from Upper Hallway South.

Bottom of Asylum Stairs is a room. "You are at the bottom of a stairwell leading up to the asylum's second floor. A hallway leads north.". Bottom of Stairs is down from Top of Asylum Stairs.

Lower Hallway South is a dark room with printed name "Hallway". "A grim hallway of concrete and industrial green tiles. This is the south end; the hall runs north from here. A doorway to the south leads to the bottom of a stairway.". Lower Hallway South is north from Bottom of Asylum Stairs.

Lower Hallway Middle is a dark room with printed name "Hallway". "A grim hallway of concrete and industrial green tiles. The hallway runs south from here; to the north, the hallway ends at the barred gate leading to the lobby.". Lower Hallway Middle is north from Lower Hallway South. Lower Hallway Middle is south from The Waiting Room.

The first orderly is a stiff. The first orderly is in Lower Hallway Middle. The initial appearance of the first orderly is "The orderly is lying face down in a pool of blood on the floor, a few feet beyond the barred gate.". 

The second orderly is a stiff. The initial appearance of the second orderly is "The orderly is lying face down in a pool of blood on the floor.". 

The porno magazine is a thing in Lower Hallway Middle. The initial appearance of the porno magazine is "The orderly's porno magazine lies discarded on the floor, just outside the barred gate." The description of the porno magazine is "'Juggs'. How charming.". The printing of the porno magazine is "There's not a whole lot in this magazine that you actually read. The target audience for this sort of thing is generally more interested in the pictures than in the articles.". Instead of taking the porno magazine for the first time, say "You snake your arm through the bars and grab the magazine.".

Instead of giving the porno magazine to the madman: now the madman has the porno magazine; say "The madman snatches the magazine from your hand and begins pawing through it like an over-sexed adolescent, giggling and occasionally squeezing his crotch.".

Instead of going north from Lower Hallway Middle for the first time:
	if the madman has the porno magazine:
		say "You quietly open the gate. The madman, noticing you trying to sneak off, tosses the magazine aside and hobbles after you.";
	otherwise:
		say "The madman watches you intently as you fumble with the gate. Eventually it dawns on him that you are trying to escape, and, unwilling to let his quarry slip away so easily, he pounces with a shriek of slobbering laughter.[paragraph break]It would be small comfort to say that the madman at least batters you to unconsciousness before starting in with his teeth; sadly, it would also be untrue. He does tear your throat out fairly quickly, however, and the cessation of your screams is, for him at least, a kind of mercy.";
		end the story saying "You have died".

The orderly's name tag is a thing. The initial appearance of the orderly's name tag is "The orderly's name tag lies on the floor nearby.". The description of the orderly's name tag is "It reads: 'CHUCK'."
		
Book 3 - Sewer

Part 1 - Under the Bridge

Under the Bridge is a room. "The ponderous stones of Whateley Bridge arch overhead, casting this little concrete ledge into deep shadow. At your feet, the dark waters lap quietly against the stones with a hollow, subterranean sound. Stone steps to the southeast lead back up to street level." Instead of going nowhere from Under the Bridge, say "You can return to the riverwalk by going up the stairs to the southeast, or you can go through the small, rusty door to the south." Under the Bridge is down from the Riverwalk. North from Riverwalk is southeast from Under the Bridge. Before going to Under the Bridge when the room gone from is Riverwalk: say "You pass through the gate and down the stone steps, which curve northwest as they lead down to the edge of the river.".

The river steps are backdrop. The river steps are in the Riverwalk and Under the Bridge. "[if the player is in Riverwalk]The stairs lead down to the banks of the river[otherwise]The stairs lead back up to the riverwalk[end if].".

The bridge bottom is scenery in Under the Bridge. "You can make out a shadowy reflection of yourself in the slowly rippling water.". Understand "bridge" or "stones" as the bridge.

The small metal door is a closed openable locked door. "A small metal door, blotchy with rust, is set into the south bank of the river, underneath the bridge.". It is south from Under the Bridge and north from the Access Shaft. The initial appearance of the door is "[if the player is in Under the Bridge]A small metal door, blotchy with rust, is set into the south bank of the river, underneath the bridge[otherwise]In the north wall is a small metal door.[end if]".

The Access Shaft is a dark room. "This tiny, concrete-lined alcove within the underside of the bridge forms the top of a vertical shaft leading down into darkness. Iron rungs embedded in the wall provide a way down.".

Part 2 - Tunnels

The Sewer Tunnel is dark room. "The tunnel is ankle-deep in brackish water, though raised walkways on either side provide relatively dry footing. The walls are slick, the air damp and foul. The main tunnel runs north and southeast. Numerous smaller pipelines lead in all directions, but all are too small for you to crawl through. Iron rungs embedded in the wall lead up through an access shaft, back to the surface.". The Sewer Tunnel is down from the Access Shaft.

The pipelines are scenery in the Sewer Tunnel. "The mouths of numerous pipelines open into this main tunnel. Some of them are nearly a foot across, some of them no wider than your thumb; all of them are too small to crawl through.".

The sewer ladder is scenery in the Sewer Tunnel. Understand "rungs" as the sewer ladder. "It's an ordinary wooden ladder.".

The Dripping Tunnel is a dark room. "The ceiling in this north-south tunnel is so low you must bend nearly double to navigate it. Water drips endlessly through the walls and ceiling, seeping in through thousands of invisible fissures, the constant plip-plip-plipping echoing loudly throughout the tunnel. The air is so damp you can hardly breathe. Unless your sense of direction is mistaken, you must be crossing the Miskaton River -- [italic type]underneath it[roman type].". The Dripping Tunnel is north from the Sewer Tunnel.

The Broken Tunnel is a room. "This looks to be an older part of the sewer system that has fallen into disrepair. Many of the pipes here have crumbled and are filled with debris.". The Broken Tunnel is north from the Dripping Tunnel.

The sewer pipes are plural-named scenery in the Broken Tunnel. "The pipes are broken and jagged, filled with debris and thick slime.".

The Vaulted Tunnel is a dark room. The Vaulted Tunnel can be filled. "The walls of this long, rectangular chamber are made of crumbling brick, not concrete; most likely it was built at some earlier period than the rest of the tunnels. The ceiling is lost in darkness above you, but from the sounds of the echoes it must be pretty high. Water flowing in from the northwestern tunnel has pooled in a depression sunk into the limestone floor, becoming quite deep near the far end[if filled].[paragraph break]The shattered wreckage of the church stairway lies half submerged in the water-filled depression. You're lucky to have missed it in your fall.[end if].". The Vaulted Tunnel is southeast from the Sewer Tunnel.

The sewer water is scenery in the Vaulted Tunnel. "The water is dark, brackish brown, and utterly foul. An oily sheen covers its surface, and occasionally small lumps float by -- lumps of what, you'd rather not guess.".

Part 3 - Hatch & Outflow

The old iron hatch is a closed door. The old iron hatch can be oiled. It is not oiled. The initial appearance of the old iron hatch is "[if the player is in the Broken Tunnel]Set in the low ceiling is an old iron hatch[otherwise if open]Much of the water is pouring through an open hatch set in the floor of the tunnel[otherwise]Set in the floor of the tunnel is an old iron hatch[end if].". The description of the old iron hatch is "It's a rectangle of corroded metal, just over a foot long on each side. It's currently hanging [if open]open[otherwise]closed[end if]." The old iron hatch is up from the Broken Tunnel and down from the Outflow Tunnel.

Check opening the old iron hatch: if the old iron hatch is not oiled, say "You dig your fingers under the edge and tug, but the hinges are rusted nearly solid. You can't make it budge." instead. After opening the old iron hatch: say "The oiled hinges give a little, allowing you to wiggle your fingers further under the door's edge. A sharp tug -- and the door swings down suddenly, spilling filthy water into your face.".

The Outflow Tunnel is a dark room. "From the smell of it, this must be a sewage outflow tunnel. Filthy water swirls past a metal grate to the west and eddies around your hands and knees, on which you are forced to crawl in this cramped cylindrical passageway. To the east, the tunnel narrows still further, terminating about twenty feet further in a circle of dim light.". Narrow Beach is east of the Outflow Tunnel. Report going east from the Outflow Tunnel: say "You reach the end of the pipe and wriggle your way out, dropping awkwardly to the sand.".

The grate is scenery in the Outflow Tunnel. "The grate is heavy and solidly embedded in the concrete. Bits of filth and slime brought down by the water cling to the bars. It completely blocks further progress west.". Check going west from the Outflow Tunnel: say "The thick metal grate blocks further progress up the tunnel." instead.

Volume 7 - South of Town

Book 1 - Open Road

Part 1 - Deserted Lane

Deserted Lane is a room. "The gently winding lane makes its way through the birch woods south of town. New England foliage is famous for its splendid colors in the fall, but the oppressive weather and pervading murk have leached these trees of most of their tint. The road continues south into the increasingly dense forest, and in the other direction heads back to town. A paved walk also leads east through the trees." Instead of going nowhere from Deserted Lane, say "Even if the woods weren't so singularly uninviting, the underbrush is too thick to wade through, and there are no paths.". It is south from Chilly Avenue.

Part 2 - Down the Road

Down the Road is a room. "The forest grows denser as you go, crowding thickly up to either side of the road. The groping, tangled branches block out what little sunlight there is left. Your footsteps are muffled; whispering leaves and the slow drip of water are the only sounds you can hear. Beyond the watching trees, the shadows are impenetrably thick. The road stretches interminably, north to south[if the stump is not nowhere].[paragraph break]At the edge of the forest, on the west side of the road, stand the rotted stump and twisted sapling from your dream[else if the trees are familiar].[paragraph break]There's something strangely familiar about the woods here... scenes from last night's dream flicker through your memory, but you are unable to recall the details[end if]." It is south from Deserted Lane.

Instead of going south from Down the Road, say "You walk a bit farther down the road, but it doesn't seem to lead anywhere, and the shadows grow thicker the farther down you go. After a while you turn back, unable to suppress a shiver." instead. Instead of going west from Down the Road when the stump is nowhere, try going east instead. Instead of going nowhere from Down the Road, say "Even if the woods weren't so singularly uninviting, the underbrush is too thick to wade through, and there are no paths.".

The stump is scenery. "It's the rotted stump of a tree that must have fallen long ago. It's unremarkable, almost completely buried by the underbrush; the only reason you even noticed it is because of your dream.".

The sapling is scenery. "A bent and stunted sapling, barely taller than you are, grows from the mulchy ground around the rotting stump. It's a perfectly ordinary-looking sapling, just like many others you've spotted growing here in and there among the trees -- except that this one was in your dream.".

Book 2 - The Slaughterhouse

Part 1 - Trampled Path

The Trampled Path is a room. "The tangled undergrowth has been beaten down in a path leading roughly from the east to the southwest. Shrubs and grass have been flattened and pushed aside, vines torn down, and small trees bent or even snapped in half, as though something heavy with huge, flat feet had simply trampled its way through.". Instead of going nowhere from the Trampled Path, say "Even if the woods weren't so singularly uninviting, the underbrush is too thick to wade through, and there are no paths.". The Trampled Path is west from Down the Road.

Part 2 - Abandoned Slaughterhouse

The Abandoned Slaughterhouse is a room. "The decayed remains of an old slaughterhouse stand here, now little more than a shell of crumbling brick and gaping holes, surrounded by a clearing of yellow, sickly grass. A path leads northeast, back toward the road; to the west, a gaping hole that might once have been a doorway leads into the rotting building.". The notion of Abandoned Slaughterhouse is "The forest is unnaturally quiet here, you notice; there are no birds calling, no leaves rustling or branches creaking; even the whippoorwills have fallen silent. All is still, holding its collective breath in an expectant hush.". The Abandoned Slaughterhouse is southwest from the Trampled Path.

The walls are scenery in the Abandoned Slaughterhouse. Understand "building", "remains", "shell", "brick" as the walls. "The ancient walls are barely even holding themselves together. The only reason you can tell it used to be a slaughterhouse is the faded paint on one wall: 'Crompton Meat Processing'.".

Part 3 - Crumbled Ruin

The Crumbled Ruin is a room. "The roof has collapsed, leaving the interior open to the sky; the floor is nothing but bare, beaten dirt. Gaps in the bricks lead east and south. Although nothing stands now but the tottering, crumbling stonework (and that only barely), you fancy you can still detect a faint miasma of death -- a palpable, chilling reminder of the bloody work which once went on within these walls.[paragraph break][if the animal tracks are handled]Faint tracks mark the dirt here; large, rounded footprints tracking back and forth across the ground[otherwise]There's something odd about the ground here; some faint marking or pattern[end if].". The Crumbled Ruin is west from the Abandoned Slaughterhouse.

The animal tracks are scenery in the Crumbled Ruin. Understand "pattern", "marking" or "ground" as the animal tracks. "The marks in the dirt are tracks of some kind, but not of any animal you're familiar with, unless there's a lame elephant loose in the New England woods. The prints are large -- quite a bit larger than your outspread hand, and vaguely round. They criss-cross the ground in every direction. Whatever made them obviously lives here, or at least visits quite often.". After examining the tracks, now the tracks are handled.

The old rusty meat hook is a thing in the Crumbled Ruin. The initial appearance of the meat hook is "An old rusty meat hook sticks out of the ground nearby, its point half-buried in the dirt.". The description of the meat hook is "The crossbar fits in your palm, leaving the hook part to stick out between the third and fourth fingers. It's a heavy sucker, nearly fifteen inches long from handle to point, made for hauling around carcasses with a minimum of ceremony. You wouldn't like to think what this could do to a living person.".

The tattered paper is a thing in the Crumbled Ruin. The initial appearance of the tattered paper is "Over in the far corner, a tattered sheet of drawing paper lies discarded on the ground.".  The description of the tattered paper is "The drawing is of a pair of crudely rendered figures, scrawled with dark, heavy lines that occasionally punch right through the paper. The two figures are holding hands. The one on the left is a smiling woman with long, straight hair; the one on the right...[paragraph break]Well, you don't know. Frankly, you'd rather not speculate. An octopus on human legs, maybe, if you could believe any healthy child would conceive of such a thing. Above the first figure is scribbled the word 'MOMY'; above the second, 'WILAM (ME)'.". Instead of reading the tattered paper, try searching the tattered paper.

Part 4 - Old Stone Well

Behind the Slaughterhouse is a room with the printed name "Old Stone Well". "Beyond the south wall of the old slaughterhouse, there is nothing but a tangled thicket so dense as to be impenetrable in every direction except to the north, where you can slip back into the ruined slaughterhouse through a hole in the wall.[paragraph break]Rising from the midst of the underbrush is a squat circle of stone: the top of an ancient well. A rotting [circle of plywood] [if the circle of plywood is handled]leans against the side of the well[otherwise]covers the opening[end if]". Behind the Slaughterhouse is south from the Crumbled Ruin.

The circle of plywood is an unmentioned thing in Behind the Slaughterhouse. The description of the circle of plywood is "Nothing but a thick sheet of plywood cut into a rough circle, about a yard across.". Before taking the circle of plywood, say "The plywood cover is far too heavy to lift.". Instead of pushing the circle of plywood:
	if the circle of plywood is handled:
		say "It took all your effort just to tip the cover off the well; you don't think you could muster the strength to heave it back on again." instead;
	otherwise:
		say "You dig your fingers under the edge of the plywood and, straining as hard as you can, manage to slide the heavy cover off the top of the well and onto the grass.";
		now the circle of plywood is handled.

Before going down from Behind the Slaughterhouse: if the plywood is not handled, say "You can't, since the wooden cover is in the way." instead.
	
Part 5 - In the Well
	
Well Bottom is a room with printed name "In the Well". "The sky is a dim circle of light far above you. The stone walls press in on you from all sides, and the air is clammy and frigid. A faint odor of decay drifts up from the floor; the smell of a trapped animal decomposing under the back porch.[paragraph break]You are [if the player is in the bones]hiding, buried beneath the bones[otherwise]standing knee deep in a rattling jumble of children's bones[end if].". Well Bottom is down from Behind the Slaughterhouse.

The kids bones are scenery and an enterable container in Well Bottom. "You can deduce only two things about the gruesome pile: there are more bones here than could be produced by a single child, and some of the bones are older than others. Whoever has been throwing them down here has been doing it for a long time.".
	
Instead of searching the bones:
	if the location of the teddy bear is nowhere:
		say "You notice a tuft of brown among the yellowed-ivory of the bones. Moving aside a clattering pile of ribs, you discover a child's teddy bear.";
		now the teddy bear is in the Well Bottom;
	otherwise:
		continue the action.

Instead of entering the bones:
	if the location of the teddy bear is nowhere:
		now the teddy bear is in the Well Bottom;
	say "You burrow down into the bones, piling more bones on top of you for cover while trying to make as little noise as possible[if the location of the teddy bear is nowhere]. In the midst of your digging, you notice a child's teddy bear among the bones[end if].";
	now the player is in the bones.

Instead of exiting when the container exited from is the bones:
	say "The bones fall away, clattering loudly as you stand up.";
	now the player is in Well Bottom.
		
Instead of hiding when the player is in Well Bottom, try entering the bones. Before going up from Well Bottom when the player is in the bones, try exiting instead.

The teddy bear is a thing. The initial appearance of the teddy bear is "Lying among the bones is a child's teddy bear.". The description of the teddy bear is "It is old and threadbare, its fur worn through to the stuffing in some places. Stitched onto its behind is the name 'Jeffrey'".

Book 3 - The Church

Part 1 - Churchyard

The Churchyard is a room. "A low, wrought-iron fence, its spike-tipped bars bent or leaning at crazy angles, surrounds the overgrown yard of this dark, abandoned church. A gap in the fence leads back west, while a bare path beaten through the groping weeds leads around the church to the southeast." Instead of going nowhere from the Churchyard, say "The wrought-iron fence surrounds the entire churchyard; the only way out is to the west, or around that little path to the southeast." The Churchyard is east from Deserted Lane.

The church door is scenery and a door. "At least a dozen sturdy boards have been nailed across the sturdy oak doors; even with proper tools, it would take you days to pry them loose.". The church door is east from the Churchyard. Instead of entering the church door, try examining the church door.

The cfence is scenery in the Churchyard. Understand "fence" or "iron" or "gate" as the cfence. "The fence is about chest-high and topped with nasty iron spikes. Weeds and ground vines wind up through the bars, most of which are bent and some of which are missing altogether."

The achurch is scenery in the Churchyard. Understand "church" as the achurch. "The hoary structure towers over your head, built of massiage and nearly buried beneath an invading tide of ivy. Thsteeple is a jagged silhouette against the brooding sky.".

Part 2 - Behind the Church
	
Behind the Church is a room. "The forest encroaches right up to the iron fence here, some of which is literally buried in the tangled underbrush. There are no doors on this side, although a wooden trap door over by the corner of the building probably leads into a cellar. A path leads southwest, around to the front of the church.".

Southeast of the Churchyard is Behind the Church. Northwest of Behind the Church is nowhere. Before going southeast from the Churchyard, say "The path bends northeast, around the side of the church.".

Southwest of Behind the Church is the Churchyard. Northeast of the Churchyard is nowhere. Before going southeast from the Churchyard, say "The path bends northwest, around the side of the church.".
The iron fence is scenery in Behind the Church. "The fence is about chest-high and topped with nasty iron spikes. Weeds and ground vines wind up through the bars, most of which are bent and some of which are missing altogether.". Instead of climbing the fence, say "The impassable forest grows right up to the fence; even if you could get over the spikes, there's nowhere to go.".

The trap door is a closed locked door and scenery. "The boards are old and warped, but still quite sturdy. It is locked with a heavy padlock." The trap door is down from Behind the Church and up from the Church Cellar.

The padlock is breakable scenery in Behind the Church. Understand "lock" as the padlock. "[if the trap door is locked]The padlock, which is the size of your fist, is so thoroughly rusted that it looks like one huge homogeneous lump of corrosion. Although it's still quite strong, you might be able to break it if you had something heavy enough[otherwise]It's little more than a twisted hunk of torn metal. You'd hardly even guess it was ever used as a padlock[end if].". Instead of attacking the padlock, say "You won't be able to break it with your bare hands."

Instead of breaking the padlock with the hook:
	if the trap door is locked:
		say "You raise the meat hook high over your head and bring it squarely down onto the padlock. The rusted metal casing splits open, the hasp falls loose, and the padlock, now nothing but a broken shell, slides to the ground.";
		now the trap door is unlocked;
	otherwise:
		say "You've done all the damage you can usefully do to the thing.".

Part 3 - Church Cellar

The Church Cellar is a dark room. "Centipedes and beetles scurry away across the rotten floorboards as you shine your light across the room. Over in the corner sits a hulking shape of black metal that was probably once a wood-burning furnace; aside from that, the cellar looks empty. A dark alcove, the shadows within too thick to see through, opens in the west wall, and a trap door in the ceiling leads back up to the outside.[paragraph break]At the very edge of your light's glow, you can just make out a horribly suggestive shape lying in the shadows behind the furnace.".

After going to the Church Cellar for the first time:
	say "As you drop to the floor, the trap door suddenly slams shut above you. You hear noises outside -- something thumping against the door, and low voices. You hear someone muttering, and a brief round of unpleasant laughter. Then the voices drift away.";
	now the trap door is closed;
	now the trap door is locked;
	continue the action.

The wood-burning furnace is scenery and a closed openable container in the Church Cellar. "It's a big, pot-bellied iron furnace, blackened from years of use, with a hatch on one side and numerous twisting pipes which snake out of the top and grope their way up to the ceiling.".

After opening the furnace for the first time, say "Your throat tightens as you slowly open the bloodstained hatch...[paragraph break]Slow horror washes over you. You found exactly what you expected to find, of course. It's the real estate agent's severed head.".

The real estate agent's severed head is a thing in the furnace. The description of the head is "It's the gore-spattered head of the real estate agent -- you recognize her from the cover of a brochure she sent you in the mail several months ago. The eyes are still open and the mouth thrown wide in a silent scream.". Instead of taking the real estate agent's severed head, say "You'd just as soon leave the repulsive thing alone.".

The dead body is scenery in the Church Cellar. Understand "shape" as the dead body. "It's the dead body of a woman. Her head has been raggedly hacked away, and her clothes above the waist are soaked through with blood. As you fight to control your rising gorge, you note that the body cannot have been here for very long; the decay, though bad, is not very far advanced. She must have been killed within the last couple of days at most.".

Instead of searching the dead body:
	say "Gingerly, trying to avoid the worst of the blood, you lift the woman's lapel, hoping to find something -- identification, maybe. Her wallet is missing; however, you do find, tucked into the pocket of her blazer, a small, steel key.";
	now the small steel key is in Church Cellar;
	try taking the small steel key.
	
The small steel key is a passkey. The description of the small steel key is "It looks like the kind of key that would open a desk drawer.". The small steel key unlocks the small drawer.

Part 4 - Empty Stairwell

To drop (N - thing) into the pit:
	say "[The N] drops down out of sight, and a few seconds later you hear a faint splash.";
	if N is lit, now N is unlit;
	now N is in the Vaulted Tunnel.

To drop the player into the pit:
	if the player encloses the flashlight, now the flashlight is unlit;
	if the player encloses the lantern, now the lantern is unlit;
	now the lantern is unlit;
	now the player is in the Vaulted Tunnel.
	
The stairwell shaft is backdrop. Understand "pit" as the stairwell shaft. "The walls of the shaft are rough stone, dropping down farther than you can see.". The stairwell  shaft is in Empty Stairwell and Broken Stairs. Instead of inserting something into the stairwell shaft, drop the noun into the pit.

The Empty Stairwell is a dark room. "This alcove used to house a stairwell leading up and down; now it contains only a few rotted boards jutting from the walls and an empty shaft dropping down out of sight. Above you hang the broken-off remains of the stairs leading up to the ground floor, the last shattered riser only a couple of tantalizing feet out of reach.". The Empty Stairwell is west from the Church Cellar. The Empty Stairwell is up from the Empty Stairwell. The Empty Stairwell is down from the Empty Stairwell. Instead of going up from the Empty Stairwell, say "You can't quite reach the bottom riser of the stairs above you.". Instead of going down from the Empty Stairwell, say "The pit at your feet is dark and fathomless; there's no way to safely descend from here.". Instead of going nowhere from the Empty Stairwell, say "Unless you plan to walk straight out over the empty pit, the only way from here is back east to the main cellar.".

Instead of jumping in the Empty Stairwell:
	say "You take a few steps back, draw in a deep breath, and make a dash for the edge. At the last possible second you jump, sailing out over the pit as you make a desperate grab for the bottom riser...[paragraph break]... and catch it[if the player carries something].[paragraph break]Unfortunately, you lose your grip on [the list of things carried by the player], and they tumble into the darkness below[end if].[paragraph break]The riser bends ominously under your weight but doesn't give. Panting, you haul yourself up onto the creaking stairs.";
	repeat with C running through the list of things carried by the player:
		drop C into the pit;
	now the player is in the Broken Stairs;
	the broken stairs creak in one turn from now;
	the broken stairs shift in two turns from now;
	the broken stairs fall in three turns from now.

Part 5 - Broken Stairs

The Broken Stairs is a dark room. "The stairs stop short about seven feet shy of the basement floor, the bottom-most steps hanging suspended over an empty shaft that descends beyond sight into the shadowy depths. What's left of the structure creaks and shifts uneasily under your feet. At the top of the stairs to the north, a doorway opens onto the ground floor of the church."

The bstair is scenery in the Broken Stairs. Understand "stairs" as the bstair. "The whole structure seems very unstable. Yours is probably the first weight it's had to support in decades.".

The railing is scenery. "This length of railing is the only part of the stairs that didn't pull free of the wall and go crashing into the empty shaft below.".

At the time when the broken stairs creak: if the player is in the Broken Stairs, say "The creaking under your feet is getting louder.".

At the time when the broken stairs shift: if the player is in the Broken Stairs, say "The stairs give forth a loud, long groan, punctuated by a splintery crunch. The structure lurches about five heart-stopping degrees to starboard, nearly throwing you off balance.".

At the time when the broken stairs fall:
	if the player is in the Broken Stairs:
		say "With a sudden, painful shriek of nails ripping out of stone, the stairway pulls free of the shaft wall and topples into the depths, carrying you along with it. When you finally strike the bottom, your fall is not broken by hard, flat stones, but by a forest of jagged, splintered boards and rusty nails. You are impaled in several places, none of them vital, and it takes you a tragically prolonged time to actually die.";
		end the story saying "You have died";
	otherwise if the player is in the Vestibule:
		say "From the stairwell behind you there is a sudden, painful shriek of nails ripping out of stone, a loud, protracted splintering, and finally a thunderous crash that seems to echo up the shaft from far below.";
	otherwise:
		say "You hear a faint, echoing crash from the direction of the Vestibule.";
	now the description of the Broken Stairs is "The stairs are completely gone, now. All that's left is a narrow ledge overlooking an empty shaft, and a fair portion of the railing still nailed to the wall[if the length of rope is tied].[paragraph break][The rope] is tied to the railing, its other end dangling out of sight in the dark shaft[end if].";
	now the railing is in the Broken Stairs;
	now the Vaulted Tunnel is filled.

Part 6 - Vestibule

The Vestibule is a dark room. "A dim antechamber, opening onto the main chapel to the east. To the west, the main doors to the church have been solidly nailed shut, and through a shadowy doorway to the south you can see stairs leading down.". The Vestibule is up from the Broken Stairs. The Vestibule is north from the Broken Stairs. Instead of going west from the Vestibule, say "The main entrance of the church has been nailed shut; there's no way out of here.".

The hooded robe is a wearable thing in the Vestibule. Understand "cloth" as the hooded robe. The initial appearance of the hooded robe is "Piled in one dusty corner is a heap of old cloth.". The description of the hooded robe is "[if the robe is not handled]It's a hooded robe, left in a rumpled heap on the floor.[paragraph break][end if]The robe is made of some rough, heavy material, dyed a deep, murky red, like old wine. Its voluminous folds would easily cover you head to toe.". After taking the hooded robe for the first time: say "You shake the cloth out, revealing it to be a hooded robe.". Check wearing the hooded robe: if the player is wearing the trench coat, say “You’ll have to remove your coat first.” instead.

Instead of inserting the robe into the trench coat, say "No matter how tightly you roll up the heavy robe, it is still too big to fit in your pocket.".

Part 7 - Chapel

Chapel Front is a dark room with printed name "Chapel". "Broken shards from the shattered the stained glass windows grits under your feet as you step around rows of overturned pews. The dust and cobwebs have been busy here, reclaiming another bit of this town's abandoned history. To the west lies the vestibule; to the east, a small doorway behind the pulpit leads to the back of the church.[paragraph break]The big wooden cross that once hung above the pulpit has fallen, split in half.". Chapel Front is east from the Vestibule.

The pews are scenery in Chapel Front. Understand "benches" as the pews. "The once orderly procession of benches is now a jackstraw jumble of broken wood.".

The cross is scenery in Chapel Front. "From the way it fell, it looks as though it must have been hung upside-down.".

The pulpit is scenery and a supporter in Chapel Front. "Where once fiery-tongued preachers harangued congregations of quaking Puritans, now there is simply a dusty wooden box on its end. Sitting atop it is a huge, black-bound tome.".

The huge black tome is a thing on the pulpit. Understand "book" as the huge black tome. The huge black tome can be dangerous. The huge black tome is not dangerous. The description of the tome is "It lies open atop the pulpit, thicker than an unabridged dictionary. Its thousands of yellowed, crinkly pages are bound in a strange black material that looks like some kind of hide but clearly isn't leather. Your first thought was that it might be a Bible, but a glance is sufficient to tell you otherwise. The text within is arranged in two columns, the first in what looks like Latin, the second a translation in English. There are illustrations, as well: horrible icons that make your skin crawl to look at.". Instead of taking the huge black tome, say "A horrid coldness seeps into your fingers as you try to pick the book up; it flows from the book itself into your body, soaking into your bones and making your back teeth ache. Quickly, you set the book down again, absently trying to rub the unpleasant sensation from your hands.".

Instead of reading the huge black tome for the first time:
	say "As you lean closer over the pages to make out the words in this dim light, the letters seem to writhe and crawl across the page, twisting themselves into strange combinations, horrible words that you've never read before... and yet, somehow, you can understand their repulsive meaning. Something about a 'Blessed Event',  which will happen very soon, and a hideous god whose name may not be spoken...[paragraph break]Is this the book that was preached in this church before it fell to ruin? Are these the gods these people worshipped? You want to tear your eyes from the page in revulsion, but some small, gleefully filthy part of you wants to keep reading, to uncover the secrets that the people of Anchorhead uncovered...[paragraph break]Read on at your own peril.";
	now the huge black tome is dangerous.

Instead of reading the huge black tome:
	say "Stifling your sense of self-preservation, you read on in the horrible text.[paragraph break]As your hungry eyes lap up word after blasphemous word, it all becomes clear to you: you come to understand the true nature of He Who Is Named Not, and what the Verlacs were trying to accomplish all these years, preparing the people of Anchorhead for the Blessed Event... it all makes sense to you now.[paragraph break]You step back, smiling, from the podium. There's no need to be afraid, you realize, for neither yourself nor your husband are in any danger. It's all right. It all makes sense. And when you raise your hands to your face and slowly push the fingernails of your first and middle fingers into each eye, digging the soft, bloody tissue out and dragging it down your cheeks in ropy smears... why, that's all right, too.[paragraph break]It's the most natural thing in the world.";
	end the story saying "You have died".
	
Part 8 - Behind the Chapel

Chapel Rear is a dark room with printed name "Behind the Chapel". "This little room behind the chapel is hardly bigger than a broom closet. A ladder bolted to the wall leads up through a hatch, presumably up into the steeple.". Chapel Rear is east from Chapel Front.

The chapel ladder is scenery in Chapel Rear. "It's an ordinary wooden ladder.".

Part 9 - Steeple

The Steeple is a dark room. "A tiny space inside the tip of the church's steeple, barely five feet across, the walls tapering to only two feet across some twelve feet above your head. There is a narrow window, but it seems to have been painted black at some point. The only exit seems to be the ladder from which you just emerged." The Steeple is up from Chapel Rear.

The narrow window is scenery in The Steeple. "It's just an ordinary-looking narrow window.".

The length of rope is a thing in The Steeple. The rope can be tied. The rope is tied. The initial appearance of the length of rope is "An old length of rope dangles down from a square hole cut in the ceiling.". The description of the length of rope is "It's about twenty feet long, frayed in a few places but still sturdy enough.".

Instead of taking the length of rope when the length of rope is tied, try pulling the length of rope. Instead of pulling the length of rope when the length of rope is tied, say "You tug on the rope, but it seems firmly attached to whatever it's tied to at the top of the steeple.".

The Steeple is up from The Steeple. Instead of going up from The Steeple: if the length of rope is tied, try climbing the length of rope; otherwise say "You can't go that way.". Instead of climbing the length of rope when the length of rope is tied:
	say "You haul yourself up onto the rope, bringing your whole weight to bear. It holds for about three seconds -- then there is a sharp snap from above you and a muffled clank. The rope falls, spilling you to the floor amidst an untidy tangle of coils.";
	now the length of rope is handled;
	now the length of rope is not tied.

Instead of tying the length of rope to the bstair:
	try tying the length of rope to the railing.

Instead of tying the length of rope to the railing:
		say "You tie the rope securely to the railing, letting the other end dangle down into the dark shaft.";
		now the length of rope is tied;
		now the length of rope is in the Broken Stairs.

Instead of tying the length of rope to something:
	say "There's no good spot on [the second noun] to tie the rope to.".

Instead of taking the length of rope when the rope is tied, try untying the length of rope. Instead of untying the length of rope when the rope is tied:
	say "You untie the rope from the railing and haul it back up.";
	now the length of rope is not tied;
	now the player is holding the length of rope.

Part 10 - Handing from the Rope

Rope Bottom is a dark room with printed name "Hanging from the Rope". "Your feet dangle over empty space. Looking down, you can barely make out a faint glimmer of water, far below." Rope Bottom is down from the Broken Stairs.

Instead of climbing the rope when the rope is tied:
	if the player is in the Broken Stairs, try going down;
	otherwise try going up.

Before going to Rope Bottom:
	if the length of rope is not tied:
		say "There's no way down from here, and it's too far to jump." instead;
	otherwise:
		say "Gripping the end of the rope tightly, you lower yourself off the edge and shimmy down into the darkness.";
		continue the action.

Instead of going nowhere from Rope Bottom, say "You're at the end of the rope; there's nowhere else to go.". Instead of jumping when the player is in Rope Bottom:
	say "You take a deep breath, shut your eyes tight, say a quick prayer... and let go of the rope.[paragraph break]The heart-stopping plunge lasts only a second or two before you hit shockingly cold water[if the player encloses the flashlight or the player encloses the lantern]. Your light goes out and blackness envelopes you[end if]. Water rushes into your mouth and nose; the stone bottom slams into your side and nearly knocks the wind out of you... and then you find your feet, and your head breaks the surface. Blindly, you thrash about until you find higher ground, and you crawl, choking and sputtering, feeling cold brick beneath your fingers.";
	drop the player into the pit.

Volume 8 - Mansion

Interior Rooms is a region. Dining Room, Kitchen, Back Hall, Gallery, Sitting Room, Upstairs Hallway, Kid's Room, House Library, Study, Attic, Attic Cell, Corridor1, Corridor2, Corridor3, Corridor4, and Corridor5 are in Interior Rooms.

Suite is a region. Master Bedroom and Master Bathroom are in Suite.

To light the mansion:
	repeat with x running through rooms in Interior Rooms:
		now x is lit.

To darken the mansion:
	repeat with x running through rooms in Interior Rooms:
		now x is unlit.

Book 1 - Main Entry

Part 1 - Scenic View

Scenic View is a room. "The treeline falls away on the north side of this northwest-northeast bend in the road, giving way to a panoramic view of the Miskaton River Valley and the grubby little town of Anchorhead nestled within it. From here you can see the paper mill almost directly to the north; the solitary lighthouse and surrounding ocean to the northeast; and the dilapidated stone church below you to the east. Winding through it all is the oily black ribbon of the Miskaton, and almost directly in the center lies the little clearing of Town Square. You can just make out the shape of the obelisk from here.". It is southwest of Chilly Avenue.

Obelisk view is scenery in Scenic View. "You can just make out the shape of the obelisk from here." Understand "town" and "square" as obelisk view.

Mill view is scenery in Scenic View. "The dark structure of the paper mill squats broodingly in the crook of the Miskaton river.".

Lighthouse view is scenery in Scenic View. "The lighthouse stands tall against the horizon, a dingy white tower amidst a gray sky and a grayer sea. Despite the ominous cast to the weather, no beacon is shining from the tower's top.".

Ocean view is scenery in Scenic View. "The great, gray ocean stretches out as far as you can see, merging with the clouds on the horizon.".

Church view is scenery in Scenic View. "The old stone church lies to the east, its tottering steeple rising high above the dead, groping branches that surround it.".

River view is scenery in Scenic View. "The Miskaton winds down from the northwest, then bends in a more easterly direction some miles west of town. Its last half-mile or so neatly divides the town of Anchorhead in half before emptying into the sea. Its waters are murky and torpid, hiding many old secrets in its languid depths.". Understand "river" and "miskaton" as river view.

Part 2 - Outside the House

Outside the House is a room. "The lane runs up from the southeast and ends at a wide clearing surrounded by gnarled and ancient trees. A wide, curving driveway runs up to the front door of your house, which lies north.[paragraph break][if unvisited]The fabled Verlac family mansion looms before you in the gloom, its dark creaking presence dominating the clearing and, somehow, even though it is not visible through the trees, the entire valley. The foreboding shadow of the Verlacs seems to enshroud all of Anchorhead from here.[otherwise]The Verlac mansion looms before you, casting an air of menace over the clearing.[end if]". It is northwest from Scenic View.

The driveway is scenery in Outside the House. "The gravel driveway curves in a wide loop around the clearing, running up to the front door of your house and then sweeping back around to rejoin itself.".

The Verlac Mansion is scenery in Outside the House. "The house comprises two stories and an attic, and a smaller domed cupola atop the roof. Its windows are unlit and tightly shuttered, its roof steep and precipitous, and its grounds unkempt and strewn with weeds. The place unmistakably radiates an aura of thick, cold malevolence.". The Verlac Mansion has text called headline.

The front door is scenery and a lockable locked door. The description of the front door is "The front door is a huge, paneled slab of black oak adorned with a brass knocker in its center." It is north of Outside the House and south of Foyer.

The typewritten notice is a thing with printed name "a typewritten notice". "A typewritten notice has been attached to the front door." The printing of the typewritten notice is "It's a letter from the Arkham Regional Utilities Company, explaining that, due to wiring difficulties, the electricity will not be installed until next week. No phone service, either." The typewritten notice is in Outside the House. After reading the typewritten notice for the first time: if Michael is visible, say "'Well, that's wonderful news,' remarks Michael dryly, reading over your shoulder.".

Part 3 - Foyer & Hall

The Foyer is a room. "Although it appears spacious from the outside, the house's interior feels cramped and gloomy. The walls seem too close together; the ceiling is too high. The doorways, leading in several directions, are narrow and filled with shadows, and the stairs leading up to the second floor are steep and rickety. This is not a house that makes you feel welcome. It is a house that makes you feel tiny and timid, and afraid of dark places. It is a house that makes you feel alone.[If the front door is open][paragraph break]The front door stands open to the south.[end if][if unvisited][paragraph break]Carelessly stacked in a towering heap in the middle of the room are all your luggage and belongings, which you had sent ahead through a moving company before driving up to Massachusetts. Everything you own is boxed away and piled up in the middle of the floor. The reality of this move finally slams home as you stare at the sprawling jumble of stuff, and suddenly you feel very lost and adrift.[paragraph break]Night has now undeniably fallen, and the house is very, very dark. There is probably just enough residual ambience to feel your way upstairs to the bedroom, but the rest of the house is a tenebrous maze of shadows, and any exploring would probably best be done in the morning.[otherwise][paragraph break]Your luggage is still here, spread out all over the foyer.[end if]".

The luggage is scenery in the foyer. "It's all a huge, hopeless mess. Just looking at it instantly drains you of any desire to unpack.". Instead of searching the luggage, say "Honestly, you just can't muster enough motivation.".

[ A cold, noiseless draft coils through the narrow entrance hall. You shiver, wondering where it came
from. ]

The Back Hall is a room. "A short hallway, connecting rooms to the east, west and south.". The Back Hall is north from the Foyer. The Back Hall is west from the Gallery. The Back Hall is east from the Kitchen.
	
Book 2 - First Floor

Part 1 - Sitting Room

The Sitting Room is a room. "The east wall is occupied by a beautiful antique sofa, and a large, hand-woven rug covers the hardwood floor. The huge marble fireplace in the north wall helps complete the impression of comfort and warmth, and for a moment or two you can almost think of this place as somewhere you could live, as opposed to merely somewhere others have died. The foyer lies west, and a doorway to the left of the fireplace leads north.[paragraph break][if visited]The portrait gazes down at you with crimson-edged malice[otherwise]Your brief sense of comfort quickly drains away, however, as you become aware of the icy and maniacal stare emanating from the great portrait hanging over the mantelpiece. Under the malefic gaze of those red-rimmed eyes, the most comforting thought you can muster is that of immediate flight[end if]." The Sitting Room is east of the Foyer.

The ssofa is scenery in the Sitting Room. Understand "sofa" and "couch" as the ssofa. "It's a 19th century William IV-style sofa with wide, flaring armrests and beautifully scrolled mahogany woodwork. The upholstery is a soft, faded wine color.". Instead of entering the ssofa, say "Best not - it doesn't seem made for sitting.".

The fireplace is scenery in the Sitting Room. Understand "marble" as the fireplace. "The fireplace is carved from beautiful, dark-veined marble, a strange shade that is not quite a deep, forest green and not quite a murky, dusky red.".

The portrait is scenery in the the Sitting Room. Understand "painting" and "picture" as the portrait. The description of the portrait is "The man in the portrait is the apotheosis of everything cruel and inhuman that you have ever laid eyes on. His archaic Puritan dress would indicate that he must have lived a very long time ago; perhaps he was the founder of the Verlac family in this region. If so, it's no wonder they all wound up murdered or mad: the red-rimmed eyes glaring down from his gaunt and haggard face seem to blaze with a terrible insanity. There is nothing regal, fatherly or dignified about this portrait. It is the essence of raving, gibbering evil captured on canvas.". Every turn while the portrait is visible:
	if a random chance of 1 in 7 succeeds:
		say "A subtle movement from the portrait makes you turn. For a moment, it seems like the eyes are looking directly at you, but it's only a trick of the light.".

The album is a thing in the Sitting Room. "On the sofa is a family album.". The description of the album is "It's a slim, hardbound volume in dark leather, unadorned except for name 'Verlac' embossed on the front. Glancing at the title page, you notice two details: one, the book was self-published; and two, it was published in 1944. So it's a good bet that Edward Verlac and his family aren't mentionedhere.". Instead of consulting the album about: say "[the album content for the topic understood].".

Part 2 - Gallery

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

Part 3 - Dining Room

The Dining Room is a room. "Much of the elegance has faded from this room. The huge dining table running the length of it is covered with a thick gray film of dust, and the china cupboard standing against the far wall is draped in shadow. Doorways to the north and east offer little relief from the gloom. For what must be the hundredth time, you wish you could open the windows in this place.". The Dining Room is south from the Kitchen. The Dining Room is west from the Foyer.

The dinner table is a supporter and scenery in the Dining Room. Understand "dust" as the dinner table. "It's a finely built table, a valued antique like much of the furniture in this house. It will need to be oiled after so many months of neglect, though.".

The cupboard is a closed openable container in the Dining Room. Understand "cabinet" as the cupboard. "It's a free-standing cabinet about as tall as you are, crafted of cherrywood. The double paneled doors are [if cupboard is open]open[otherwise]closed[end if].". Report opening the cupboard: say "The cupboard is empty; the china must have been auctioned off, in the confusion before Michael was contacted, perhaps. Down at the bottom of the cupboard is a velvet lining, where the silverware would usually be kept."; rule succeeds.

The velvet lining is scenery in the cupboard. "The lining is soft, dusky burgundy. One corner in back is pulled up a bit and slightly torn.". Instead of pulling the lining:
	if the torn journal is nowhere:
		say "You pull the lining back a bit further and discover a thin, palm-sized journal tucked underneath it. Intrigued, you pull the little book free.";
		now the player has the torn journal;
	otherwise:
		say "No need to vandalize the place further.".

The torn journal is a thing. The description of the torn journal is "[the torn text]". After reading the torn journal for the first time, record "find-torn" as accomplished.

Part 4 - Kitchen

The Kitchen is a room. "Where once pots and skillets and various utensils hung in profusion, the kitchen walls are now merely ranks of dusty cabinets and a forest of empty hooks. Doorways lead east and south, a small pantry lies to the northwest, and the back door to the north leads out of the house.". The notion of the Kitchen is "An odd feeling of gloom overtakes you momentarily, and you find yourself thinking about the Verlac family's personal effects -- the everyday mundanities, such as kitchen utensils. Were they thrown out, or donated to charity, or auctioned off as grisly souvenirs? What about the canned goods? Did anyone think to take them? The cabinets might even still be stocked. Morbidly, you wonder what Mrs. Edward Verlac might have been cooking for dinner the night her husband blew her head off.".

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

Part 5 - Pantry

The Pantry is a dark room. "The pantry is empty save for a layer of dust on the shelves. A door to the south leads down to the cellar, or you can return to the kitchen to the southeast.". The Pantry is northwest of the Kitchen.

The shelves are scenery in the Pantry.

The broom is a thing in the Pantry. The initial appearance of the broom is "Leaning in the corner is an old broom.". The description of the broom is "It's just an ordinary-looking broom.". Instead of inserting the broom into the trench coat, say "The broom is too long to fit in your pockets, deep though they are.".

The cdoor is a closed locked door and scenery with printed name "cellar door". Understand "door" and "cellar" as the cdoor. It is down from the Pantry and up from the Main Cellar. Instead of going south from the Pantry, try going down.

Book 3 - Basement

Part 1 - Cellar

The Main Cellar is a dark room with printed name "Cellar". "The old, flagstone walls gleam with unwholesome-smelling moisture, and the sagging timbers creak uneasily above your head. Ancient, frayed wiring festoons the ceiling like some strange species of clinging vine. Portions of the cellar extend south and east into the clammy darkness, though you could always beat a hasty retreat up the stairs to the north.[paragraph break]One largish bundle of wires leads down to a rusty old fuse cabinet bolted to the far wall.".

The timbers are scenery in the Main Cellar. Understand "timber" as the timbers. "The ancient, worm-eaten beams are bent like bows under the strain of holding up the huge, rambling house above them for centuries on end. Every few minutes, one of them gives out an ominous groan as the weight on them settles.".

The wiring is scenery in the Main Cellar. "The wiring runs back and forth across the ceiling in every direction -- wrapped around timbers, in and out of rusted, broken conduits, crossing and re-crossing itself in a dozen places. You can see several places where the insulation is cracked or stripped altogether. It's enough to send any self-respecting fire marshall into conniptions.".

The fuse cabinet is a closed openable container and scenery in the Main Cellar. The fuse cabinet can be handled. "It's an ancient, clunky metal box, about the size of a kid's lunchbox. There's some sort of lettering on the cover, but it's too corroded to read.". Report opening the fuse cabinet:
	if the fuse cabinet is not handled:
		now the fuse cabinet is handled;
		say "It takes some grumbling and some tugging and finally a good, sharp yank, but the cabinet finally pops open." instead.

The fuse plugs are a plural-named thing in the fuse cabinet with printed name "corroded fuse plugs". The indefinite article of the fuse plugs is "some". Understand "plug" as the fuse plugs. The description of the fuse plugs is "There's about two dozen fuses lined up in there, the old-fashioned kind that look like round, glass plugs. Every last one of them is blown.". Instead of taking the fuse plugs, say "You pull one of the fuses out and try to rub some of the grime off. Sure enough, the little metal strip inside is melted to a black, twisted cinder. With a sigh, you plug it back into its socket.".

Part 2 - Storage Room

The Storage Room is a dark room. "Old crates and boxes piled high against the walls make this room seem even smaller and dingier than it actually is, which is saying a lot. A doorway lies north; the other walls contain nothing but shadows and dirt-filled corners.". The Storage Room is south from the Main Cellar.

Junk is scenery in the Storage Room. Understand "boxes" and "crates" as the junk. "The accumulated junk of almost four centuries' worth of one family's strangeness. Most of it is old linens, moth-eaten clothes, newspaper clippings -- exciting stuff like that. There's far more here than you could ever go through, even if you had the inclination to.". Instead of searching the junk:
	if the spider web is nowhere:
		say "You spend some time poking dispiritedly through boxes of second-hand table settings, discarded shoes and outdated encyclopedias, but the only thing you manage to dig up is an old cardboard box full of newspaper clippings, which might make interesting reading later if you can find the time. The only thing at all noteworthy about the room, in fact, is that it desperately wants cleaning; there's even a big, nasty-looking spider web in a corner behind one of the crates.";
		now the spider web is in the Storage Room;
		now the cardboard box is in the Storage Room;
	otherwise:
		say "It would take years to properly sort through all this junk. Just thinking about it makes you tired.".
		
The spider web is a thing. It is fixed in place. Understand "spiderweb" as the spider web. The initial appearance of the spider web is "A nasty-looking spider web fills one dark corner like some sort of sticky, fibrous mold.". The description of the spider web is "Not a pretty, symmetrical spiral web like you see in nature magazines; this is a tangled, ugly mass of dull gray threads spun in every direction, the work of some careless, inebriated arachnid on a weekend binger. Way back in the corner, almost buried beneath the disheveled strands, is an old-fashioned iron key.".

The iron key is a passkey with printed name "old-fashioned iron key". The description of the iron key is "It's an old key, the kind with a round barrel about a quarter-inch in diameter and flat, square teeth.". After taking the iron key for the first time, record "find-iron" as accomplished. The iron key unlocks the crypt door.

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

Instead of rubbing the spider web:
	say "You gingerly stick your hand into the tangled spider web, and something light and skittery crawls across your skin and bites you![paragraph break]Quickly you jerk back, compulsively wiping your hand on your pants. The bite itself didn't hurt all that much, but the thought of spiders crawling around on your skin gives you the willies.";
	the spider bite hurts in 3 turns from now;
	the spider bite really hurts in 5 turns from now;
	the spider bite kills in 7 turns from now.

At the time when the spider bite hurts: say "A wave of dizziness washes over you suddenly, making you light-headed. Your hand is swollen and throbbing a little, and your skin is flushed with an unpleasant, prickly heat. It occurs to you to wonder whether the spider that bit you might have been poisonous.".

At the time when the spider bite really hurts: say "The dizziness hits you again, and you sway as little black ink blots bloom in your vision. Your hand is really hurting now, and you feel short of breath.".

At the time when the spider bite kills:
	say "You are burning up; you can barely see through the waves of blackness washing across your vision. You try to sit down, only to realize that you're already lying on the ground, unable to move. In a disconnected, feverish haze, you vaguely wonder if Michael will find you in time to call the hospital; and that is your last thought before feeling leaves your limbs and your lungs stop working entirely.";
	end the story saying "You have died.".

The cardboard box is an open container. The description of the cardboard box is "It's an old gray shoebox, ragged around the edges, with the lid missing.".

The clippings are a plural-named thing in the cardboard box with printed name "newspaper clippings". The indefinite article of the clippings is "some". The description of the clippings is "It's an old gray shoebox, ragged around the edges, with the lid missing.".

Instead of reading the clippings, display the Table of Newspaper Clippings menu with title "Clippings".

Instead of taking the clippings, say "The box seems old and crumbling. It probably wouldn't survive the journey.".
	
Instead of inserting the clippings into the trench coat, say "You don't have a lid for the box. If you put it in your pocket the clippings will just fall out and get lost.".

Part 3 - Wine Cellar

The Wine Cellar is a room. "This wing of the cellar is even older than the rest, with walls of piled, unmortared stone. The entire room is filled with wine racks. They cover every wall except for one spot to the west, where an exit leads back to the main cellar.[paragraph break]All of the racks are dust-covered and empty except for one against the north wall, which contains some forty or fifty dark bottles.[if unvisited][paragraph break]You are reminded of something Michael told you during the long drive up: about how when the police arrived after the shooting, they found the wine cellar in a shambles -- nearly every bottle thrown to the floor and shattered, and the whole place reeking of rotted grapes. All except the bottles in the north rack. None of those had been touched. No one could posit a motive for it.[paragraph break]You smile a bit, recalling your husband's ability to turn a piece of insignificant trivia into a compelling story. Still, though, now that you're actually standing here... it all seems very strange.[end if][if the wine racks are open][paragraph break]One of the wine racks, along with the wall behind it, have swung back to reveal a dark, windy passage leading north.[end if]". The Wine Cellar is east of the Main Cellar.

The wine racks are plural-named scenery and a closed unopenable door. The wine racks have a number called combo. The combo of the wine racks is 1. "These racks must have at one time contained hundreds upon hundreds of wine bottles. Idly, you wonder which member of the family developed such a taste for what would have been, for the first few generations at least, a sinful vice of the basest kind.". The wine racks are north of the Wine Cellar and south of the Windy Passage. 

The wine bottles are scenery in the Wine Cellar. Understand "dust" as the wine bottles. "Row after row of smooth, dust-covered glass. The wine inside is dark and murky, reminding you, somewhat irrationally, of blood.[if Michael Wanders has happened][paragraph break]There are five bottles in the third row from the bottom that have been handled recently; the fingermarks are clearly outlined on their dusty labels. One label is partially torn and the other is all but faded completely, but at a quick glance you count a Pinot Noir, a Cabernet Sauvignon, and a Cheval Blanc.[end if]".

To prepare the wine puzzle:
	now the bottle marked h is in the Wine Cellar;
	now the bottle marked w is in the Wine Cellar;
	now the bottle marked c is in the Wine Cellar;
	now the bottle marked e is in the Wine Cellar;
	now the bottle marked m is in the Wine Cellar.

The bottle marked h is scenery with printed name "bottle of vintage Cabernet Sauvignon". Understand "h", "vintage", "cabernet" and "sauvignon" as the bottle marked h. "A vintage Cabernet Sauvignon from 1734. A raised letter 'H' has been stamped into the bottom of the bottle.". Instead of turning the bottle marked h:
	now the combo of the wine racks is the combo of the wine racks - 7;
	say "[The bottle marked h] rotates a quarter-turn clockwise, then snaps back with a loud 'click'.".

The bottle marked w is scenery with printed name "bottle of robust Pinot Noir". Understand "w", "robust", "Pinot" and "Noir" as the bottle marked w. "A robust Pinot Noir, vintage 1651; obviously one of those collector's items that just keeps getting more and more valuable as long as you don't open it. A raised letter 'W' has been stamped into the bottom of the bottle." Instead of turning the bottle marked w:
	now the combo of the wine racks is the combo of the wine racks * 11;
	say "[The bottle marked w] rotates a quarter-turn clockwise, then snaps back with a loud 'click'.".

The bottle marked m is scenery with printed name "bottle of light Cheval Blanc". Understand "m", "cheval" and "blanc" as the bottle marked m. "A light Cheval Blanc, 1886. There is a raised letter 'M' stamped into the bottom of the bottle." Instead of turning the bottle marked m:
	say "[The bottle marked m] rotates a quarter-turn clockwise, then snaps back with a loud 'click'.";
	if the combo of the wine racks is 5 and the wine racks are closed:
		say "[paragraph break]A rumbling grating sound suddenly fills the wine cellar, and the racks and a portion of the stone wall behind them swing back, revealing a dark passageway to the north from which blows a hot, foul wind.";
		now the wine racks are open;
	now the combo of the wine racks is 1.

The bottle marked e is scenery with printed name "the bottle with the torn label". Understand "e" and "torn" as the bottle marked e. "The label on this bottle is partially torn away. There is a raised letter 'E' stamped into the bottom of the bottle.". Instead of turning the bottle marked e:
	now the combo of the wine racks is the combo of the wine racks / 3;
	say "[The bottle marked e] rotates a quarter-turn clockwise, then snaps back with a loud 'click'.".

The bottle marked c is scenery with printed name "the bottle with the faded label". Understand "c", "faded" and "Merlot" as the bottle marked c. "This bottle is so old that the label has almost faded beyond legibility, although from what you can make out it is probably a fine Merlot. A raised letter 'C' has been stamped into the bottom of the bottle.". Instead of turning the bottle marked c:
	now the combo of the wine racks is the combo of the wine racks + 1;
	say "[The bottle marked c] rotates a quarter-turn clockwise, then snaps back with a loud 'click'.".

Book 4 - Second Floor

Part 1 - Landing & Hall

Upstairs Landing is a room. "A narrow hallway runs east, from the top of the stairs down the length of the house. To the north, directly opposite the stairs, is the master bedroom.". Upstairs Landing is up from the Foyer.

Upstairs Hall is a room. "The shuttered window at the end of the hall throws a gloomy rectangle of light onto the bare wooden floor. Doorways lead north and south.". The Upstairs Hall is east of Upstairs Landing.

The attic ladder is a closed unopenable door. The initial appearance of the attic ladder is "[if the player is in Upstairs Hall]There is a cord dangling in mid-air here, right about level with your face[otherwise]An odd contraption resembling a complex stack of wooden slats sits in the middle of the floor[end if].". The attic ladder is up from Upstairs Hall and down from Attic. Instead of opening the attic ladder: try pulling the cord instead.

Instead of pushing the attic ladder when the location is the Attic for the first time:
	say "You bear down on the contraption, and suddenly it sinks downward, almost causing you to tumble. With a ratcheting shriek of rusted springs, the contraption unfolds into a rickety ladder, dropping down into the hallway below.";
	now the attic ladder is open.

Report going up from Upstairs Hall:
	say "The ancient rungs creak alarmingly as you ascend.";
	continue the action.

The cord is scenery in Upstairs Hall. It is fixed in place. The description of the cord is "The cord is about four feet long with a little wooden bob on the end. It appears to be attached to a trap door in the ceiling.". Instead of pushing the cord, say "You bat the cord lightly and watch it swing back and forth for a while.". Instead of pulling the cord:
	say "You pull the cord. With a rusty, ratcheting groan and a brief shower of dust, the trap door swings down and folds
back, revealing a rickety wooden ladder leading up into darkness.";
	now the cord is nowhere;
	now the initial appearance of the attic ladder is "[if the player is in Upstairs Hall]A rickety wooden ladder stands here, descending from a three-foot by three-foot square of darkness in the ceiling[otherwise]A rickety wooden ladder descends to the hallway below[end if].";
	now the attic ladder is open.

Part 2 - Master Suite

The Master Bedroom is a room. "The master bedroom is a picture-postcard of rustic New England charm. Faded sketches of rural landscapes adorn the walls; a beautifully carved dressing mirror stands in one corner; an old-fashioned accordion radiator gurgles quietly beneath the window. The most striking feature, an enormous, antique, four-poster bed, must be the largest piece of furniture in the house.[if not visited]

If it weren't for this hopelessly backwater town and the disturbing circumstances surrounding the house, you'd say this was your dream home. Even so, as much as you would like to relax and enjoy the comforts of a fully furnished historical New England estate, you can't help but be put off by the shady aura surrounding the family that used to live here. The last of the line, you remind yourself, recently committed suicide after killing his wife and two daughters with a shotgun. Involuntarily you shiver, glancing nervously at the doorways to the south and west.". The Master Bedroom is north from the Upstairs Landing.

The sketches are scenery in the Master Bedroom. Understand "landscapes" as the sketches. "The sketches are charcoal on yellowed paper, pictures of the surrounding countryside. They're quite pretty, actually, lending an air of comfort to an otherwise cold and moribund house. Each drawing is initialed in the corner - 'J.W.V. - '95'".

The bedroom mirror is scenery in the Master Bedroom. "A flawless mirror in a beautifully scrolled walnut frame. It's about as tall as you are.".

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

The Master Bathroom is a room. "A small chamber of cold, white tile and floral-print wallpaper. It sports a genuine, whitewashed, claw-foot bathtub with a shower attachm

ent, which is a definite plus. The bedroom lies east." The Master Bathroom is west from the Master Bedroom.

Carry out bathing when the player is in the Master Bathroom:
	if the clothes are worn:
		say "(removing your clothing)[command clarification break]";
		if the trench coat is worn:
			try taking off the trench coat;
		try taking off the clothes;
	say "Grateful for the opportunity to relax, you draw a hot bath (the water, at least, is running, even if nothing else in the house is) and soak. The tension of this strange day melts gently from your body. After thirty minutes or so, you begin to feel normal again. After forty-five, you begin to think you might be able to adjust to this place after all. By then the water has begun to cool off, however, so you drain it and quietly dry yourself off. All in all, you feel enormously better.";
	now the player is not dirty.

Part 3 - Kid's Room

The Kid's Room is a room. "This must be the children's bedroom. The bed is smaller than the one in the master bedroom, its bright coverlet providing one of the few feeble splashes of color in what must have been, for most of its history, a joylessly Puritan household. A small vanity table occupies the opposite wall, and in the corner under the window stands an ancient crib. The only exit is to the north.". The Kid's Room is south of the Upstairs Hall.

The vanity is a supporter and scenery in the Kid's Room. Understand "table" as the vanity. The description of the vanity is "A simple vanity table, scaled down for a child, spartan in design and almost wholly without decoration. It's hard to imagine keeping any sort of makeup or jewelry on it, but then again, vanity of even the most innocent kind was probably discouraged in most of the Verlac children.".

The jewelry box is a closed openable opaque container. The initial appearance of the jewelry box is "A child's jewelry box sits on the corner of the vanity.". The description of the jewelry box is "It's hardly larger than your hand, made of wood and charmingly decorated with a picture of children dancing around a Maypole. Most likely a plaything of one of the later Verlac children. The lid is [if the jewelry box is open]open[otherwise]closed[end if].". The jewelry box is on the vanity.

The silver locket is a thing in the jewelry box. The silver locket can be open. The description of the silver locket is "It is oval-shaped, [if the silver locket is open]the clasp open to reveal a tiny picture inside[otherwise]held shut with a tiny clasp[end if].". Instead of opening the silver locket: say "You open the silver locket."; now the silver locket is open; now the child's picture is a part of the silver locket. Instead of closing the silver locket: say "You close the silver locket."; now the silver locket is not open; now the child's picture is nowhere.

The child's picture is a thing. The description of the child's picture is "The boy in the picture looks no more than three or four years old. He is smiling, but there is something disconcerting about his expression, as though his head were not shaped quite right or his features had been placed slightly wrong. He might possibly have been mentally retarded. It's difficult to tell, because the picture has been cropped so closely you can't even see the edges of the boy's face. Only his features fill the tiny frame.". Instead of taking the child's picture, say "It would be a shame to deface such a lovely item.".

The child's bed is scenery in the Kid's Room. The child's bed can be shoved. The description of the child's bed is "Not as fancy as the four-poster, but it looks comfortable enough[if the child's bed is shoved]. The bed has been pushed away from the wall slightly, revealing a ragged hole in the paneling[end if].". Instead of pushing the child's bed:
	if the hole is in the Kid's Room:
		say "You shove the bed back against the wall, covering the hole.";
		now the hole is nowhere;
	otherwise:
		say "Bracing yourself, you push the bed away from the wall, revealing a ragged hole in the wood
paneling.";
		now the hole is in the Kid's Room.

The hole is a fixed in place container. "The bed has been pushed away from the wall slightly, revealing a ragged hole in the paneling.". The description of the hole is "It's about six inches wide, and looks like it was made by by someone breaking in the wall with a hammer and pulling chunks of paneling out with their bare hands".

The soggy pages are a thing in the hole with printed name "bundle of soggy pages". The description of the soggy pages is "It appears to have been someone's diary. There must have been a leak at some time behind the wall where it was hidden, because most of the pages are water-logged and completely illegible. However, portions of a few entries remain untouched.". The printing of the soggy pages is "[the soggy text]". After reading the soggy pages for the first time, record "find-soggy" as accomplished.

Part 4 - House Library

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
	record "find-safe" as accomplished.
	
Instead of taking the tales:
	if the safe is nowhere:
		say "The book slides halfway out, then pops back in with a loud 'snick'. The section of bookshelf slides away, revealing the safe once again.";
		now the safe is in the House Library;
	otherwise:
		say "The book slides halfway out, then pops back in with a loud 'snick'. The section of bookshelf slides seamlessly back into place.";
		now the safe is nowhere.

The safe is an opaque closed container and scenery. It is fixed in place. The safe has a list of numbers called the true combination. The true combination of the safe is { 2, 10, 11 }. The safe has a list of numbers called the current combination. The initial appearance of the safe is "A section of the shelves in the western wall has slid to one side, revealing a hidden safe.". The description of the safe is "It's a stark cube of black, oily steel, fifteen inches to a side. Its only feature is large calibrated dial set into the front[if the safe is open]The safe stands open[end if].". Instead of opening the safe, say "There's no handle on the door; it opens when you get the combination right.". Instead of closing the safe:
	say "The heavy door swings shut with a metallic clunk.";
	truncate the current combination of the safe to 0 entries;
	now the safe is closed.  

To decide which text is the printed combination of the safe:
	[ HACK - the interpreter hangs if I try to decide on "[x]-[y]-[z]" ]
	say (entry 1 of the true combination of the safe);
	say "-";
	say (entry 2 of the true combination of the safe);
	say "-";
	say (entry 3 of the true combination of the safe).
	
To decide if (N - number) is an invalid dial position:
	if N is less than 1, decide yes;
	if N is greater than 60, decide yes;
	decide no.

To set the combination of the safe:
	truncate the true combination of the safe to 0 entries;
	add (a random number from 1 to 60) to the true combination of the safe;
	add (a random number from 1 to 60) to the true combination of the safe;
	add (a random number from 1 to 60) to the true combination of the safe.

To dial (N - number) on the safe:
	say "The tumblers tick quietly as you turn the dial to [N].";
	now the dvalue of the dial is the number understood;
	truncate the current combination of the safe to the last 2 entries;
	add N to the current combination of the safe.

The dial is a part of the safe. It is fixed in place. The dial has a number called dvalue. Dvalue is 13. The description of the dial is "The dial is calibrated from one to sixty. It is currently set to [dvalue of dial].". Instead of turning the dial, say "You idly give the dial a random spin.". Instead of turning the dial to:
	if the number understood is an invalid dial position:
		say "The dial is only calibrated from one to sixty.";
	otherwise:
		dial the number understood on the safe;
	if the safe is closed and the current combination of the safe is the true combination of the safe:
		say "[line break]With a hollow thunk, the safe suddenly swings open.";
		now the safe is open;
		record "open-safe" as accomplished.

The puzzle box is a closed container in the safe. The description of the puzzle box is "It's roughly the size and shape of a cigar box, carved from some dark and oddly streaked wood that you can't identify. All six surfaces are decorated in a complex arrangement of grooves and panels, most of which are illustrated with leering, demonic faces and obscene designs[if closed] As far as you can tell, it is in fact a box, and meant to be opened; however, you see no obvious way to do so[end if].".

The strange black disk is a thing in the puzzle box. Understand "disc" as the strange black disk. The description of the strange black disk is "It's a dark, glassy circle, about the width of your hand in diameter and half an inch thick in the middle, tapering off to thinness toward the edge like a convex lens. Its color is the deep, oily black of obsidian, though you fancy you can see faint swirls of color inside it like the rainbow sheen of oil on water. Its curved surface is cool and perfectly smooth. Although incredibly hard, the material does not feel like stone; there is an odd, yielding quality to it, almost like something organic... almost, you realize with disquiet, like skin.".

Instead of searching the disk: say "Putting it to your eye, you see faint streaks of color. They swirl and dissolve within the strange lens like oil on the surface of water. Gradually it becomes slightly transparent, but the objects seen through it are grotesquely distorted and dark, as though seen in photographic negative.".

Part 5 - Study

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
				record "open-laptop" as accomplished;
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

Book 5 - Upstairs

Part 1 - Attic

The Attic is a room. "It's much cooler up here than in the rest of the house, and you find it hard to suppress a shiver. Grotesque, looming shadows crawl across the low, slanted ceiling, and the dust hangs thick and motionless in the air. To the west the ceiling dips even lower until the space beneath leaves hardly room enough to crawl, while to the north stands a wooden door, draped in shadows and half-hidden by the slanting eaves.".

The attic door is scenery and a closed locked door. The description of the attic door is "It's an ordinary wooden door, unremarkable except for the antique metal keyplate. Beneath the door, a thin line of faint light is barely visible.". The attic door is north from the Attic and south from the Attic Cell.

Instead of putting something under the attic door:
	if the noun is the newspaper:
		say "You slide the newspaper under the door, leaving only an inch or two sticking out on your side.";
		move the newspaper to the Attic;
		now the newspaper is undescribed;
	otherwise:
		say "It doesn't seem like a good fit".

After taking the newspaper:
	if the old-fashioned brass key is part of the newspaper:
		say "Something metallic falls off the newspaper as you pull it out from under the door.";
		now the old-fashioned brass key is in the location;
	now the newspaper is described.

Instead of looking under the attic door:
	if the newspaper is undescribed:
		say "You can't see much, since the newspaper is in the way.";
	otherwise:
		say "Dropping to your hands and knees and placing your eye close to the crack beneath the door, you can make out a dim light coming from somewhere up above, and a great deal of dust on the floorboards.".

The keyplate is scenery. The keyplate is part of the attic door. The keyplate can be blocked. The keyplate is blocked. Understand "keyhole" as the keyplate. "The keyhole is of the classic round-hole-atop-a-triangular-hole variety, the kind people are always peeping through in cartoons.". Instead of searching the keyplate, say "[if blocked]The keyhole is dark, as though blocked by something[otherwise]You can see right through the keyhole.[end if].".

The old-fashioned brass key is a passkey. The description of the old-fashioned brass key is "It's an old key, the kind with a round barrel about a quarter-inch in diameter and flat, square
teeth.". The old-fashioned brass key unlocks the attic door.

Instead of inserting the letter opener into the keyplate:
	if the keyplate is blocked:
		say "The tip of the letter opener bumps against something, and you hear something [run paragraph on]";
		if the newspaper is undescribed:
			say "thump onto the newspaper on the other side of the door.";
			now the old-fashioned brass key is part of the newspaper;
		otherwise:
			say "clatter to the floorboards on the other side of the door.";
		now the keyplate is not blocked;	
	otherwise:
		say "The tip of the letter opener slides easily in and out of the keyhole.".

Part 2 - Crawlspace

The Crawlspace is a room. "The ceiling descends here to no more than three feet from the floor; you are forced to crawl through the cramped darkness on your hands and knees. To the east the attic becomes more spacious, while the northwest corner opens into an oddly-angled corridor.". Northwest of the Crawlspace is the Crawlspace. Before going to the Crawlspace when the room gone from is not the Attic, say "As you make your way down the corridor, you begin to get dizzy, then nauseous. Lines seem to cross without bending, the ceiling becomes the walls and the floor becomes the ceiling. Half-blind, unsure even of which direction you were going in, you stagger forward and suddenly find yourself in a...". The Crawlspace is west from the Attic.

Part 3 - Attic Cell

The Attic Cell is a room. "A cramped little annex off the main attic, with a tiny, shuttered window high up on the north wall. A pile of mouldering straw in the corner and what looks like pencil marks on the lower part of the walls seem to indicate that someone lived here once. Or, possibly, was kept here.".

The shuttered window is scenery in the Attic Cell. Understand "slats" and "shutters" as the shuttered window. "All the windows are tightly shuttered and, frustratingly, painted shut. However, enough light filters through the slats in the shutters that the house ought to be at least navigable during the daytime.".

The pencil marks are scenery in the Attic Cell. "They look like a child's drawings, made with pencil or some kind of charcoal. Most of them are smudged and faded, but you can make out stick figures here and there, and the occasional, lollipop-shaped tree.".

The straw is scenery in the Attic Cell. "This disgusting mess might actually have been some poor soul's bed. You shudder, wondering what sick relative was kept prisoner here, and when.". Instead of searching the straw for the first time: say "You gingerly poke through the filthy straw, barely able to suppress your disgust. However, your search is not unrewarded: underneath the thickest part of the pile, you discover a tiny gold locket."; now the gold locket is in the Attic Cell.

The gold locket is a thing. The gold locket can be open. The description of the gold locket is "It is oval-shaped, [if the gold locket is open]the clasp open to reveal a tiny picture inside[otherwise]held shut with a tiny clasp[end if].". Instead of opening the gold locket: say "You open the gold locket."; now the gold locket is open; now the mother's picture is a part of the gold locket. Instead of closing the gold locket: say "You close the gold locket."; now the gold locket is not open; now the mother's picture is nowhere.

The mother's picture is a thing. The description of the mother's picture is "From the quality of the photograph, you'd say the picture must have been taken sometime in the fifties. The woman looks no more than twenty years old. Her pale, fragile face is framed by straight, dark, mousy hair, and she seems to stare plaintively out at you, her expression on haunted resignation.". Instead of taking the mother's picture, say "It would be a shame to deface such a lovely item.".

Part 4 - Maze

Corridor1 is a dark room with printed name "Narrow Corridor". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.". 
Northwest of Corridor1 is the Study. Southeast of the Study is nowhere.
West of Corridor1 is southwest of Corridor2.
Southwest of Corridor1 is south of Corridor3.
Northeast of Corridor1 is northwest of Corridor4.

Corridor2 is a dark room with printed name "Narrow Corridor". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.[paragraph break][if the Kid's Room is lit]A thin beam of light slants through the dusty air, coming from a small hole half way up one wall[otherwise]There is a small hole in one of the slats, about halfway up the wall[end if].".
East of Corridor2 is north of Corridor3.
Northeast of Corridor2 is south of Corridor4.
Northwest of Corridor2 is west of Corridor5.

Hole2 is scenery in Corridor2 with printed name "the small hole". Understand "hole" as Hole2. "It's almost big enough to put your finger through." Instead of searching hole2:
	say "Standing on tiptoe and placing your eye up to the hole, you see the children's bedroom. Through some strange trick of the angle, you appear to be looking straight down at the bed from the middle of the ceiling.";
	if the spy level of Michael Wanders is 0:
		say "Suddenly Michael walks into the bedroom. He moves slowly, looking around and lightly touching things, as if visiting old memories. He walks over to the crib and spends some minutes staring down into its empty blankets, after which he sighs. Then he turns and adjusts the coverlet on the child's bed.[paragraph break]He walks over to the vanity and picks up the jewelry box. Carefully, he opens it and, finding it empty, sets it down again with a soft curse. He looks around the room suspiciously, as if expecting to find the culprit hiding in a corner somewhere. For a moment Michael simply stands there aimlessly, compulsively rubbing his forehead; then he stalks out of the room and is gone.";
		now the spy level of Michael Wanders is the spy level of Michael Wanders + 1.	
Corridor3 is a dark room with printed name "Narrow Corridor". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.[paragraph break][if the Gallery is lit]A thin beam of light slants through the dusty air, coming from a small hole half way up one wall[otherwise]There is a small hole in one of the slats, about halfway up the wall[end if].".
Northwest of Corridor3 is Corridor4. Sourtheast of Corridor4 is nowhere.
Southeast of Corridor3 is east of Corridor5.

Hole3 is scenery in Corridor3 with printed name "the small hole". Understand "hole" as Hole3. "It's almost big enough to put your finger through." Instead of searching hole3:
	say "Standing on tiptoe and placing your eye up to the hole, you see the sitting room, from a vantage high up on the wall. It occurs to you that you might well be looking directly through the eyes of the man in the portrait hanging over the fireplace.";
	if the spy level of Michael Wanders is 1:
		say "At that moment, Michael wanders into the sitting room, muttering something incoherent. He looks around blankly, lost, as if he had come into the room in order to do something only in the next instant to forget what it was. Then his eyes fall on you, and he smiles.[paragraph break]You nearly jerk away from the spyhole, heart pounding wildly, when it suddenly occurs to you that he's not looking at you at all; he's looking at the portrait through which you are peering.[paragraph break]Michael regards the portrait with a strange air of familiarity. He gazes into its eyes (and also, unbeknownst to him, your own eyes) the way one might appraise an old friend one hasn't seen for some time. His expression is deferential, admiring, and... something else; you can't quite put your finger on at first, but as your husband continues to gaze rhapsodically at the terrible portrait, a sickening realization strikes you.[paragraph break]The expression is vanity. Ugly, self-absorbed vanity. Your husband is staring at this portrait the way he might preen himself in a mirror.[paragraph break]Michael brushes his fingers back through his hair and walks out of the room, chuckling softly to himself.";
		now the spy level of Michael Wanders is the spy level of Michael Wanders + 1.

Corridor4 is a dark room with printed name "Narrow Corridor". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.[paragraph break][if the Wine Cellar is lit]A thin beam of light slants through the dusty air, coming from a small hole half way up one wall[otherwise]There is a small hole in one of the slats, about halfway up the wall[end if].".
Southwest of Corridor4 is Corridor5. Northeast of Corridor5 is nowhere.

Hole4 is scenery in Corridor4 with printed name "the small hole". Understand "hole" as Hole4. "It's almost big enough to put your finger through." Instead of  searching hole4:
	say "Standing on tiptoe and placing your eye up to the hole, you see only darkness.";
	if the spy level of Michael Wanders is 2:
		say "Just as you are about to move away from the spyhole, you hear footsteps on a stone floor. A light shines in through a doorway, and a moment later Michael skulks into the room, which you now realize is the wine cellar, seen from down low in a corner, near the floor.[paragraph break]Halfway across the room he stops, darts a suspicious glance over his shoulder, and shines his light into every corner, as though searching for potential spies. At one point he looks straight at you, and you nearly recoil, alarmed at the sight of his crazed, red-rimmed eyes. He does not spot you, however, and in a moment he moves on.[paragraph break]He walks over to the rack at the north end of the room, and does something with the bottles -- you can't quite see, because his back is toward you. Then there is a click and a heavy grinding sound, and the entire northern wall swings back, revealing a hidden passage![paragraph break]The room is filled for a moment with a wild, wretched keening, like a cold wind blowing through an empty chasm. With one last, wary look behind him, Michael steps through the portal. The light disappears, the wall swings back with another grinding sound, and then all is quiet.";
		record "spying" as accomplished;
		now Michael is nowhere.

Corridor5 is a dark room with printed name "Narrow Corridor". "The walls are bare wooden slats, patched with crumbling plaster and spiked with bent, rusted nails. The passage, no more than two feet wide at its widest point, bends and twist at confusing angles, making it hard to tell which direction you're heading in.". Southeast of Corridor5 is the Observatory. Northwest of the Observatory is nowhere.

Test muzzle with "go3 / stand / take clothes / wear clothes / s / e / n / e / turn spheres / sw / w".

Part 5 - Observatory

The Observatory is a room. "You are in a small, enclosed cupola situated, by the look of the view through the dingy skylight over your head, on top of the roof of the house. The walls are covered with astrological and astronomical charts with equations and diagrams scribbled across them in crabbed, stilted handwriting. The only exit seems to be an oddly-angled corridor to the southeast.[paragraph break]Dominating the center of the room is a large mounted telescope, pointed almost straight up through the skylight.". The Crawlspace is southeast from the Observatory.

The mansion skylight is scenery in the Observatory. "You can see part of the hole in the sky through the skylight. The telescope seems to be aimed right at it.".

The charts are scenery in the Observatory. Understand "diagrams", "handwriting", "scribbles" and "equations" as the charts. "Most of the charts seem to be plotting the trajectory of some comet you've never heard of, as it gradually approaches the solar system over the course of several centuries. According to this, the comet is due to arrive...[paragraph break]Well, that's interesting. According to this, the comet is coming tonight.".

The telescope is scenery in the Observatory. Understand "cylinder" and "eyepiece" as the telescope. "Constructed of some greenish metal, the telescope consists in the main of an unadorned cylinder about eight inches in diameter, with an eyepiece near the bottom. Near the top, about six inches down from the telescope's upper end, is a thin, rectangular slot, cut horizontally into the side of the cylinder.".

The slot is an open container and scenery. The slot is part of the telescope. The description of the slot is "It looks as though it might be a receptacle of some kind, perhaps for a special lens." Instead of inserting something into the telescope: try inserting the noun into the slot. Check inserting something into the slot: if the noun is not the strange black disk, say "[The noun] won't fit properly into the slot." instead.
						
Instead of searching the telescope:
	if the strange black disk is in the slot:
		say "For a few moments all you can see is a murky, swirling blackness; then patterns of colors begin to emerge, like the rainbow sheen of oil on water. The black disk grows translucent, stars become visible through the swirling haze, and then...[paragraph break]Dear Christ.[paragraph break]Dear Christ, you can see it.[paragraph break]The comet, roaring silently through the endless void, streaking toward Earth, and it's alive, this thing that is coming is ALIVE, tendrils that must be hundreds, thousands of miles long streaming before it, reaching out to grasp and strangle and devour whole worlds, and it is coming here, it is coming to Earth, and its great, lidless, red-rimmed eye rolls over in a vast lake of vitreous fluid, and it[paragraph break]      looks[paragraph break]          at[paragraph break]                            you[paragraph break][paragraph break][paragraph break][paragraph break][paragraph break]";
		pause the game;
		say "[paragraph break][paragraph break][paragraph break]...you wake up some time later, shaking your head. You're not sure what, exactly, you just witnessed; whether it was a genuine astronomical phenomenon, or a hallucination, or the actual form of some Dark God from the Outer Reaches, come to devour the world. You're not even entirely sure you remember what it looked like. The only thing you can clearly recall is a single name, pulsing in your brain like a bruise:[paragraph break]'Ialdabaoloth'.[paragraph break]And that's all.";
		now the telescope is handled;
		record "view-darkness" as accomplished;
	otherwise:
		say "The swirling hole in the sky fills the telescope's field of view, turning silently as you watch. The upper depths of the maelstrom are too dark to see, though occasionally you make out sparks of green energy as they arc across the gap.".

Test obs with "go3 / stand / take all / s / e / n / e / turn spheres / sw / w / nw / se".

Book 6 - Behind the House

The back door is a closed locked door and scenery. It is north from the Kitchen and south from the Path Behind the House. The description of the back door is "It's just an ordinary-looking back door.".

Part 1 - Path

Path Behind the House is a room. "A gravel path starts here at the back door of the house, and marks a trail nearly overgrown by weeds and briars. It disappears into the undergrowth to the northwest, framed by crooked trees with overhanging branches that seem to form a stunted, jagged archway into the dim recesses of the forest."

Before going northwest from Path Behind the House, say "Stooping to avoid the sharp, bare twigs that snag your clothes and seem to reach greedily for your eyes, you pick your way through the undergrowth to a small clearing.".

Part 2 - Family Plot

The Family Plot is a room. "Old, moss-slimed tombstones, many broken off and leaning crazily like an old man's teeth, poke up from the soft, mulchy earth. In their midst stands an ancient marble crypt, its heavy iron door nearly obscured by thick draperies of ivy. The trees press close around this quiet enclave of death, leaning together over your head as if sharing secrets. A gap in the undergrowth to the southeast reveals a narrow gravel path." The Family Plot is northwest of Path Behind the House. Before going northwest from the Family Plot, say "Stooping to avoid the sharp, bare twigs that snag your clothes and seem to reach greedily for your eyes, you pick your way through the undergrowth to a small clearing.".

The tombstones are scenery in the Family Plot. "Years of neglect have left the tombstones in bad repair -- the ones not broken are eroded to near-illegibility, and those not eroded are covered with thick, sticky moss. From what you can make out, though, most of them are servants' graves. Family members were most likely buried in the larger structure in the middle of the clearing.".

The crypt door is a closed locked door and scenery. Understand "crypt" and "door" as the crypt door. The description of the crypt door is "Grimly carved letters over the door spell out a single name: 'VERLAC'.". It is down from the Family Plot and up from Crypt Interior. 

Part 3 - Crypt

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

William's Coffin is a closed openable container and scenery. "Unlike the others, William's coffin is a ramshackle affair of cheap pine, held together with rusting nails. It's half-rotten with age[if closed] and so shabbily built you could probably open it with your bare hands[end if].".

After opening William's Coffin:
	say "Compelled by a gruesome curiosity, you dig your fingers under the soft, rotting boards and pry up the lid. With the shriek of pulling nails and a shower of crumbling wood, the coffin comes open, and you look inside, expecting to find a child's tiny skeleton...[paragraph break]Dear God.[paragraph break]There's no child buried here. Instead, the coffin contains only the worm-eaten bones of some kind of animal.[paragraph break]Who would have buried an animal in place of the child that should have been interred here? And why would they do such a thing? Glumly, you look around at the rest of the coffins, and realize that anyone who might have known the answers to these questions is probably already buried in this room.";
	now the bones are in Crypt Interior.

Before closing William's Coffin, say "As you move to replace the lid, you shudder at the grisly memory of opening it in the first place. Best leave the coffin as it is." instead.

The animal bones are scenery. They are fixed in place. "You're no veterinarian, but these cannot possibly be the bones of a human child. A dog seems most likely, at a rough guess.".
	
Instead of taking the bones:
	say "The skeleton is in pieces; parts of it crumble even as you touch it[if the animal's skull is not handled]. Only the animal's skull seems reasonably intact[end if].";
	if the animal's skull is not handled:
		now the animal's skull is in William's Coffin.

The animal's skull is a thing. The description of the animal's skull is "The gruesome thing seems to leer at you with its bleached, toothy grin.".

Test crypt with "test betray / s / d / n / w / take flashlight / turn it on / nw / unlock door / take broom / d / s / search crates / sweep web with broom / take key / drop broom / n / u / se / unlock door / n / nw / unlock door / d / consult nameplate about william / x william's / open it / x it / x bones".

Book 7 - Sub-Basement

Part 1 - Windy Passage

The Windy Passage is a dark room. "The walls of this passageway are carved from solid rock with unearthly precision; ten feet wide, ten feet high, perfectly smooth and perfectly square. The passage runs north, sloping downward into the depths of the hillside. A foul wind gusts intermittently from the darkness below.". After going to the Windy Passage:
	if the room gone from is the Wine Cellar:
		say "You take a few cautious steps into the corridor, when the wall suddenly slams shut behind you with a reverberating boom. You are trapped!";
		now the wine racks are closed;
		now the combo of the wine racks is 1;
	continue the action.
	
Part 2 - Pit Edges

Pitland is a region. The Edge of the Pit and the Other Side are in Pitland. Every turn when the player is in Pitland: if a random chance of 1 in 4 succeeds, say "Another blast of hot, foul-smelling air comes shrieking out of the pit.".

The fathomless pit is backdrop in Pitland. The description of the pit is "The pit nearly spans the corridor from wall to wall and is at least twenty feet across, much to far to jump. The wind which occasionally gusts up from the bottomless reaches smells of decaying things, and moans like a living thing as it races past you.".

The Edge of the Pit is a dark room. "The passageway ends here at a fathomless pit, a puckered circular hole in the rock from which the foul wind seems to emanate, howling up from the depths like a reeking banshee.". The Edge of the Pit is north from the Windy Passage. Check going down in the Edge of the Pit: say "Into the pit? Not bloody likely." instead.

The rope bridge is an open door. The initial appearance of the rope bridge is "A thin and decrepit rope bridge spans the pit, shivering occasionally in the wind." The rope bridge has a number called crossings, which is initially 0. The description of the rope bridge is "The ropes are frayed and tangled; the planks are rotten and, in places, missing entirely, leaving dark, howling gaps. A very dubious structure, all in all, but there's no other way to cross.". The rope bridge is north from the Edge of the Pit and south from the Other Side. After going through the rope bridge:
	if crossings of the rope bridge is 2:
		say "You take a deep breath and step out onto the bridge once again. On your fourth step, the board beneath you snaps in two. You plunge through the gap into the yawning blackness with a terrified shriek that is lost amid the roaring wind. You are only able to panic for a few moments, however, before the bone-shattering impact silences you. The wind carries the smell of you quickly through subterranean crevices, and your ruptured corpse provides a grand feast for the scuttling carrion feeders that live on the pit's stony floor.";
		end the story saying "You have died.";
	otherwise:
		say "Carefully, you edge out onto the swaying planks. The ropes creak ominously as you cross. A couple of the tattered lines snap just as you reach the halfway mark, and the bridge lists sharply to the left. A few more steps, however, and you are safely on the other side.";
		now crossings of the rope bridge is crossings of the rope bridge + 1;
		continue the action.
		
The Other Side is a dark room. "The passageway turns east here, the stone floor dropping down in a series of wide steps carved into the living rock. The stairs continue down to the northeast, eventually curving out of sight. The only other way on from here is a narrow, oddly-angled corridor in the northwest corner." Northwest of the Other Side is the Crawlspace. Southeast of the Crawlspace is nowhere.

The stairs steps are scenery in the Other Side. "The stairs lead down into darkness, as far as you can see.".

Part 3 - Stairs & Gold Door

The Great Stairs is a dark room. "The vast, stone staircase plunges down into the earth. The seemingly interminable steps curve in a gentle sweep from the southwest, above you, dropping toward black, unplumbed depths to the north.". The Great Stairs are down from the Other Side. Southwest of the Great Stairs is northeast of the Other Side.

Bottom of Temple Stairs is a room with printed name "Bottom of Stairs". "The stairs end here at a huge, greenish-gold door set into the north wall. There is nothing else here; nowhere to go but onward or back." The Bottom of Temple Stairs are down from the Great Stairs. North of the Great Stairs are south of the Bottom of Temple Stairs.

The gold door is scenery and an unopenable closed door. "The door is enormous, nearly fifteen feet on a side, and made entirely of some smooth, greenish-gold metal that reflects your light with an oily, wavery sheen. There is no handle, no keyhole or latch of any kind. There seems to be no physical way of opening the door at all -- just the smooth rectangle of metal, adorned with a single symbol etched into its center.". The gold door is north of Bottom of Stairs and south of the Burial Mound.

After naming the demon when the player is in Bottom of Stairs:
	say "The metallic door suddenly rings out as if struck; it vibrates in aching harmony with the syllables you utter -- a shrill, grating sound like a dentist's drill. The air grows thick and terrible shapes waver and melt in the air before you -- shapes that twitch and move with hungry purpose, and seem to look at you -- and then the ringing fades away. There is a moment of stillness, and then the gleaming door swings smoothly open on perfectly balanced and utterly silent hinges.";
	now the gold door is unlocked;
	now the gold door is open.

The symbol is a part of the gold door. Understand "eye", "lines" and "tentacles" as the symbol. "The emblem in the center of the door is that of a stylized open eye, surrounded by wavy, radiating lines which resemble nothing less than a crown of sinuous tentacles. You shudder, unable to suppress the feeling that you have seen that eye somewhere before.".

Part 4 - The Burial Mound

Before going to the Burial Mound for the first time: say "The doorway opens out into a large, dome-ceilinged cavern. You stand at the threshold for a moment, peering into the strange, phosphorescent gloom, before your eyes can make out enough details to see what this place is; even then, it is almost a full minute before your mind can accept what you are seeing...".

The Burial Mound is a room. "The cave is lined, floor to ceiling, with mummified human corpses. Shrunken and desiccated, they lie in jumbled heaps inside irregularly carved niches. Carvings cover the rock walls in between the niches -- grotesque, leering faces too horrible even to look upon, their features twitching and smirking in the wavering light that sifts down from above.[paragraph break]And dominating the center of the chamber: a dark monolith rising up through the green, murky light -- what you first took to be a large, supporting pillar, you now realize can only be the true base of the town square obelisk.[paragraph break]At the narrower, northern end of the vaguely egg-shaped cavern sits a massive stone altar, flanked on either side by a pair of strange, vibrating columns.".

The corpses are scenery in the Burial Mound. Understand "niches", "bodies" and "skulls" as the corpses. "These bodies are very, very old; even the shapes of the skulls call to mind a more primitive and degenerate sort of folk than even the denizens of this town. This must be the inside of an ancient burial mound, although what sort of Indian tribe could have erected such a huge and monstrous obelisk, you can't imagine.".

The first pictogram is scenery in the Burial Mound. Understand "carving" as the first pictogram. "A circle of stick-men, dancing or worshipping around a shape like an upturned bowl -- perhaps a hill, or perhaps this very mound you're standing in was once above ground.".

The second pictogram is scenery in the Burial Mound. Understand "carving" as the second pictogram. "A fiery star-burst, decorated with trailing lines (perhaps indicating a comet or shooting star?) descends from the sky, and rains fire and death upon the people of the mound.".

The third pictogram is scenery in the Burial Mound. Understand "carving" as the pictogram. "The stick men are again pictured in a circle around the mound. One figure stands on top of the mound, raising a dagger over a second stick man bent backwards over some kind of altar. The mound is decorated with wavy lines radiating from the altar at the top down to the bottom -- perhaps indicating streams of blood?".

The obelisk base is scenery in the Burial Mound. "It is simply enormous. Nearly ten feet to a side at its base, the massive structure rises straight up through the ceiling, its tip penetrating the surface after what must be twenty or thirty feet of intervening rock. The hieroglyphs on this portion of the obelisk, untouched by eroding weather, are much clearer and deeper than the ones above.".

The altar is scenery in the Burial Mound. "A single block of jet-black, featureless stone, approximately the size of a queen-sized bed. It is flanked by a pair of metal pillars.".

To open the rift:
	say "The strange harmony of the flute blends with the atonal ringing of the two columns, and the three sounds suddenly grow stronger, resonating with and reinforcing one another, intertwining like a dissonant, invisible braid. The sound increases in volume, piercing your eardrums and causing the very air to shimmer.[paragraph break]Suddenly the air above the altar begins to ripple as though with extreme heat. The very fabric of space seems to twist and buckle between the two columns; and then, with a sound like a wet sheet being torn slowly down the middle, the fabric splits.[paragraph break]You are immediately swept off your feet by a powerful sucking vacuum, pulling everything within reach toward the portal. Dust and debris; bones and loose rock from the burial niches; everything not nailed down goes flying across the temple and into the all-devouring maw hovering over the altar-stone. Desperately, you wedge your fingers into a crack in the floor[if Michael is in the Burial Mound]; with the other hand you grasp hold of Michael's pants leg and hang on for dear life[otherwise]and hang on for dear life as the wind tries to claw you away. You scream, and even the sound of your voice is whipped away, pulled over your shoulder like a trailing ribbon and sucked into whatever blasphemous dimension lies beyond that horrible rift[end if][if the ghost is in the Burial Mound].[paragraph break]Verlac is caught like a gossamer thread in a tornado. Frantically he claws at the air, but as an insubstantial ghost there is nothing for him to hang on to. Shrieking and cursing, he is dragged inexorably back, closer and closer to the portal, until the suction draws his corpus out into a long, trailing ribbon, like an unraveling cable-knit sweater -- and in the next moment he is gone forever, sucked into whatever alien dimension lies beyond that horrible rift[end if].[paragraph break]Painstakingly, you pry your stiff, bleeding fingers out of the crack and roll over. The rift is gone. The air is normal, and the columns are ringing quietly, as if nothing had happened.";
	if the ghost is in the Burial Mound, now the ghost is nowhere;
	now the strange metal flute is locked.

Volume 9 - People

Book 1 - The Librarian

The librarian is a woman. "The librarian stares at you silently." The librarian can be amenable. The librarian is not amenable. The description of the librarian is "Her slack, pallid skin looks as if it has seen little more than the inside of a cave for most of her life. She stares at you silently with disturbingly large and watery eyes.". Before going south from the Circulation Desk, banish the librarian.

To summon the librarian:
	if the location of the librarian is nowhere:
		say "Ding![paragraph break]A moment later, the gaunt and fishy-eyed librarian emerges silently from the shadows behind the counter.";
		move the librarian to the Circulation Desk;
	otherwise:
		say "The librarian, who is already right there waiting on you, purses her lips in annoyance.".

To banish the librarian:
	if the location of the librarian is the Circulation Desk:
		say "The librarian fades silently into the darkness.";
		now the librarian is nowhere.

Instead of giving the faculty card to the librarian: try showing the faculty card to the librarian instead. Instead of showing the faculty card to the librarian:
	say "The librarian looks the card over, nods slowly, and hands it back to you without a word.";
	now the librarian is amenable.
	
To decide whether a book is already checked out:
	repeat through the Table of Known Library Books:
		if the book entry is not nowhere, decide yes;
	decide no.

Before asking the librarian about when the librarian is not amenable, say "The librarian says nothing. Slowly, very slowly, she looks you up and down, and then, just as slowly, she turns to look at the sign posted over the counter. Finally, agonizingly slowly, she turns back to you, and stares at you with a vague, unblinking air of disapproval." instead.

Before asking the librarian about when a book is already checked out, say "The librarian gives you a fishy look. Apparently, you are only allowed one book at a time." instead.

Instead of asking the librarian about:
	repeat through the Table of Known Library Books:
		if the topic understood matches the topic entry:
			say "Wordlessly the librarian retreats back into the shadows, only to reappear the next moment carrying the thick, dusty tome you saw your husband with earlier. Dutifully, you sign the register, and the librarian hands you the book before disappearing again.";
			now the player is holding the book entry;
			now the librarian is nowhere;
			if the topic understood matches "frazer":
				record "find-frazer" as accomplished;
			stop the action;
	say "The librarian just looks at you.".

Instead of giving a library book to the librarian:
	say "Wordlessly the librarian takes the tome from you and spirits it back to the shadowy depths of the
reserved stacks.";
	now the noun is nowhere;
	now the librarian is nowhere.

Book 2 - Michael

Goal is a kind of value. Goals are aimless, ignore, follow, sleep, shower, write, wander, inspect, gimme, summon, flee, cough.

Michael is a man with printed name "Michael". Understand "husband" and "Michael" as Michael. Michael has a number called rage, which is usually 0. Michael has a goal. The goal of Michael is aimless. Michael can be greeted. Michael is not greeted. The initial appearance of Michael is "[if Michael is not greeted]Peering through the shadows, you spot your husband sitting at one of the reading desks, absorbed in some sort of weighty tome and clearly oblivious to the time.[otherwise if the goal of Michael is sleep]Michael is curled up in bed, sound asleep.[otherwise]Michael is here.[end if]". The description of Michael is "Tall and a bit on the skinny side, in an endearingly awkward sort of way; a serious, thoughtful face topped with an unruly tangle of brown hair; deep brown eyes framed by wire-rimmed glasses -- yep, that's the man you married, all right.[paragraph break][if the goal of Michael is ignore]At the moment, Michael is largely absorbed in his reading, and is paying little attention to you.[otherwise]Michael looks at you expectantly, waiting for you to lead the way.[end if]".

Table of Michael's Day 1 Knowledge
topic	reply
"family"	"'I don't know too much about them, except for what the lawyers told us about Edward, the one who just killed himself. And even that isn't much.'"
"verlac"	"'I'd never heard of the guy before; I didn't even know I had a [']third cousin, twice removed['],' says Michael. 'Kind of creepy, though, don't you think? He went crazy, you know, killed his whole family, then killed himself in his cell up at Danvers. Just terrible. Still, we got the house and I got a professorship, so you won't hear me complaining.'"
"town"	"'It takes a little getting used to, I know, but I think we can be happy here.'"
"informhead"	"'It takes a little getting used to, I know, but I think we can be happy here.'"
"book"	"Michael casually places his hand on the book, obscuring its title. 'Oh, just doing a bit of research. Musty old stuff.'"
"keys"	"'The real estate agent is supposed to be holding them at her office,' he says."
"house"	"'The Verlac family has been living in that old place for generations; they're an integral part of the history of this whole region. It's really quite interesting.'"
"library"	"Michael looks around. 'Yeah, it's nice, isn't it? They have rare books you wouldn't believe. You could get a lot of research done here.'"
"miskaton"	"'Isn't it wonderful? A full professorship! At this rate I'll have tenure in just a few years. I think I'm really going to like teaching here.'"

Instead of asking Michael about:
	repeat through Table of Michael's Day 1 Knowledge:
		if the topic understood includes topic entry:
			say “[reply entry].”;
			rule succeeds;
	say "You can't think of anything to say about that for the moment.".

Book 3 - The Old Man

The old man is a man. The old man can be thirsty. The old man is thirsty. The old man has a number called state. The state of the old man is 1. The initial appearance of the old man is "An old man dressed in dirty rags sits on his mattress, muttering to himself as he stares intently out to sea.". The description of the old man is "This pitiful creature might once have been a successful and healthy man, but alcohol and mental illness have dragged him down irretrievably into degenerate squalor. His clothes are filthy tatters; his hair is a matted, knotted mess; his body reeks of booze and urine. He sits on his mattress, seemingly oblivious to you or the rest of the world, and that's where he'll stay until either Death or the next drink comes around.[paragraph break]The old bum is clutching a small object to his chest; he rubs it and turns it in his hands constantly, as though it were some sort of relic or charm. It's hard to tell, but it appears to be a key.".

Every turn while the old man is visible and the old man is thirsty:
	if a random chance of 1 in 5 succeeds:
		say "[one of]'BURROWING INSECTS!' bellows the old man at the top of his lungs[or]'YOU CAN'T CATCH ME!' shrieks the old man suddenly. 'I CAN GO WHERE YOU CAN'T GO!' He falls quiet again, rocking gently back and forth and clutching something to his chest[or]'You don't know. You don't know,' whispers the old man.[cycling].".
		
Instead of answering the old man that, say "The old man stares at you blankly.". Instead of saying hello to the old man, say "The old man stares at you blankly.".

Instead of giving the flask to the old man:
	if the old man is thirsty:
		say "His eyes burning with greed, the old man snatches the flask from your hand, unscrews the cap and tips it up into his waiting mouth. Trickles of pungent brown liquid ooze from the corners of his mouth as he swallows convulsively, his hands trembling, his eyes squeezed shut and streaming tears. Finally, he falls back onto his mattress with a beatific smile on his mud-smeared face, the flask dropping from his fingers.";
		now the initial appearance of the old man is "The old man looks up at you with fawning admiration.";
		now the printed name of the flask is "flask (which is empty)";
		now the flask is in the Vacant Lot;
		now the old man is not thirsty;
		record "old-man" as accomplished;
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

Instead of asking the old man about something:
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
		record "give-amulet-1" as accomplished.

Instead of showing the animal's skull to the old man:
	if the state of the old man is 1:
		say "The old man bats the skull away with an expression of disgust. 'What're you stickin' that in my face for?' he demands.";
	if the state of the old man is 2:
		say "The old man starts visibly when you show him the skull. 'What about it?' he mutters.";
	if the state of the old man is 3:
		say "The old man grows sickly pale. He raises one hand, as if to ward off the sight of the skull, deny the truth one more time; then his hand drops, and he sinks down onto the mattress, groaning.[paragraph break]'Oh, it's true,' he cries, 'it's true, God help my lying soul. It was her father who wished to kill the thing, not Anna -- kill it to make way for another, he said, a 'more fitting vessel'. He wanted to try again -- Gods, the depth of his evil -- after the way the first one came out, he wanted to try again![paragraph break]'Anna came to me and asked for my help, and what could I do? What could I do? It was her child, for God's sake, no matter what else it was, and she couldn't bear to lose it. But we had to weigh the coffin down with something...'[paragraph break]He sits up, suddenly, fastening on you with a sick, pleading look.[paragraph break]'I've told you too much, now,' he whispers desperately. 'They'll know; the maggots'll find out for sure. They'll find me; even in my hole, they'll find me.' He lets out an eye-wateringly pungent breath, 'P'raps it's best they do. I've spent so long drowning my sins, p'raps time's come to pay for them at last. This won't do me much good no more,' he says, holding up his little copper key. 'And yet...' He closes his fist around it again. 'And yet, maybe there's a way... they say there's ways to protect yourself, wards versus the Evil Eye and such. Perhaps, if I could get me one o'those...".

Book 4 - Jeffrey's Mom

The mother is a woman. Understand "woman" as the mother. The initial appearance of the mother is "The woman watches you expectantly.". The description of the mother is "She is pale and thin from lack of food. Her hair is prematurely gray. The dismal poverty and constant fear that she has lived in all her life have leached her body of its youth, leaving her aged before her time, stooped and scarred with worry. She clutches a tattered shawl, its fabric the faded color of old dishwater, close around her throat, and she watches you the way a wounded rabbit might watch a potentially hungry cat.".

Table of Mother's Knowledge
topic	response
"herself"	"The woman shrugs tiredly. 'I get by,' she says softly. 'I get by. Though without my Jeffrey, there doesn't seem to be much point to it, these days.'"
"teddy bear"	"The woman smiles wanly. 'That was Jeffrey's favorite toy.'"
"bear"	"The woman smiles wanly. 'That was Jeffrey's favorite toy.'"
"teddy"	"The woman smiles wanly. 'That was Jeffrey's favorite toy.'"
"jeffrey"	"'It came in the night,' the woman tells you, her voice barely above a whisper, 'just like when it took all the other children over the years. It came through the window and took him away while we slept.' The woman's voice breaks, and she shakes her head, trying not to weep. 'Without my Jeffrey, I don't know if I can go on.' Her look implores you. 'If you do find him, please tell me. Please bring my boy back to me!'"
"max"	"She smiles, sad and wistful. 'Max did maintenance work up at the mill,' she says, 'until the accident. It was five years ago this September. One of the big presses must have malfunctioned... they told me there were no remains to speak of...' She sighs. 'Max was a good man. He took care of Jeffrey and me. I keep his overalls there to remember him by.'"
"husband"	"She smiles, sad and wistful. 'Max did maintenance work up at the mill,' she says, 'until the accident. It was five years ago this September. One of the big presses must have malfunctioned... they told me there were no remains to speak of...' She sighs. 'Max was a good man. He took care of Jeffrey and me. I keep his overalls there to remember him by.'"
"overalls"	"She smiles, sad and wistful. 'Max did maintenance work up at the mill,' she says, 'until the accident. It was five years ago this September. One of the big presses must have malfunctioned... they told me there were no remains to speak of...' She sighs. 'Max was a good man. He took care of Jeffrey and me. I keep his overalls there to remember him by.'"
"anchorhead"	"The woman's face grows bitter. 'The people here are not right. There's something horrible about this whole town. The police won't help me find Jeffrey; they say they're searching for him, but I don't think they are. And what's worse, I think they know where he is, and they're keeping him from me.'"
"town"	"The woman's face grows bitter. 'The people here are not right. There's something horrible about this whole town. The police won't help me find Jeffrey; they say they're searching for him, but I don't think they are. And what's worse, I think they know where he is, and they're keeping him from me.'"
"mill"	"The woman's expression grows hard and bitter. 'They keep us like animals,' she says, indicating the shack, the town, the poverty around her. 'We're forced to live in company housing, buy all our food and goods from the company, all on the pittance the company gives us.' She bites her lower lip. 'And now I don't even get that; with Max gone I'm drawing compensation, which was barely enough to feed Jeffrey and me... before... ' She stops as her lips begin to tremble."
"Ialdabaoloth"	"The woman turns to you, wide-eyed, as you start to form the word, and her fingers jab out at you, forked in the sign of the Evil Eye. 'I would prefer it,' she whispers through tight, pale lips, 'if you did not speak that name in my house.'"
"key"	"'Max had lots of keys to the mill. He did maintenance work there.'"
"steel key"	"'Max had lots of keys to the mill. He did maintenance work there.'"
"edward"	"'I never met him, and I never wanted to. I do know one thing, though: he never took any children.' The woman shudders. 'What took those children was something altogether different. Something monstrous."
"mordecai"	"She shakes her head. 'I don't know much about those folks, except that they're bad all the way through. I try to stay away from their business. They said it was Edward who was stealing all those children, but I guess that wasn't ever true.'"
"william"	"She shakes her head. 'I don't know much about those folks, except that they're bad all the way through. I try to stay away from their business. They said it was Edward who was stealing all those children, but I guess that wasn't ever true.'"
"anna"	"She shakes her head. 'I don't know much about those folks, except that they're bad all the way through. I try to stay away from their business. They said it was Edward who was stealing all those children, but I guess that wasn't ever true.'"

To decide what text is the mother's outdoor response to (what - a snippet):
	if what matches "jeffrey":
		decide on "The woman grows even paler, and draws back from the door with a look of horrified loss.";
	otherwise if what matches "bear" or what matches "teddy bear":
		decide on "The woman's eyes widen slightly, but still she says nothing. She continues to watch you intently, however; as if waiting for you to show her something.";
	otherwise:
		decide on "The woman mutely shakes her head.".

To decide what text is the mother's indoor response to (what - a snippet):
	repeat through the Table of Mother's Knowledge:
		if what matches the topic entry:
			decide on the response entry;
	decide on "The woman just looks away absently; apparently, she doesn't know very much about that.".
					
Instead of asking the mother about something:
	if the mother is in Number Eleven:
		say "[the mother's indoor response to the topic understood].";
	otherwise:
		say "[the mother's outdoor response to the topic understood].".

Instead of showing something to the mother:
	if the noun is the teddy bear:
		say "The woman's eyes widen in sudden recognition, and she takes the teddy bear from you, turning it over to read the name stitched on the back. Tears well up in her eyes, spilling over onto her pale, sunken cheeks. 'This is my boy's,' she whispers. 'This is Jeffrey's.'[paragraph break]She looks at you suddenly. 'Where did you find this? Did you find...' but then she stops. She can see from your face that you have not found her son, only this one clue. But... even one clue, however tenuous, offers possibility. And the woman's face softens, just a little bit, with something that you guess hasn't made its home there in a very, very, long time:[paragraph break]Hope.[paragraph break]'Come in,' she says softly. 'Thank you for bringing me this. Please, come in.'[paragraph break]She steps aside from the door, and you enter her home.";
		record "enter-shack" as accomplished;
		now the teddy bear is on the cot;
		move the mother to Number Eleven;
		move the player to Number Eleven;
	otherwise:
		say "You won't get much of a response.".

Book 5 - The Madman

The madman is a person. The madman can be free. The initial appearance of the madman is "A dangerous looking madman lurks nearby.". The madman is not free. The description of the madman is "The man's hair and fingernails are long, dirty and tattered; there's no telling how long he's been locked up and forgotten in this place. Old, dried blood streaks his lips and chin, and his dirt-ringed eyes gleam with an obscene, capering madness. The man limps horribly as he shuffles about; glancing down, you notice that his left leg ends in an amputated stump.". The madman is in Cell Interior ME.

Table of Madman Responses
response
"'...              gK            k     tthmc                   yc                       ...             gK
k     tthmc                   yc                       ...' the madman gibbers, mimicking your voice with uncanny accuracy."
"'You look so yummy,' wheedles the madman, '... so yummy...'"
"The madman throws back his head and laughs, a hideous cackle that soon degenerates into mindless barking."

To decide what text is the mother's response to (what - a snippet):
	if what matches "himself":
		decide on "'That's me,' sings the madman. 'That's me all over, inside and out. Soon you'll be inside, too -- say hi to me when you get there...' And the madman opens his mouth and laughs and laughs and laughs...";
	otherwise if what matches "ialdabaoloth":
		decide on "'STOP!' screams the madman, covering his ears as you start to form the syllables. 'Say it not! Say not it! That's the one! THAT'S THE ONE THAT MADE ME LIKE THIS!!'";
	otherwise:
		choose a random row in the Table of Madman Responses;
		decide on the response entry.

Table of Madman Following Messages
message
"The madman hops awkwardly toward you, giggling and dripping saliva from his blood-smeared chin"
"The madman follows you at a wary distance"
"The madman lurches after you"
"The madman keeps a wary distance, giggling quietly to himself"
"The madman hops about, just out of reach"

To decide which text is a madman following message:
	choose a random row in the Table of Madman Following Messages;
	decide on the message entry.

Every turn while the madman is free and the madman is not nowhere:
	if the location of the madman is not the location of the player:
		let D be the best route from the location of the madman to the location of the player;
		if D is not nothing, try silently the madman going D;
		say "[a madman following message].";
	if a random chance of 1 in 4 succeeds:
		say "'Yummy,' whispers the madman to himself. 'Oh, yummy, yummy...'".

Book 6 - Croesus' Ghost

The ghost is a man. Understand "Croesus" and "Verlac" as the ghost. The initial appearance of the ghost is "The disembodied ghost of Croseus Verlac floats before you, howling its rage.". The description of the ghost is "Even though his original body has long since crumbled to dust, the process of decay has continued to devour Verlac's soul; his apparition takes the form of an ancient, rotted corpse -- a blackened skeleton adorned with patches and strings of putrefied flesh, wrapped in tattered cerements of ectoplasm.".

Before asking the ghost about something, say "The ghost is utterly crazed; there is absolutely no reasoning with it." instead. Before consulting the ghost about, say "The ghost is utterly crazed; there is absolutely no reasoning with it." instead. Before answering the ghost that, say "The ghost is utterly crazed; there is absolutely no reasoning with it." instead.

Table of Ghost Jive
message
"blank"
"The ghost lets out a chilling, sepulchral laugh. 'You useless, puny mortal,' it cries. 'Did you really think that there was any way on earth you could stop me? I have lived and thrived for over four hundred years -- not even Death can claim me!'"
"'You sabotaged my dimensional beacon -- I will build another. You drove me from my host body -- I will find another. What next? Will you track down my disciples, one by one, and kill them all? Will you set this whole town to the torch?'"
"'There will be more towns, woman, and more bodies, and more disciples, and always will I be there. And there is NOTHING YOU CAN DO TO STOP ME!'"
"'It would almost be too kind to kill you,' muses the ghost. 'I've half a mind to simply let you go, and spend the next four hundred years tormenting and violating your future daughters and grand-daughters through the next twelve generations. You've only got one amulet, you know; you can't protect all your children at once.'"
"'But no,' it finally says. 'After all you've done, I think that death would be most appropriate. But just to make sure you suffer, I think I'll start with your beloved husband.'"
"Tendrils of ectoplasm snake out from the ghost's outstretched arms and wrap themselves around Michael, who begins flailing weakly. You rush to help him, but Michael is powerless and you are too slow to prevent the tendrils from pushing into his mouth and nostrils, stopping his throat and filling his lungs with noxious gas. You work desperately, trying to administer CPR even as his body stiffens and his face turns blue; but in the end, there is nothing you can do. Michael gags one last time, arches his back, and dies in your arms. Thin, thread-like streamers of mist ooze from his mouth along with his final breath.[paragraph break]'You're next,' chuckles the ghost."

To decide which text is the next thing out of the ghost's mouth:
	repeat through the Table of Ghost Jive:
		if there is a message entry:
			let m be the message entry;
			blank out the whole row;
			decide on m;
	decide on "die".

Volume 10 - Special Things

Book 1 - My Things

The clothes are a plural-named thing. The indefinite article of the clothes is "your". The description of the clothes is "A tasteful ensemble from Ann Taylor in muted browns and olive greens (you've been an autumn person since you were old enough to match your own socks).". The clothes are worn. Check taking off the clothes when the player is not in the Suite: say "You've never been big on that 'natural' look. If you decide you need to take a bath or go to bed, you can disrobe then; otherwise, keep 'em on." instead.

The trench coat is the player's holdall. Understand "pocket" and "pockets" as the trench coat. The indefinite article of the trench coat is "your". The description of the trench coat is "You bought this coat during your honeymoon in England; it's a genuine London Fog. In addition to looking very cool, it has several deep pockets in which you can fit just about anything.". The player wears the trench coat. Check wearing the trench coat: if the player is not wearing the clothes, say "Shouldn't you put some clothes on first?" instead; if the player is wearing the hooded robe, say “You’ll have to remove the hooded robe first.” instead.

After inserting something into the trench coat: say "You slip [the noun] into the pocket of your trench coat.".

Instead of taking inventory:
	say "You are wearing [if the player wears something][a list of things worn by the player][otherwise]nothing[end if]";
	say "[if the player carries something].[paragraph break]In addition, you are holding [a list of things carried by the player][end if]";
	say "[if the player wears the trench coat and number of things in the trench coat is not 0].[paragraph break]The pockets of your trench coat contain [a list of things in the trench coat][end if]";
	say "[if the player encloses the keyring and the number of things on the keyring is not 0].[paragraph break]Your keyring contains [a list of things on the keyring][end if]";
	say ".".

The wedding ring is a thing. The indefinite article of the wedding ring is "your". The description of the wedding ring is "[if worn]Staring at your wedding ring like that tends to make you sentimental[otherwise]Engraved along the inside are Michael's and your initials, along with your wedding date -- June 28th.[end if].". The player wears the wedding ring.

The umbrella is a thing. The indefinite article of the umbrella is "your". The umbrella can be open. The umbrella is open. The description of the umbrella is "It's olive green, with a hook-shaped handle. A handy little thing, when it rains. It's currently [if open]open[otherwise]closed[end if].". The player carries the umbrella.

The keyring is a keychain. The indefinite article of the keyring is "your". Understand "keys" as the keyring. The player carries the keyring.

The house key is a passkey. The description of the house key is "It's an ordinary-looking key. The word 'house' is written on a tiny piece of tape affixed to the key's tab." The house key unlocks the front door and the back door.

The cellar key is a passkey. The description of the cellar key is "It's an ordinary-looking key. The word 'cellar' is written on a tiny piece of tape affixed to the key's tab." The cellar key unlocks the cdoor.

Rule for printing inventory details for the keyring:
	omit contents in listing.

The standard taking rule is not listed in any rulebook. Carry out an actor taking (this is the new carry out taking rule):
	if the noun is a passkey and the noun is not on the keyring and the actor encloses the keyring:
		say "You slip [the noun] on to your keyring.";
		now the noun is on the keyring;
	otherwise:
		 now the actor carries the noun;
	if the actor is the player, now the noun is handled.

The standard report taking rule is not listed in any rulebook. Report an actor taking (this is the new report taking rule):
	if the action is not silent and the noun is not on the keyring:
		if the actor is the player:
			say "Taken." (A);
		otherwise:
			say "[The actor] [pick] up [the noun]." (B).

Before dropping a passkey:
	if the player encloses the keyring and the noun is on the keyring:
		now the player carries the noun.

After unlocking something with a passkey:
	now the second noun unbolts the noun;
	continue the action.

Book 2 - Matches

The book of matches is a thing in the kitchen cabinet. Understand "match" and "matchbook" as the book of matches. The book of matches has a number called match count. The book of matches is unlit. The match count of the book of matches is 6. The description of the book of matches is "A label on the side reads, 'Water-resistant matches. Strike on cover.' [the matchbook state].".

To decide which text is the matchbook state:
	if the match count of (the book of matches) is 0:
		decide on "The matchbook is empty";
	if the match count of (the book of matches) is 1:
		decide on "There is one match left[if (the book of matches) is lit], which is burning[end if]";
	otherwise:
		decide on "There are [match count of (the book of matches) in words] matches left[if (the book of matches) is lit], one of which is burning[end if]".

Instead of burning the book of matches:
	if the noun is lit:
		say "One of the matches is already lit." instead;
	otherwise if the match count of the noun is 0:
		say "There are no matches left" instead;
	otherwise:
		say "One of the matches starts to burn.";
		now the noun is lit;
		the match goes out in two turns from now.
		
At the time when the match goes out:
	say "Ouch! You drop the match as it burns down to your fingers.";
	decrease the match count of (the book of matches) by 1;
	now (the book of matches) is unlit.

Instead of burning something with (the book of matches):
	if (the book of matches) is unlit:
		say "You don't have a match lit." instead;
	otherwise if the noun is lit:
		say "[The noun] is already lit." instead;
	otherwise if the noun is the lantern:
		say "The lantern is now lit.";
		now the lantern is lit;
	otherwise:
		say "Petty arson isn't going to solve your problems.".
	
Book 3 - The Magic Flute

The strange metal flute is a thing in the safe. The strange metal flute can be locked. The initial appearance of the strange metal flute is "Your flute lies on the bench, waiting for you." Instead of examining the flute, say "It appears to be some kind of wind instrument, fashioned out of ornately carved, greenish metal. Seven holes of varying sizes are drilled along the top[if the number of closed fholes is greater than 0]. You are holding closed the [list of closed fholes][end if].". After dropping the strange metal flute:
	repeat with X running through the list of closed fholes:
		now X is open;
	continue the action.
	
To decide which text is the flute's sound:
	let l be the list of closed fholes;
	if the number of entries in l is 0:
		decide on "You blow an open chord into the little flute, and it resonates with an eerie, metallic warble";
	otherwise if the number of entries in l is greater than 1:
		decide on "The flute emits an odd mixture of metallic, warbling notes which intertwine and harmonize eerily
with each other";
	otherwise:
		let n be the note of entry 1 of l;
		decide on "The flute emits an eerie, [n] note".

To decide which number is the flute's effect:
	let l be the list of closed fholes;
	if the first hole is listed in l:
		if the number of entries in l is 1, decide on 1;
		if the number of entries in l is 2 and the fifth hole is listed in l, decide on 2;
	if the fifth hole is listed in l:	
		if the number of entries in l is 1, decide on 1;
	decide on 0.

Instead of blowing the flute:
	let s be the flute's sound;
	if the player is not in the Burial Mound:
		say "[the flute's sound]. The sound lingers in the air for a moment, then gently fades away.";
	otherwise if the flute is locked and the ghost is nowhere:
		say "The last time you tried that, you were nearly sucked into an infernal dimension. Better to avoid pulling such a dangerous stunt, you decide, until you really have a need for it.";
	otherwise:
		let f be the flute's effect;
		if f is 0:
			say "[the flute's sound].[paragraph break]The columns' vibrations seem to grow momentarily stronger while the flute's sound lingers, their dissonant ringing resonating strangely with the warbling, metallic notes.";
		otherwise if f is 1:
			say "[the flute's sound].[paragraph break]The right-hand column's vibrations suddenly grow stronger, resonating in harmony with the warbling, metallic note of the flute. The two dissonances seem to intertwine, reinforcing each other, and for a single instant you think you see a strange rippling effect in the air over the altar. Then it is gone, and the sound fades.";
		otherwise:
			open the rift.

An fhole is a kind of thing. An fhole has text called note. An fhole can be open or closed. An fhole can be magic. An fhole is usually open.

Before opening an fhole: if the player is not holding the strange metal flute, say "You're not holding the strange metal flute." instead; if the noun is open, say "[The noun] is already open." instead. Instead of opening an fhole: say "You remove your finger from [the noun]."; now the noun is open.

Before closing an fhole: if the player is not holding the strange metal flute, say "You're not holding the strange metal flute." instead; if the noun is closed, say "[The noun] is already closed." instead. Instead of closing an fhole: say "You slide a finger to cover the [the noun]."; now the noun is closed.

The first hole is an fhole and part of the strange metal flute. Understand "hole 1" and "hole one" as the first hole. The note of the first hole is "almost sub-sonic".

The second hole is an fhole and part of the strange metal flute. Understand "hole 2" and "hole two" as the second hole. The note of the second hole is "deep".

The third hole is an fhole and part of the strange metal flute. Understand "hole 3" and "hole three" as the third hole. The note of the third hole is "low-pitched".

The fourth hole is an fhole and part of the strange metal flute. Understand "hole 4" and "hole four" as the fourth hole. The note of the fourth hole is "thing".

The fifth hole is an fhole and part of the strange metal flute. Understand "hole 5" and "hole five" as the fifth hole. The note of the fifth hole is "high-pitched".

The sixth hole is an fhole and part of the strange metal flute. Understand "hole 6" and "hole six" as the sixth hole. The note of the sixth hole is "screeching".

The seventh hole is an fhole and part of the strange metal flute. Understand "hole 7" and "hole seven" as the seventh hole. The note of the seventh hole is "piercingly high".

To decide which fhole is the first closed fhole:
	let l be the list of closed fholes;
	decide on entry 1 of l.

Book 4 - Strait Jacket

The strait jacket is a wearable thing. Understand "cotton" as the strait jacket. The strait jacket can be sliced. The strait jacket is not sliced. The description of the strait jacket is "It's a canvas strait jacket, the kind used to immobilize violent or spastic mental patients. It fastens up the back with a complex series of buckles and straps, while the sleeves cross the chest and fasten around back, making it quite impossible to escape[if sliced]The thing is useless now, of course, since all the straps have been cut through[end if].". Instead of wearing the strait jacket, say "You'd just as soon never have that thing on you again.".

Every turn when the player is wearing the strait jacket:
	if a random chance of 1 in 7 succeeds, say "An itch strikes you suddenly, right on the end of your nose. For the next minute or two you can only clench your teeth in agony, powerless to scratch it, until the wretched sensation goes away on its own.".

Instead of doing anything other than looking, examining, taking inventory or attacking when the player is wearing the strait jacket, say "Unfortunately, that would require the use of your arms.".

Instead of cutting the strait jacket, say "You'll need something sharp; this canvas is pretty tough.". 

Instead of cutting the strait jacket with the shard of glass when the player encloses the shard of glass:
	say "You try sawing through the jacket with the glass shard in your mouth, but it's a lot like trying to kiss your own elbow; you simply don't have the flexibility.".

Instead of cutting the strait jacket with the shard of glass when the shard of glass is in the cracks:
	say "Carefully, you lean back against the wall and start shrugging your shoulders against the jutting glass shard. After what seems like an eternity, you feel the straps begin to fray and loosen, until suddenly the strait jacket grows slack and slips free. You shake the horrible garment off in disgust, giving it a vicious kick for good measure as you gingerly rub feeling back into your arms.";
	now the strait jacket is sliced;
	now the strait jacket is in Upper Hallway North.

Instead of cutting the strait jacket with the shard of glass:
	say "The glass isn't going to do you much good where it is.".
	
Book 5 - Mirrors

A strange mirror is a kind of thing. A strange mirror can be ceremonial. A strange mirror is usually not ceremonial.

A numbered mirror is a kind of strange mirror. A numbered mirror has a number called label. A numbered mirror has a real number called thickness. The printed name of a numbered mirror is "mirror labeled #[label]". The description of a numbered mirror is "The mirror is perfectly round and exquisitely polished. It is very slightly concave on its reflecting surface, distorting the edges of your face as you stare into it. On the back is a small label with the number [label] written on it.".

Carry out oiling a mirror:
	now the noun is oiled;
	now the player is not oiled;
	say "You rub a small bit of fish oil onto the reflective surface of [the noun], leaving a barely perceptible smear." instead.

M1 is a numbered mirror. Understand "1", "#1" and "mirror 1" as M1. The label of M1 is 1. The thickness of M1 is 0.0172. M1 is in the rack of mirrors.
M2 is a numbered mirror. Understand "2", "#2" and "mirror 2" as M2. The label of M2 is 2. The thickness of M2 is 0.0182. M2 is in the rack of mirrors.
M3 is a numbered mirror. Understand "3", "#3" and "mirror 3" as M3. The label of M3 is 3. The thickness of M3 is 0.0113. M3 is in the rack of mirrors. M3 is ceremonial.
M4 is a numbered mirror. Understand "4", "#4" and "mirror 4" as M4. The label of M4 is 4. The thickness of M4 is 0.0166. M4 is in the rack of mirrors.

M5 is a strange mirror.

The real mirror is a strange mirror in the receptacle. The real mirror is ceremonial. The printed name of the real mirror is "real mirror". The description of the real mirror is "The mirror is perfectly round and exquisitely polished. It is very slightly concave on its reflecting surface, distorting the edges of your face as you stare into it.".

Book 6 - The Handcuffs

The pair of handcuffs is a wearable thing. The pair of handcuffs can be locked. The pair of handcuffs can be open. The description of the pair of handcuffs is "They're ordinary, police-issue handcuffs. The cuffs are [if unlocked]open[otherwise]closed[end if].". 

Instead of wearing the handcuffs, say "Reallly? You want to go through that again?".

Before going when the player is wearing the handcuffs: say "The handcuffs force you to stay put." instead.

Before opening the pair of handcuffs: try unlocking keylessly the pair of handcuffs instead. Before unlocking keylessly the pair of handcuffs: if the pair of handcuffs is locked, say "You need a key for the handcuffs." instead; otherwise say "The handcuffs are already open." instead. Instead of unlocking the pair of handcuffs with the crusty needle:
	if the player is wearing the pair of handcuffs:
		say "The metal cuffs bite painfully into your wrists, but with a little bit of excruciating contortion you manage to insert the end of the needle into the keyhole. For what seems like endless minutes, you jiggle the needle fruitlessly around, biting your lip against the cramps that keep trying to seize your painfully bent hands and bitterly reflecting that Linda Hamilton makes it look deceptively easy on the big screen -- and suddenly one of the cuffs snaps open. Quickly you free your other wrist, and the handcuffs slide free[if the location is Flesh Island], landing in the muck[end if].";
	otherwise:
		say "After a few moments of jiggling the needle around, the cuffs snap open.";
	now the pair of handcuffs is unlocked;
	if the player is wearing the pair of handcuffs, move the pair of handcuffs to the location.

Before closing the pair of handcuffs: try locking keylessly the pair of handcuffs instead. Instead of locking keylessly the pair of handcuffs:
	if the pair of handcuffs is locked:
		say "The handcuffs are already closed." instead;
	otherwise:
		say "The handcuffs close and lock with a click.";
		now the pair of handcuffs is locked.

Volume 12 - Atmospherics & Backdrops

Book 1 - Inside the Real Estate Office


Book 3 - Seaside

Seaside is a region. Narrow Beach, The Breakwater, Lighthouse Base and the Rocky Spur are in Seaside.

Every turn when the player is in Seaside:
	if a random chance of 1 in 7 succeeds:
		say "Another wave crashes against the rocks, sending a cloud of spray into the air."

Book 4 - Woods

[ in-town rules ]
[ raining rules ]
[ seaside rules ]
[ michael following rules ]
[ woods rules ]

Book 5 - Asylum

[
The Asylum Facility is a region. The Waiting Room, 

"The fluorescent light buzzes and pops unsteadily."
"The humming fluorescent light overhead casts a disjointed blue glow throughout the echoing stairwell."

"An eerie, flickering glow momentarily illuminates the hall outside the cell."
"    [bold type]*** ka-WHAM!!! ***[roman type][paragraph break]A monstrous clap of thunder rolls across the sky, shaking the whole town to its foundations."
"A burst of lightning from outside sends a brief flicker of illumination through the hall."
"You hear strange, gibbering laughter coming from down the hall."
]

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

[ From deep within the forest, you hear the deranged cry of a lone whippoorwill. ]

Volume 13 - Hunks of Text

Book 1 - Daily Intros

The day1 intro is always "[bold type]November, 1997[roman type].[paragraph break]You take a deep breath of salty air as the first raindrops begin to spatter the pavement, and the swollen, slate-colored clouds that blanket the sky mutter ominous portents amongst themselves over the little coastal town of Informhead.[paragraph break]Squinting up into the glowering storm, you wonder how everything managed to happen so fast. The strange phone call over a month ago, from a lawyer claiming to represent the estate of some distant branch of Michael's family, was bewildering enough in itself... but then the sudden whirlwind of planning and decisions, legal details and travel arrangements, the packing up and shipping away of your entire home, your entire life...[paragraph break]Now suddenly here you are, after driving for the past two days straight, over a thousand miles away from the familiar warmth of Texas, getting ready to move into the ancestral mansion of a clan of relatives so far removed that not even Michael has ever heard of them. And you've only been married since June and none of this was any of your idea in the first place, and already it's starting to rain.[paragraph break]These days, you often find yourself feeling confused and uprooted.[paragraph break]You shake yourself and force the melancholy thoughts from your head, trying to focus on the errand at hand. You're to meet with the real estate agent and pick up the keys to your new house while Michael runs across town to take care of some paperwork at the university. He'll be back to pick you up in a few minutes, and then the two of you can begin the long, precarious process of settling in.[paragraph break]A sullen belch emanates from the clouds, and the rain starts coming down harder -- fat, cold drops smacking loudly against the cobblestones. Shouldn't it be snowing in New England at this time of year? With a sigh, you open your umbrella.[paragraph break]Welcome to Informhead...".

The day2 intro is always "You are waiting in your bed, with the coverlet up under your chin, waiting for Father to come tuck you in. Footsteps in the hall pause outside your door. You close your eyes; when you open them again Father is standing at the foot of the bed. His eyes are bloodshot, rimmed with red, and you wonder if he has been crying. Slowly, he starts to take off his belt.[paragraph break]Only it's not your father after all, it's Michael. He hands you a golden sphere and says:[paragraph break]'I don't know what it opens yet but I have an idea.'[paragraph break]Your reflection is like a little doll trapped inside the sphere. Everything is tinged with gold. Your face swells and stretches comically as you stare back at yourself through the curved, distorting walls. Reaching out, your fingers curve back on themselves... the wall breaks and...[paragraph break]You are running from the eyes, the terrible red-rimmed eyes, through endless, narrow corridors of wooden slats and crumbling plaster. You stumble through turn after turn, hopelessly lost. There is a small hole in the boards -- peering through it you see Michael in the study, typing diligently away. You scream, you pound on the wall, but he can't hear you. The red-rimmed eyes draw closer; hurrying down a twisting passage you find a dead end... the wall breaks and...[paragraph break]Outside, you stand at another dead end, a high brick wall at the end of a steep, twisting lane. Written in black spraypaint...[paragraph break]He always returns to his blood.[paragraph break]Behind you, you hear the buzzing of a fly. You turn...".

The day3 intro is always "Down the road and through the woods, where the whippoorwills call their lunatic's song, you are running. The sky boils and thunders overhead. The red-rimmed eyes glare down at you. When you look up at them, they merge together, melting into a single, baleful orb -- a swollen, bloody moon.[paragraph break]You must escape. You veer off the road, tripping over an old, rotted stump, pushing aside a twisted sapling. Vines and brambles tear at your clothes. Rocks cut your feet. But still you must run, until you suddenly burst out of the underbrush, into a tangled, moonlit clearing.[paragraph break]An ancient, flagstone well stands amidst the weeds in the clearing's center, and you are drawn to it. Something is moving inside, scratching at the stones down in that circle of blackness, and for some reason all you can think is the basement, Michael is in the basement, and he's doing something bad...[paragraph break]Heart hammering, you lean over the crumbling lip. Your hair slips from your shoulders, dangling
tantalizingly close to the well's opening...[paragraph break]... the whippoorwills reach a crescendo...[paragraph break]Your eyes adjust to the dark and you see --[paragraph break][italic type]   -- you see the most horrible thing --[roman type][paragraph break]".

The day4 intro is always "Numb.[paragraph break]You float slowly to consciousness like a bubble rising to the surface of some warm, thick oil. You are numb.[paragraph break]For several minutes, that is as much as your battered mind can handle, that one thought: you are numb.[paragraph break]Then your head becomes a bit clearer, and you connect the thought with the sensations trying to make their way through your foggy brain. You are numb. Your arms. You can't feel your arms at all.[paragraph break]You try to get up but you can't move; you merely flop over onto your stomach like a struggling worm. You roll back over and sit up, and at last your vision clears and you finally get a good look around, and the horror of your situation finally slams home...".

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

Part 1 - Names

Table of Verlac Names
topic	name	type	known
"wilhelm"	"Wilhelm Verlac"	"clip"	false
"wilhelm verlac"	"Wilhelm Verlac"	"clip"	false
"william"	"William Verlac"	"clip"	false
"william verlac"	"William Verlac"	"clip"	false
"will"	"William Verlac"	"clip"	false
"will verlac"	"William Verlac"	"clip"	false
"edward"	"Edward Verlac"	"clip"	false
"edward verlac"	"Edward Verlac"	"clip"	false
"ed"	"Edward Verlac"	"clip"	false
"ed verlac"	"Edward Verlac"	"clip"	false
"croesus"	"Croesus Verlac"	"clip"	false
"croesus verlac"	"Croesus Verlac"	"clip"	false
"elijah"	"Elijah Verlac"	"clip"	false
"elijah verlac"	"Elijah Verlac"	"clip"	false
"eli"	"Elijah Verlac"	"clip"	false
"eli verlac"	"Elijah Verlac"	"clip"	false
"mordecai"	"Mordecai Verlac"	"clip"	false
"mordecai verlac"	"Mordecai Verlac"	"clip"	false
"heinrich"	"Heinrich Verlac"	"clip"	false
"heinrich verlac"	"Heinrich Verlac"	"clip"	false
"ann"	"Anna Verlac"	"soggy"	false
"ann verlac"	"Anna Verlac"	"soggy"	false
"anna"	"Anna Verlac"	"soggy"	false
"anna verlac"	"Anna Verlac"	"soggy"	false
"julia"	"Julia Ward Verlac"	"torn"	false
"julia ward"	"Julia Ward Verlac"	"torn"	false
"julia ward verlac"	"Julia Ward Verlac"	"torn"	false
"julia verlac"	"Julia Ward Verlac"	"torn"	false

After reading the clippings for the first time:
	repeat through the Table of Verlac Names:
		if the type entry is "clip":
			now the known entry is true.

After reading the torn journal for the first time:
	repeat through the Table of Verlac Names:
		if the type entry is "torn":
			now the known entry is true.

After reading the soggy pages for the first time:
	repeat through the Table of Verlac Names:
		if the type entry is "soggy":
			now the known entry is true.

To decide which text is the vername for (whom - a snippet):
	repeat through the Table of Verlac Names:
		if whom matches the topic entry:
			if the known entry is false:
				decide on "unknown";
			otherwise:
				decide on the name entry;
	decide on "blank".

Part 2 - Births & Deaths

Table of Verlac Lifespan
name	birthday	deathday	bused	dused	weight
"Wilhelm Verlac"	"March 11, 1651"	"October 18, 1734"	0	0	1
"Heinrich Verlac"	"October 18, 1734"	"December 16, 1802"	0	0	1
"Elijah Verlac"	"December 16, 1802"	"January 30, 1886"	0	0	1
"Edward Verlac"	"April 26, 1960"	"March 14, 1997"	0	0	1
"Mordecai Verlac"	"January 30, 1886"	"April 26, 1960"	0	0	1
"Anna Verlac"	"xxx"	"xxx"	0	0	0
"Julia Ward Verlac"	"May 4, 1964"	"January 10, 199"	0	0	0

To decide which text is the birthday for (whom - a snippet):
	let n be the vername for whom;
	if n is "unknown":
		decide on "That's not a name you're familiar with. Since the archives are filled with names you're not familiar with, you are unable to get very far looking for it.";
	repeat through the Table of Verlac Lifespan:
		if the name entry is n:
			now the bused entry is 1;
			if the name entry is "Julia Ward Verlac":
				decide on "Julia Ward: born [the birthday entry]";
			otherwise:				
				decide on "[the name entry]: born [the birthday entry]";
	decide on "The records don't seem to contain anything about [whom].".

To decide which text is the deathday for (whom - a snippet):
	let n be the vername for whom;
	if n is "unknown":
		decide on "That's not a name you're familiar with. Since the archives are filled with names you're not familiar with, you are unable to get very far looking for it.";
	repeat through the Table of Verlac Lifespan:
		if the name entry is n:
			now the dused entry is 1;
			decide on "[the name entry]: died [the deathday entry]";
	decide on "The records don't seem to contain anything about [whom].".

To decide whether the player has figured out the Verlac lifespan:
	let count be 0;
	repeat through the Table of Verlac Lifespan:
		now count is count plus (the bused entry * the dused entry * the weight entry);
	if count is greater than 2:
		repeat through the Table of Verlac Lifespan:
			now the bused entry is 0;
			now the dused entry is 0;
		decide yes;
	decide no.

Part 3 - Photo Album

Table of the Photo Album
name	content
"Wilhelm Verlac"	"[italic type]Wilhelm Verlac: Fled with mother Eustacia Verlac during the Witch Burnings of 1653; returned to Anchorhead in 1663; elected mayor of Anchorhead in 1690; built the Miskaton River Mill in 1695; began construction of the lighthouse in 1706.[roman type][paragraph break]The picture is a reproduction of a charcoal sketch, probably done when he was a younger man. The similarities to the portrait in the sitting room is evident, though: the patrician nose; the harsh, thin line of the mouth; the lean, wolfish jaw. It is the eyes, however, that carry the true family resemblance. Even in the rough, colorless strokes of charcoal, you can see that they are edged with the same raw madness that haunts the red-tinged gaze of the sitting room portrait."
"Heinrich Verlac"	"[italic type]Heinrich Verlac: Added cupola to the Verlac Estate in 1759; elected mayor of Anchorhead in 1765; rebuilt the Miskaton River Mill in 1770; led the battle of Quattac Bend in the Misquat Uprising of 1772; arrested as a Royalist sympathizer in 1777 but subsequently cleared of all charges; completed construction of the lighthouse in 1795.[roman type][paragraph break]The portrait is of Heinrich as an older man, in his late fifties, perhaps. The German ancestry shows through more clearly here, in the set of his jaw and the line of his forehead. The eyes burn with aggressive pride... and perhaps a little of the madness which stained the gaze of his ancestors as well."
"Elijah Verlac"	"[italic type]Elijah Verlac: Traveled to Europe in 1824 to study painting and to research the Verlac genealogy; returned to Anchorhead in 1832; entered the seminary at Arkham College in 1834; ordained in 1844; began construction of the Church of Celestial Wisdom in Anchorhead in 1860; accused of Confederate sympathies in 1862; retired from the clergy and devoted life to painting in 1873.[roman type][paragraph break]On of the earliest photographic portraits in the album, it depicts a man in his sixties, at least. His face is deeply scored by time, his skin mottled with liver spots, his long, gray hair swept back from a high, bony forehead. This man resembles the portrait in the sitting room more than any of the others, for he has practically the same eyes -- the raw, bloodshot madness staring out from hollow caves in his skull.[paragraph break]You note one other interesting detail: he appears to have an extra digit, a sixth finger, on his right hand."
"Mordecai Verlac"	"Mordecai Verlac: Currently residing in Anchorhead; attended seminary at Arkham College in 1906; ordained in 1912; re-established the Church of Celestial Wisdom in 1920; rebuilt the Miskaton River Mill in 1922.[paragraph break]The photograph depicts a man who has returned to his Puritan roots: dressed in spartan black, hair clipped in an archaic tonsure, clutching a Bible in his lap as he glares stoically at the camera. This is the kind of man who would whip his children for laughing on Sunday. H
is eyes still carry the Verlac madness, burning with single-minded righteousness."
"Edward Verlac"	"Since this book was only published in 1944, there is no mention of Edward Verlac or his family. He probably wasn't even born yet."
"Julia Ward Verlac"	"No mention of Edward's wife, since the book was published in 1944 and she probably wasn't even born yet. Even so, you're uncertain whether Julia Ward would have even counted as a proper Verlac."
"Anna Verlac"	"You cannot find that name anywhere in the album."
"William Verlac"	"You cannot find that name anywhere in the album."

To decide what text is the album content for (whom - a snippet):
	let n be the vername for whom;
	if n is "unknown":
		decide on "That's not a name you're familiar with. Since the album is filled with names you're not familiar with, you are unable to get very far looking for it.";	repeat through the Table of the Photo Album:
		if n is the name entry:
			decide on the content entry;
	decide on "You cannot find that name anywhere in the album.".

Book 5 - Library Books

Part 1 - Wheldrake

The description of Wheldrake is "This is a very thin volume, more of a tract than a proper book. You notice with some interest that it was published in 1918 by Miskaton University Press, though who 'Lord Wheldrake' was you cannot begin to fathom.". The printing of Wheldrake is "Even without a background in physics, you can immediately tell that this is nothing but the purest pseudoscience. The author claims to have made 'startling advances' relating to a heretofore unknown medium through which energy can travel. As far as you can tell, he performed no actual experiments; his entire thesis is built on extrapolation from his own creative reasoning. One bit near the middle has been marked with a highlighter:[paragraph break]'Having established the existence of the N-space medium, we can then reasonably posit the existence of a special wave-length capable of traveling through that medium; we will call this form of energy, appropriately enough, N-rays. Due to the fundamentally extradimensional nature of N-space, N-rays cannot logically be located at any one point of the electromagentic spectrum; they instead exist at every point along the spectrum, traveling perpendicular it. Naturally, the practical ramifications of being able to transmit extradimensionally are dwarfed by the theoretical implications...'"

Part 2 - Greene

The description of Greene is "Its full title is The Righteous Invasion: a History of Indian/Settler Conflicts in the Colonial Period by Warner Greene. It's a slim volume, published by Miskaton Press in 1943." The printing of Greene is "According to the introduction, the book's purpose is to give an objective account of the social and economic factors which led some of the early American colonies into violent conflict with the tribes of the northeast, concluding with a transitional discussion of how the 'Indian policies' which took shape early on evolved into Western Expansionism and the idea of Manifest Destiny. The author, reflecting the more conservative decade in which he wrote, tends to paint a more sympathetic picture of the European side of the issue than would be fashionable today; but all in all it seems an intelligent, thoughtful analysis.[paragraph break]Glancing through the table of contents, you notice that there is a short chapter on the Misquat Indians. Curious, you flip to the page.[paragraph break]The fate of the Misquat tribe, states the author, is an enigma which may never be solved. Diplomatic relationships with the original river valley settlers seemed doomed from the beginning. Documents from the period paint the tribe as aggressively pagan, degenerate savages. Nevertheless, Croseus Verlac managed to hammer out a peace treaty of sorts with the tribal leader, and the two groups led an uneasy coexistence for over a century.[paragraph break]The exact circumstances which led up to the 'battle' of Quattac Bend in 1772 are unclear. One document makes mention of an 'uprising', although since as far as is known, the Misquats were never in a subservient relationship to the Anchorhead settlers, the use of this term is more puzzling than revealing. In fact, no evidence has yet been discovered that corroborates the notion that the Misquat Indians initiated any sort of hostility whatsoever.[paragraph break]What is known is this: the Battle of Quattac Bend took place in the dead of night. It was led by Croseus' descendant, Heinrich Verlac, and 'fought' by some twenty town men, who crept through the woods and ambushed the small tribe during one of its holy ceremonies. There are no lists of casualties. Although the diary of one soldier tells of many prisoners being taken, there is no mention of where these prisoners were kept or what was eventually done to them.[paragraph break]No known document makes even the vaguest allusion to the Misquat Indians after 1772. From that date onward, the tribe effectively ceases to exist."

Part 3 - Horne

The description of Horne is "According to the author's foreword, the term 'metempsychosis' means the transmigration of souls -- that is, the reincarnation of a soul into another body. The book, which was published in 1922, is an examination of various traditions' explanations of how and why this happens.". The printing of Horne is "The author's tone is very matter-of-fact; it's unclear whether he is approaching the subject from the standpoint of a mythologist or if he actually believes in reincarnation and is evaluating the various theories based on their 'scientific' validity.[paragraph break]Flipping through the book, you find a passage that has been highlighted:[paragraph break]'Among tribes with a strong ancestor-worship tradition, one often discovers the quaint notion that one may be reincarnated as one's own descendant. Asking such people whether they must share a single body with the spirit of their ancestor (inheritance), or if they themselves are in essence their own grandfather (identity), is generally futile; among primitives, concepts of self-identity are poorly defined at best. Often there exists no word in their native language to express the idea. One can assume, however, that the primitive tribesman's conception of the situation is probably closer to the latter option; otherwise, over the course of generations one would have to contend with dozens of ancestral spirits fighting for room within a single body. However, the theory of identity also begs the question: how far back does the chain of reincarnation go? One could conceivably be dealing with a tribe of 'first' men, present at the day of Creation and renewing themselves over the aeons with each succeeding generation.'"

Part 4 - Frazer

The description of Frazer is "A thick and weighty tome, its full title is [italic type]A Historical Overview of Superstitions in the Miskaton Valley Region[roman type] by J. Arnsworth Frazer, published in 1906. It begins: 'Although New England has always been an abundant storehouse of American myth and folklore, the Miskaton River Valley has long been recognized as particularly fecund ground for tall tales and fanciful superstition. Legends abound of hideous, inhuman races living within the venerable hills; of pagan rituals enacted at unholy burial grounds and dedicated to ancient, blasphemous gods...' and continues along the same lines in the typically dry and bombastic style of those times."

Instead of reading Frazer:
	if the slip of paper is nowhere:
		say "As you open the book, a slip of paper falls from its pages and flutters to the ground.";
		now the slip of paper is in the location;
	otherwise:
		display the Table of Frazer Contents menu with title "from the Table of Contents of 'A Historical Overview'".

The slip of paper is a thing. The description of the slip of paper is "Someone was apparently using it as a bookmark. There's some writing on one side.". The printing of the slip of paper is "It says:[line break][italic type][line break]   born-died same date?[line break]   have to chk.[line break]records[roman type][line break]The handwriting is unmistakably Michael's.".

Table of Frazer Contents
title	text (some text)
"Introduction"	"[description of frazer]"
"The Legend of Croseus Verlac"	"This chapter deals with the strange mythology surrounding the person of Croseus Verlac, the first of the American Verlacs, who immigrated from the Black Forest region of Germany in the early 1600s. He settled in the Miskaton Valley and there helped establish the small fishing port soon to be known as Anchorhead.[paragraph break]Croseus sired six raven-haired daughters and schooled all of them at home. The girls were reclusive and odd of habit, and by the time the eldest turned fifteen the town had all but openly accused them of witchcraft. The townsfolk shunned the Verlac daughters and called them 'the Old Man's Coven' -- although never within earshot, since Croseus was already a very powerful and influential man in that region.[paragraph break]Although he never had a son, Croseus apparently sired a number of grandsons by more than one of his daughters -- ostensibly to keep the Verlac blood pure, such practice being not uncommon in the more secluded and xenophobic early settlements. However, most of the male children were born dead, or horribly deformed, or both, and there were furtive whispers that Croseus was practicing some form of dark sorcery on his progeny. The fact that Croseus fell ill on the day that the first healthy male child was born (to his youngest daughter), and died before day's end, did not go unnoticed.[paragraph break]After Croseus died, the townspeople turned against the 'coven', burning all of them to death except for Eustacia, the youngest, who managed to escape along with her infant son, Wilhelm. She returned some years later, after an outbreak of smallpox wiped out much of the town's older population, including the Calvinist minister and every last man and woman who had participated in the burning of Verlac's brood.[paragraph break]With a start, you remember the pattern you uncovered in the city archives -- each Verlac dying on the very day his grandson is born... no parents listed on the birth certificates... no marriage records, only sons then daughters then sons... and a sickening, horrifying thought begins to take shape: what if the foul tradition begun by Croseus Verlac did not end with his death?[paragraph break]What if, for centuries, the Verlacs have been raping their own daughters in order to sire grandsons?[paragraph break]What in God's name was wrong with this family? How could this have gone on for so long without anyone knowing about it or trying to stop it? And why does each Verlac die on the very day his grandson is born?[paragraph break]Edward Verlac, the man from whom Michael inherited the house and all its madness, must have been the last of his line, the child of his mother and his mother's own father. He went insane and killed his entire family, and now his legacy has been passed on to your husband. With a sudden rush of urgency and fear, you realize that you have to get out of this town, and you have to get Michael out with you, as soon as humanly possible."
"Rituals of the Misquat Indians"	"Little is known about the enigmatic Misquat Indians. They are believed to have occupied a small, unobtrusive area around southeastern Massachusetts, along the banks of the river which now bears their name. At the time that this book was published, various property disputes prevented any thorough archaeological investigation of the area; information regarding this tiny, sequestered tribe is therefore scarce and based largely on hearsay and folklore.[paragraph break]Analysis of the only known fossil -- a partial skull -- has led some anthropologists to conclude that the Misquat were not indigenous to the region. One popular theory holds that the tribe is most closely related to certain degenerate branches of the northern Esquimeaux, and were perhaps driven from their original sub-arctic clime and forced to settle in exile in what would become the northeastern United States.[paragraph break]Although precious few physical artifacts have been recovered -- chief among them a pair of ritual masks and a crudely carved, seven-holed wind instrument -- tall tales of Misquat ritual abound. They appear to have been a unilaterally reviled tribe. Most of the whispered stories involve horrid, ululating chants around blazing bonfires in the dead of winter night, grotesque copulations performed in honor of bestial gods, and of course abundant human sacrifice. The Misquat were generally known as child-stealers, creeping through open windows at night to perpetrate foul kidnappings. None of these claims can of course be verified; nearly all Indian tribes encountered by the first European settlers have been subject to such prejudices at one time or another.[paragraph break]It is known that the Misquat were most likely star-worshippers, and possessed what was likely a quite complex theology involving entities that dwelled beyond 'the bowl of tiny fires' -- their term for the night sky. These entities granted wisdom or insanity, bestowed prosperity or famine, according to how well or how laxly the tribe performed its ritual appeasements. The rituals attempted to contact or possibly summon aspects of these entities through elaborately carved 'beacons' -- mounds of stones or obelisks placed at significant geographical locations.[paragraph break]The few eroded hieroglyphs left by them (oddly, the Misquat were one of the few North American tribes to have developed a system of writing prior to any contact with Europeans) have proved a compelling but so far intractable puzzle for linguists today; all further detail about their ritual and mythology remains yet a mystery."
"The Dark Man and Other Aspects"	"Nearly all of the early European settlements circulated stories of a being known as 'The Dark Man' that lived in the primordial woods beyond the settlements' borders. Deeply religious and at the same time almost hysterically superstitious, clinging precariously to the edges of an unexplored and therefore terrifying continent, it was only natural for people in those times to project their collective fears onto the unknown. For the predominantly fundamentalist Protestant sects that first colonized the New World, these projections typically were embodiments of the Christian concept of the Devil.[paragraph break]The Dark Man generally takes the form of a man, sometimes of large or even giant stature but more often no larger than a natural human. He is invariably dark-skinned, although rarely described as a Negro -- most often he is a Caucasian with jet-black skin, thus combining the refined, cunning intelligence of the European with the base carnality of the African. He is regularly portrayed as the consort of witches. He has many names: The Dark Man, The Grinning Man, Old Scratch, Springheel Jack, The Evil One, etc., but always his formal, Biblical appellation -- 'Lucifer' or 'Satan' -- is scrupulously avoided, a holdover from the tradition that to speak a demon's name is to attract his attention and perhaps even summon him.[paragraph break]More interesting to the folklorist are the names that harken further back than these simple Christian superstitions, recalling a more pagan portrayal of the dark and unknown. These tales, which originate from the more reclusive colonies, often bring out the more animalistic, nature- worshipping aspect of the Dark Man. He is sometimes pictured as being covered with hair, or having hooves instead of feet, resembling Classical images of Pan. His names are more obscure: The Wicker (or Wicca) Man; The Black Goat With A Thousand Young. Therein lie tantalizing clues offering the enterprising folklorist still deeper glimpses into the collective unconscious.[paragraph break]A few rare instances of The Dark Man have been uncovered that point beyond even these antiquated references -- bizarre aspects that seem to reflect some of the less understood concepts of Native American mysticism. Such baroque names as 'The Lurker At The Threshold' or 'The Watcher Beyond The Stars' point to a substratum of human mythology as yet untouched. These versions typically describe not physical manifestations, but rather abstract concepts of Evil and Time that some scholars have linked to the pre-Roman god Saturn, before he became characterized as merely the father of Zeus, when he was instead identified with the Ouroburos Dragon, Devourer of Worlds. Hopefully, as more archaeological evidence is uncovered, we will be able to speak of these primordial connections with greater confidence."
"The 'Strangling Mist' Legend"	"Rather unique to the lower Miskaton River Valley, this tale centers around a seemingly malevolent fog that roams the forests and lonely night roads, choking the unwary traveler with invisible, untouchable hands.[paragraph break]The experience of being attacked by this strange entity is described in an 1855 journal as: '...lyke as thowe a deade man were to put his corpsey fingers downe yr throate withe one hande, & up yr nostrille withe the other...'[paragraph break] No two tellings can agree on the origins of this terrible mist. Some accounts insist that it is a spirit of the restless dead; others attribute the effect to malicious hobgoblins. Other versions implicate witchcraft, a pirate's curse, swamp faerie... the list goes on. Some of the more esoteric explanations seem to indicate that the legend was adapted by white settlers from native superstitions held by the tribes indigenous to the Miskaton region; however, there is no evidence as yet that the 'strangling mist' existed in any form prior to the appearance of Europeans."
"The 'Ghost Train' Legend"	"Yet another colorful folk legend involves the recurring image of a 'ghost train' -- a spectral locomotive that materializes from nowhere, glides across the haunted track for a short period of time, and then disappears as mysteriously as it came.[paragraph break]This story did not originate among the first white settlers, of course; obviously it only came into being after the advent of the steam locomotive in our burgeoning Machine Age. The earliest known recorded version of this story, in fact, is dated 1882. Nonetheless, the legend provides us with an interesting example of how the collective unconscious adapts itself to changing aspects of our culture, cloaking old symbolism in the trappings of new technology.[paragraph break]Although many versions hold that the ghost train represents the ghastly echoes of a locomotive that was wrecked (derailed and lost off a mountain pass is the most popular means of destruction), this is in fact a simplistic interpretation not seen until many decades after the myth originated

. More intriguing and more useful to the folklorist are versions that explain the ghost train as a transport to the land of the dead -- a modernized boat of Charon, ferrying damned souls across the shroud to the devil's newly industrial Hell. These are the versions which most faithfully maintain links to the traditions of the past, and demonstrate the curious evolutionary behavior of the myth.[paragraph break]In some of these tellings, the traveling soul must have a ticket to present to the grim conductor -- an element directly analogous to the ancient custom of placing of gold coins beneath the tongue to buy passage to the underworld. Living souls who ventured too near the tracks as the ghost train made its nightly sojourn would find themselves swept along -- echoing the Celtic/Germanic myth of the Wild Hunt, in which witness were compelled to join as either hunter or prey. Those who thus boarded the train by accident, madness or mere foolishness were inevitably carried back to whatever eldritch dimension from whence the train originated. Tales of return voyages are rare and generally held by those who pass them along to be apocryphal.".

Book 7 - Journals

The torn text is always "It's a slim little book, no bigger than your hand, bound in imitation leather. The mice really have been at it; most of the pages have been chewed away.". The printing of the journal is "It's a slim little book, no bigger than your hand, bound in imitation leather. The mice really have been at it; most of the pages have been chewed away. What's left of the journal reads:[paragraph break][italic type]Desperate. Went back to the old twisting lane and found only a blank wall. Without the amulet, how can I resist --[paragraph break]...bottles, bottles...[paragraph break]Getting worse. People I have never met smile knowingly at me in the street. The police believe I am a child molester, but have brought no charges against me as yet. Why? Head hurts all the time. I have turned the cellar upside-down... damn it all, where is it?[paragraph break]Dreamed of Father again. Dreamed of Grandfather. Those horrible, red-rimmed eyes...[paragraph break] -- into the safe, finally. [the printed combination of the safe]. Won't forget THAT soon. Ha![paragraph break]CANNOT DISCOVER ENTRANCE IN THE CELLAR!!! Secret eludes me still but I WILL FIND IT!!! The clue is in their names, that pestilential procession of names! If I could only -- [roman type][paragraph break]The text breaks off as several more pages are missing. the last fragmented entry reads:[paragraph break][italic type] -- will fail. There is no recourse left. I know now what I must do. Julia -- [roman type]".

The soggy text is always "Carefully, you turn the tattered pages. The handwriting is that of a young girl. You idly wonder if this might have been the diary of one of Edward Verlac's daughters -- but then you notice part of a date, just visible in the corner of the page: 1953. This must have been written, then, several years before Edward was born.[paragraph break]The entries that are legible read as follows:[paragraph break][italic type]...Father came again to my bed last night... mother doesn't... tells me I can't... to be a good daughter. Sometimes it hurts, but Father always tells me I shouldn't cry. Father says a daughter must do her Duty if she wants to get into Heaven. And I do want to get into Heaven...[paragraph break](this entry dated 1957) [italic type]...my poor little William. Father calls him an aberration, child of the Devil, but I don't believe... locked in the attic. I go to see him whenever Father is away. I sing to him, sometimes, through the keyhole, and slip him sweets through the crack under the door... my baby is beautiful... can't let him hurt my dear baby William... to the doctor, and he has a plan... I can never... this locket, William, and I will always keep yours... to always remember my face...[roman type][paragraph break]Nothing else is readable except for one fragmented entry near the very end of the book, the date in the corner reading February 27, 1961:[paragraph break][italic type]...dead, but not dead yet... will not allow him to do to Edward what he wanted to do to William... have learned... given him the charm against the... never take it off, dear Edward...[roman type] (a page has been torn away) [italic type]...fear to sleep... mist at the window --[roman type][paragraph break]And that's all.".

The jailhouse text is always "My name is Edward Verlac, and this is my testament:[paragraph break]I am utterly, utterly mad. They have locked me in here for my own safety -- and for the safety of others. My arms are bound in a strait jacket. Yet this is no less than I deserve. I am writing this using a needle dropped carelessly by one of the orderlies some weeks ago; biting my lip to draw blood for the ink, I hold the tiny steel quill beneath my teeth to write. This exhaustive task shall be my last on earth; when I am finished, I shall dash my brains out against the cell window. The last of the Verlacs will be dead, and the world made a slightly brighter place thereby.[paragraph break]Know this: I did not slip into madness through any weakness or congenital defect (except insofar as my blood is indelibly tainted with the cursed ichor of the Verlac line) -- I was driven mad by the spectre of my great-great ancestor, Croseus Verlac. For generations that fiend has traveled down the family line, passing from body to body in a hideous, incestuous ritual whereby he impregnates his own daughter, then projects his black soul into the innocent body of his infant grandson. I myself was horrified to discover that I am in fact the progeny of my own grandfather, Mordecai Verlac, and his wretched, tormented daughter -- my mother, Anna. The experiment failed on the first attempt, producing William, my sickly, malformed elder brother whom I never knew. William, however, died while still a toddler -- or so my mother has always told me -- and the next unholy coupling resulted in me.[paragraph break]From as early as I can remember, I could feel the lurking presence of my grandfather, who died the day I was born, and who I now realize was little more than a fleshly disguise for the pernicious warlock Croseus. He stalked the boundaries of my mind, seeking a means of entrance, of condemning my soul to limbo and taking up a fresh, new abode in my young limbs. His evil, red-rimmed eyes haunted my every dream and o'ershadowed even my waking hours. The amulet my mother gave me while I was still in the crib protected me -- for the old man cannot abide its presence, and must flee all who wear it -- but Mother died while I was still young, and since then my folly has brought tragedy to myself and to all those I love.[paragraph break]The memory of my mother's urgent warnings faded soon after her death. I became embarrassed by the scandal that seemed to hover over my family name like a pall, and was mortified by the superstitious trinket that I still wore around my neck, as if in ignorant servitude to those old myths. The red-rimmed eyes had not given me nightmares since my twelfth birthday, and I dismissed them as an immature fancy that had passed along with my boyhood. At the age of 21, I pawned the amulet at a magic shop somewhere in town, and thereby sealed my doom.[paragraph break]For ten years I have resisted Croseus' demonic encroachment upon my mind, my soul, my very being, with only the strength of my will. It was not enough. I found my mind flooded at the oddest times with strange, antiquarian memories; my speech and mannerisms lapsed into uncharacteristic, archaic patterns; and worst of all, I found myself looking at my dear daughter Gertrude -- only seven years old! -- in the most unwholesome way, with the most unmentionable ideas creeping through my subconscious.[paragraph break]I scoured every street in this cursed town, looking for that magic shop, but I have never found it. In desperation I began delving into old histories and forbidden genealogies, researching the history of the dread Verlac name for some solution to my plight. I discovered no answers, only the horrors I have just written of. But I also discovered something worse -- the ultimate purpose behind the old demon's nefarious bodysnatching![paragraph break]He plans to unleash a primordial evil such that the earth could not possibly survive. I have seen the plans and the blueprints; I have read the dread tome in my great-great grandfather's church; I have used the obsidian lens that is not true obsidian, and I have looked upon what that madman means to draw down onto this earth! He and this town, his foul congregation of fanatics and madmen! They are all a part of it! They have been watching me, waiting for me to change, waiting for the return of their monstrous high priest!![paragraph break]It was then that I realized that killing only myself would not be enough; for the degenerate inhabitants of this town would hunt down my family and wreak a terrible vengeance if I took from them their Messiah. And besides; who could say whether the crafty devil Croseus might not concoct some new way to enter the world, through a new body -- through that of one of my daughters, perhaps? The ritual has always demanded a grandson, but Croseus was never one to let such a trivial inconvenience stop him. He would find a way. He always returns to his blood.[paragraph break]I did the only thing I could do -- Julia, I am so terribly sorry, but I will be with you soon -- I could not let him have you, or Gertrude or Sonia -- and I will not let him have me. Say good-bye to the last of the Verlacs -- there will be no blood for him once I am gone.".

Volume 14 - Testing

Book 1 - Day One

Test 1a with "se / x fence / push cans to window / stand on cans / open window / enter the window / consult files about verlac / w / push play / unlock door / w".
Test 1b with "w / n / s / look under table / take flask / take lantern / s".
Test 1c with "s / s / e / e / se / take tin / nw / w / w / n / n".
Test 1d with "w / nw / w / n / consult register about michael / s / show keys to michael / g".
Test 1e with "e / se / e / s / s / e / s / sw / nw / unlock door / n".
Test 1f with "close door / lock it / u / n / get in bed / sleep".
Test day1 with "test 1a / test 1b / test 1c / test 1d / test 1e / test 1f".

Book 2 - Day Two

Understand "solve-safe" as solving the safe. Solving the safe is an action applying to nothing. Carry out solving the safe:
	try turning the dial to (entry 1 of the true combination of the safe);
	try turning the dial to (entry 2 of the true combination of the safe);
	try turning the dial to (entry 3 of the true combination of the safe).

Understand "skip-clip" as skipping the clippings. Skipping the clippings is an action applying to nothing. Carry out skipping the clippings:
	repeat through the Table of Verlac Names:
		now the known entry is true.	

Test 2a with "stand / dress / take all / look in pants / look in wallet / take card / w / take towel / e".
Test 2b with "s / e / s / move bed / look in hole / read pages / drop pages / open box / take locket / drop box / n".
Test 2c with "w / d / w / open cupboard / pull lining / read journal / drop journal".
Test 2d with "e / u / e / n / x books / take poe / solve-safe / take all from safe / s / w / d".
Test 2e with "n / w / take light / turn it on / nw / unlock door / take broom / d / s / search crates / sweep web with broom / take key / drop broom / skip-clip".
Test 2f with "n / u / se / unlock door / n / nw / unlock door / d / consult nameplate about william / open william's coffin / take bones / take skull / u / se / s / close door / lock it".
Test 2g with "e / s / unlock door / s / se / ne / n / w / n / n / nw / x graffiti / w / s / give puzzle box to man / ask man about amulet".
Test 2h with "n / e / sw / s / s / e / e / give flask to man / ask man about william / ask man about coffin / show skull to man / give amulet to man / drop skull".
Test 2i with "w / w / take newspaper / e / s / sw / nw / n / close door".
Test 2j with "u / e / n / e / take opener / w / s / pull cord / u".
Test 2k with "put newspaper under door / put opener in keyhole / take newspaper / take key".
Test 2l with "unlock door / n / search straw / take locket / s / drop newspaper / drop opener / d".
Test day2 with "test 2a / test 2b / test 2c / test 2d / test 2e / test 2f / test 2g / test 2h / test 2i / test 2j / test 2k / test 2l / w / n / get in bed / sleep".

Book 3 - Day Three

Test 3a with "stand / dress / take all / put all in pockets".
Test 3b with "s / e / n / e / turn spheres / sw".
Test 3c with "w / look through hole / e / look through hole / nw / look through hole".
Test 3d with "sw / se / put disc in telescope / look through telescope".
Test 3e with "se / e / push ladder / d / w / d / s / se / ne / s / s / x trees".
Test 3f with "w / sw / w / s / push plywood / n / e / s / d / hide in bones / z".
Test 3g with "stand / take bear / u / n / take hook / e / ne / e / n".
Test 3h with "e / se / break lock with hook / d / search shape / w / put all in pockets".
Test 3i with "jump / u / take cloth / e / e / u / u / take rope / d / w / w / s".
Test 3j with "tie rope to railing / d / jump / turn off light / turn on light".
Test 3k with "nw / n / n / open tin / put oil on hatch / open hatch / u / e / w".
Test 3l with "nw / e / unlock small drawer / open it / take bronze key / w".
Test 3m with "w / x commotion / w / n / w / n / knock on 11 / show bear to woman / search overalls / take long steel key / w / s".
test 3n with "s / search brush / unlock hatch / n".
test 3o with "put towel on wheel / turn wheel / n / n / pull handle / z / z / open hatch / n".
test 3p with "u / x blueprint / take calipers / measure mirror 2 / take mirror 2 / open tin / put oil on mirror 2".
test 3q with "d / s / s / s / s / ne / e".
test 3r with "e / ne / e / u / d".
Test day3 with "test 3a / test 3b / test 3c / test 3d / test 3e / test 3f / test 3g / test 3h / test 3i / test 3j / test 3k / test 3l / test 3m / test 3n / test 3o / test 3p / test 3q / test 3r".

Book 4 - Last Day

Test 4a with “kick door / g / take shard / put shard in crack / cut jacket with shard”.
Test 4b with “s / s / unlock west door / w / x tear / take canvas / read it / take needle / e / n / n”.
Test 4c with “open closet / take coat / wear it / take all from closet / put all in pockets / s / s / s / s / d”.
Test 4d with “take matches / take lamp / light matches / light lamp with match / n / n / take magazine”.
Test 4e with “give magazine to madman / n / x name tag / n / n”.
Test 4f with “n / remove coat / wear robe / e / z / z / z / z / z / z / z / take amulet”.
Test 4g with “n / z / give gold locket to monster / kill monster with hook”.
Test 4h with “n / w / n / e / ne / unlock door / e / u / take real mirror”.
Test 4i with “z / z / give M4 to michael / give M3 to michael”.
Test 4j with “z / z / z / z / z / z / z / z”.
Test 4k with “free boy / w / sw / sw / w / s / e / s”.
Test 4l with "s / touch obelisk / show ring to michael / give amulet to michael".
Test 4m with "take flute / close hole one / close hole five / blow flute".

Test day4 with “test 4a / test 4b / test 4c / test 4d / test 4e / test 4f / test 4g / test 4h / test 4i / test 4j / test 4k / test 4l / test 4m”.

Fouring is an action applying to nothing. Understand “day4” as fouring. Carry out fouring:
	now the matches are in the trench coat;
	now the lantern is in the trench coat;
	now the keyring is in the trench coat;
	now the old rusty meat hook is in the trench coat;
	now the gold locket is in the trench coat;
	now the amulet is in the trench coat;
	now the tarnished bronze key is on the keyring;
	now M4 is in the trench coat;
	now M3 is in the trench coat;
	now M3 is oiled;
	now the strange metal flute is in the trench coat;
	now the player is wearing the trench coat;
	now the player is wearing the wedding ring;
	now the player is wearing the clothes;
	now the player is carrying the hooded robe;
	now the day of the player is 4.

[
You can hear a low rumbling and a distant, plaintive whistle coming from the northeast.

The train lumbers into view, its rumbling passage growing louder as it approaches.

The ground beneath your feet begins to vibrate as the rumbling grows to a roar. The whistle lets out an urgent shriek. The train is bearing down quickly now, very, very close.

Before you can leap away, the train hits you, pulverizing your body like a rotten squash.
]

Table of Seaside Effects
message
"Another wave crashes against the rocks, sending a cloud of spray into the air."

Table of Wind Effects
message
"A flurry of dead leaves goes skittering along the ground, swirling past you in the wind."
"A gust of wind blows your hair into your face."
"The cold wind blows harder, tugging at the hem of your trench coat."
"The cold wind cuts through your clothes, chilling you to the bone."
"In the distance, you can hear the lonesome keening of a train whistle drifting on the wind."

Table of Rain Effects
message
"The rain slackens off momentarily to a weak drizzle, then returns afresh in a brief, freezing downpour."
"A sudden gust of wind blows a cold spray of rain into your face."

Table of Town Effects
event
"In the distance, you can hear the lonesome keening of a train whistle drifting on the wind."
"Overhead, the swollen clouds flicker ominously with a greenish haze of sheet lightning."
"The clouds overhead mutter restlessly to themselves."
"You hear a soft rattle behind you, like an empty tin can rolling across the uneven ground. When you turn, there is no one there."


