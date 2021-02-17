"The Guardian" by Sari Stissi

Release along with an interpreter.

The story title is "The Guardian". 
The story author is "Sari Stissi". 
The story headline is "An Interactive Exploration". 
The story genre is "Fantasy". 
The release number is 1. 
The story creation year is 2018. 

[Below is the code for the status line at the top of the screen]

Rule for printing the name of a direction (called the way) while constructing the status line: 
	choose row with a heading of the way in the Table of Abbreviation; 
	say "[shortcut entry]". 

Table of Abbreviation 
heading	shortcut
north	"N"
northeast	"NE"
northwest	"NW"
east	"E"
southeast	"SE"
south	"S"
southwest	"SW"
west	"W"
up	"U"
down	"D"
inside	"IN"
outside	"OUT"
 
When play begins: 
	now left hand status line is "Exits: [exit list]        .......       [location]       .......      type help for help list";  
	
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]". 
	
The story description is "You are a woman in ancient Greece on the Island of Sarpedon and you have no idea who you are. What happened? Who are you really?

You are encouraged to check the [bold type]help[roman type] list to know the commands you will need for this game and how to use them. Also [bold type]examine[roman type] is a [italic type]very[roman type] useful command in this game.
[line break]And you are encouraged to look at the top of your screen where you can see a status line. It's a different color than the rest of the page and you can see where your exits are, the name of the room you're in and a reminder for how to access the help list.
[line break]The Exits are abbreviated so:
	[line break]N is North
	[line break]S is South
	[line break]E is East
	[line break]W is West
	[line break]NW is Northwest
	[line break]NE is Northeast
	[line break]SW is Southwest
	[line break]SE is Southest
	[line break]D is Down
	[line break]U is Up
[line break]Consult the help list for more info!".
after printing the banner text:
	say "[line break][story description][line break]"
	
The description of the player is "You can see that you're wearing a full length piece of wool draped over you and pinned around the waist. You can't really seem to remember how you got into this outfit or what it is, but it seems to be what everyone else is wearing. You're also wearing a wide brimmed hat that seems to have a kind of scarf draped around it protecting your neck from the harsh sun.".
	
Understand "help" as asking for help.
Asking for help is an action out of world.
Carry out asking for help:
	say "Welcome to the Help List!

This is a list of commands that you can type in that would be useful to you in the game. If you're unsure of how to do something, or stuck at a particular point, try some of these commands and you may get some hints.

The format of this list will be  <Command>: <what the command does>.
[line break]<object> means replace that with the actual name of the object in the command.
[line break]<person> means replace that with the name of a person that you meet in the command. etc.[line break]";
	say "-[bold type]look[roman type]: will redescribe the room/place you're in and the things in it.
[line break]-[bold type]examine (x for short)[roman type]: will take a closer look at an object in the room/place.
[line break]         eg. examine plates
[line break]-[bold type]play <object>[roman type]: if the object is an instrument, this command allows you to play it.
[line break]         eg. play guitar
[line break]-[bold type]take <object>[roman type]: if you can take an object and carry it with you, this command will put it in your inventory so that you can keep the object on your person. You can also buy items buy using the take command. As an alternative you can use the [bold type]buy[roman type] command.
[line break]         eg. take stool
[line break]-[bold type]buy <object>[roman type]: this allows you to buy wares from vendors. You can also use the [bold type]take[roman type] command.
[line break]         eg. buy peaches
[line break]-[bold type]drop <object>[roman type]: will remove an object from your inventory and into the room/place you're in.
[line break]         eg. drop candle
[line break]-[bold type]inventory (i for short)[roman type]: will show you all the objects you're currently carrying.
[line break]-[bold type]go <direction> (abbreviation for direction, like n for north, or just the direction for short)[roman type]: will take you in that direction to the next room/place The directions are North, East, South West, Northeast, Southeast, Southwest, Northwest, Up, and Down. There's no need to specify through what you think you're going through, like a hole, just writing the direction is enough! 
[line break]          eg. go down
[line break]-[bold type]ask <person> about <object>[roman type]: If there's a named person, you can ask them about objects you may have learned about.
[line break]          eg. ask Bob about the eggs
[line break]-[bold type]put <object> on <object>[roman type]: will set the first object on top of the second one.
[line break]         eg. put cup on the table
[line break]-[bold type]pray to <diety>[roman type]: allows you to sacrifice a gift in order to receive wisdom from a diety in their temple. To pray you must put a gift on the altar first. You can only pray to the diety of that temple, and you can only pray to that diety at the altar.
[line break]         eg. pray to Venus, or just pray
[line break]-[bold type]open <object>[roman type]: will open any unlocked object that is closed.
[line break]         eg. open box".

[Description of the Main Level Rooms]
The Town Center is a room. "[if Times Visited is 0]You wake up not quite being able to remember anything from before this moment. All you remember is that you're Greek and you live on an island called Sarpedon. You look around you and notice dirt roads and beautiful foliage all around and a calmly flowing river to the north. The mountains near the northeast frame this beautiful landscape and you can sort of see some kind of buildings near the east. To the west you hear the bustling noise of what is most likely people trading, and to the south you see the architectural marvel of the temple of Athena.[else if remainder after dividing Times visited by 2 is 0]You're back to the beautiful courtyard dirt roads, beautiful foliage, river near the north, mountains near the northeast, some kind of buildings near the east, the bustling marketplace near the west, and the marvelous Temple of Athena to the south. It seems like something is different since the last time you were here.[Otherwise]You're back to the beautiful courtyard dirt roads, beautiful foliage, river near the north, mountains near the northeast, some kind of buildings near the east, the bustling marketplace near the west, and the marvelous Temple of Athena to the south[end if]"

A lyre is in the Town Center. "There's a lyre laying against a wall. Calling out to you to [bold type]play[roman type] it since its owner is nowhere to be found." The lyre is fixed in place.

[Code for handling the playing of the lyre----------------------------------------]
The sack of coins are nowhere. "On the ground in front of your feet you can see gold coins tossed at you from when you played the lyre. This will probably be enough to buy three things."
Play Lyre is a number which varies.

instead of taking lyre:
	say "It doesn't seem to be as heavy as a bag a large rocks, but it is and you can't lift it! Perhaps it's magic"

Understand "play [something]" as playing.
Playing is an action applying to one thing.
Carry out playing:
	now the sack of coins are in the Town Center;
	now Play Lyre is Play Lyre + 1.
Report playing:
	say "You play a beautiful melody and even sing a bit. It was so touching that some towns folk have given you a couple pieces of gold, which will probably only get you three things at the marketplace. You might as well [bold type]take[roman type] the coins and head towards there!"	

after taking the sack of coins:
	say "Now the coins are in your inventory ([bold type]i[roman type])."
[----------------------------------------------------------------------------------]

An apple tree is in the Town Center. "Specifically among the foliage, you spot an apple tree with delicious apples ripe for the picking! Maybe one will fall soon."

The apple tree is fixed in place.
[Code for handling fallen apple--------------------------------------------------]
The fallen apple is nowhere. "One of the beautiful ripe apples fell down! Now you can [bold type]take[roman type] it."
The fallen apple is edible.
Rule for printing the name of the fallen apple while taking inventory:
	say "fallen apple: [Apple Count]".
Times visited is a number which varies.
before going to the Town Center:
	now Times visited is Times visited + 1;
	if remainder after dividing Times visited by 2 is 0, now the fallen apple is in the Town Center;
	else now the fallen apple is nowhere.
Apple Count is a number which varies.
after taking fallen apple:
	now Apple Count is Apple Count + 1;
	say "You now have an apple in your inventory ([bold type]i[roman type]).".
[After taking the mysterious box: 
	if the box had not been carried by the player, say "You lift the mysterious box for the first time."; 
	if the box had been carried by the player, say "You again pick up the mysterious box." ]
[----------------------------------------------------------------------------------]

A hole is in the Town Center."Behind a corner you spot a hole in the ground that you can probably fit [bold type]down[roman type] into."

The hole is fixed in place.

The Agora is a room. "You walk into a bustling marketplace with three major vendors. Hopefully you can find some useful items here. There seem to be three pretty well established vendors here to the north, west, and south.".

[Code for making the command buy not fail for players ------------------------]
Understand the command "buy" as something new.
Understand "buy [something]" as fake buying.
Fake buying is an action applying to one thing.
Carry out Fake buying:
	try taking the noun.
[----------------------------------------------------------------------------------]
[Code for leading the player to play the lyre-------------------------------------]
after going to the Agora:
	if Play Lyre is 0:
		say "[bold type][location][roman type][line break]You walk into a bustling marketplace but quickly realize that you don't have anything to trade with! Maybe you can find something back in the Town Center.";
	else:
		Continue the action.
[----------------------------------------------------------------------------------]
Vendor 1 is a room. "You walk up to a stand where a burly man and his wife show you all the neat woodworking and ceramic items they've made and have to sell. Well at least you assume the small, toned lady made some of these items. You're not actually sure. There are many beautiful wooden sculptures here that you don't think the burly man has the patience or delicacy to make, but he treats the woman like a lowly shop hand. You wish you could make her situation better. Maybe buying something of hers would be good."

In Vendor 1 are plates, axes, knives, pots, vases, and large vessels.
The description of the knives is "You're not very fond of weapons, but the knives catch your eyes because they're breathtaking. You walk a bit closer to them and you can see the reflection of the woman perfectly and colors dance across her skin. You might as well be entraced. These might even be made from gems and not just metal. It looks like a type of ceremonial knife."
The description of the large vessels is "You're intrigued by the large vessels try to see if you can find something of use, so you flag the woman over."
The description of the plates is "Just some hand crafted wooden plates".
The description of axes is "Just some nice axes with a wooden handle.".
The description of pots is "Just some nice bronze pots.".
The description of vases is "Just some nice hand made ceramic vases.".
The ceremonial knife is nowhere. 

instead of taking plates:
	say "You don't have the trade item needed to get the plates, but you probably won't need it.".
	
instead of taking axes:
	say "You don't have the trade item needed to get the axes, but you probably won't need it.".
	
instead of taking pots:
	say "You don't have the trade item needed to get the pots, but you probably won't need it.".
	
instead of taking vases:
	say "You don't have the trade item needed to get the vases, but you probably won't need it.".
	
instead of taking knives:
	say "You don't know how much they costs and they look too well crafted for the items you have. You decide to leave them.".
	
instead of taking large vessels:
	say "These vessels are way too large for you to carry.".

The description of the ceremonial knife is "This is the most intricate knife you at this vendor. In fact, you can see gold welded into it. It's stunning and the blade looks like the midnight sky. You ask the woman how much this is and she says, 'Well for you I'll trade it for five apples!'".
[Code for making the boat appear and taking it----------------------------------]
The boat is nowhere. The description of the boat is "It's a bit on the small side but very sturdy. This may be the thing you're looking for to navigate the river!".
after examining the knives:
	now the ceremonial knife is in Vendor 1;
	now Examine Knives is 1;
	say "[line break] [italic type]It's always good to [bold type]look[roman type] at your surroundings again in case something changed![roman type]";
instead of taking ceremonial knife:
	if Apple Count is less than 5:
		say "You don't know how much this costs and it looks too well crafted for the items you have. You ask the woman how much this is and she says, 'Well for you I'll trade it for five apples!' You decide to leave until you have enough to pay for it!";
	if Apple Count is greater than 4:
		say "Kind woman, thank you for such interest in my wares! It pleases me to know that people like my craftswork!";
		Continue the action.
		
after examining the large vessels:
	now the boat is in Vendor 1;
	say "The woman comes up to you and points out that hidden small-ish boat behind some large vases and fishing boats. 'I made this boat myself!' she says. She looks around and makes sure her husband is occupied with something else and whispers, 'My husband over there doesn't like when I make things like he does, but I've always been drawn to it. I think once I sell it he won't be as irate anymore. Would you like to buy it? I'll accept 3 bundles of wheat. It would really mean a lot to me!'".
instead of taking the boat:
	if player does not have bundles of wheat, say "You need to get wheat first!";
	else:
		Continue the action.
Boat Taken is a number which varies.
Examine Knives is a number which varies.
after taking the boat:
	now the bundles of wheat is nowhere;
	now Boat Taken is 1;
	say "Thank you kind woman for your wheat! May this boat be blessed by Athena herself for safe travels! Speaking of Athena, it really is a shame that one of her priestesses disgraced the temple like that! Where did she go getting such an idea! Anyways, have a good day and come back real soon!";
[-----------------------------------------------------------------------------------]

Vendor 2 is a room. "You almost trip walking up to this stand because the vendor is so beautiful and you literally stopped paying attention to where you were going.  To quickly try to impress her, you take stock of what she's selling and try to find an interesting fact that you know. If only you could remember anything about plants and herbs! If only you remembered to stop walking instead of being drawn ever so closer and bumping into her cart! You also notice a small trap door leading [bold type]down[roman type] somewhere. next to the side of this woman's cart.[line break]She seems to like your awkwardness so that's a plus![if Temple Visited is 0] She says, 'Hey there! You seem like just the woman I've been looking for!' While you love that she's been looking for you, you are still really confused. You are about to say something but she stops you by saying, 'I know that this might seem weird, but I promise that I'm here to help! You should definitely go to the [bold type]Temple of Athena[roman type]. I feel like you're needed there.'[otherwise] She says, 'I'm so very glad you're back! What can I help you with?'[end if]"

In Vendor 2 are oregano, marjoram, fennel, mint, sideritis, chamomile, flowers.

The description of oregano is "Rigani in Greek. Oregano encourages good luck and good health and symbolises joy. It's good for warding off evil spirits and when worn on the head during sleep, it encourages psychic dreams.". The description of marjoram is "Mantsourano in Greek. Marjoram is a symbol of happiness and love and it can be made into wreaths for newly married couples or placed on graves, to help fill the final resting place with eternal happiness and peace.". The description of mint is "Menta in Greek. This herb was named after a water nymph named Minthe. She drew the attention of Hades and when Persphone learnt of this, she turned Minthe into an herb.". The description of fennel is "Marathon in greek taken from the place named Marathon. Fennel promotes endurance and longevity.". The description of sideritis is "Also known as Greek Mountain Tea, the name Sideritis is derived from the word iron and is used to heal wounds caused by iron weapons. It can also be used as a tonic.". The description of chamomile is "In Greek chamomile means apple of the ground because of its fresh apple scent. Hippocrates recomends chamomile for purification, protection, and to fight colds.". 

instead of taking oregano:
	say "You're not sure you have anything to trade for this, so you decide to leave it.".
	
instead of taking marjoram:
	say "You're not sure you have anything to trade for this, so you decide to leave it.".
	
instead of taking fennel:
	say "You're not sure you have anything to trade for this, so you decide to leave it.".
	
instead of taking mint:
	say "You're not sure you have anything to trade for this, so you decide to leave it.".
	
instead of taking sideritis:
	say "You're not sure you have anything to trade for this, so you decide to leave it.".
	
instead of taking chamomile:
	say "You're not sure you have anything to trade for this, so you decide to leave it.".
	
instead of taking flowers:
	say "You're not sure you have anything to trade for this, so you decide to leave it.".

[Code to reveal hints and gifts to bring to Athena-----]
The vial of cinnamon is nowhere. The tiger lily is nowhere.  The torch is nowhere. The torch is lit. The vial of Dragon's Blood is nowhere. The onyx is nowhere. The star sapphire is nowhere. The ivory is nowhere. The bronze shield 1 is nowhere. The bronze shield 2 is nowhere. The bronze shield 3 is nowhere.
The description of bronze shield 1 is "The round shield is polished remarkably well and is made completely out of bronze. You can see the reflection the things around you in the shield.". The description of the bronze shield 2 is "The round shield is polished remarkably well and is made completely out of bronze. You can see the reflection the things around you in the shield.". The description of the bronze shield 3 is "The round shield is polished remarkably well and is made completely out of bronze. You can see the reflection the things around you in the shield.".
The description of vial of cinnamon is "Upon closer inspection, you see the powered cinnamon is in a glass vial. The vial is round and bulbous at the bottom and has a long narrow neck leading up with a cork topping it off. This will make a great gift for Athena!". 
The description of the tiger lily is "You hold it in your hand and see that it's just a single tiger lily with a green stem and bright, soft orange petals. The petals had some beautiful polka dots and opened to reveal small stalks with brown seeds at the end. This will make a great gift for Athena!".
The description of the torch is "You take a closer look and see that it has a wooden handle that you can hold is always lit with flames that never seems to go out.".
The description of the vial of Dragon's Blood is "As you bring it closer to you, you can more clearly see the long slender vial that the blood is in. It's topped with a cork and seems to not leak. You also notice that the blood changes color every time you take a glance at it. It goes from a vibrant red to dark maroon, to pitch black. This will make a perfect gift for Athena!".
The description of onyx is "The more you look this gemstone the blacker it seems to get, like at any time you could be sucked into the void. The only thing keeping you from completely forgetting that this is merely a stone is the streaks of white that appear over it in the light. This will make a very good gift for Athena.".
The description of star sapphire is "You bring the gemstone up to your face and only then can you start to see the many different shades of blue. It's darker at the edges and gets lighter as you get to the center but there are different color flecks in spots that seem to make it more natural, more beautiful even though it would no longer be considered perfect. Cutting across the stone are white streaks in the shape of an x with a streak through the middle as well. It looks like a star. You love the stars and you are certain that Athena will appreciate this gemstone just as much as you do.".
The description of ivory is "This curved piece of ivory feels as though it's been excessively polished. You've never felt anything smoother. You can also see a scene carved into the ivory. It seems to look like Athena rushing into battle with woman's face on her shield. You can quite make out any other details, but this would be a great gift for Athena.".

Bronze Shield Count is a number which varies.

A woman called Antheia is in Vendor 2. "The woman introduces herself as Antheia and it doesn't surprise you that her name is as beautiful as she is. You feel like you can ask her about anything and she would know the answer."
Cinnamon Ask is a number which varies.
Tiger Lily Ask is a number which varies.
Olive Ask is a number which varies.
Dragon Blood Ask is a number which varies.
Onyx Ask is a number which varies.
Star Sapphire Ask is a number which varies.
Ivory Ask is a number which varies.
Bronze Shield ask is a number which varies.
before asking about "cinnamon":
	now the vial of cinnamon is in Vendor 2.
after asking about "cinnamon":
	now Cinnamon Ask is Cinnamon Ask + 1;	
	if Cinnamon Ask is 1:
		say "Antheia rummages through her stock and finds you a vial of cinnamon that you can [bold type]buy[roman type] from her for some lentils. She tells you, 'Are you looking to pray to Athena? If so, this is a very good, simple gift. Tiger Lillies are another good option! Don't be afraid to ask me any other questions. I feel drawn to you in a way that I don't with other people.'";
	else:
		say "'I've already shown you my whole stock of cinnamon,' Antheia says.".
before asking about "tiger lily":
	now the tiger lily is in Vendor 2.
after asking about "tiger lily":
	now Tiger Lily Ask is Tiger Lily Ask + 1;	
	if Tiger Lily Ask is 1:
		say "Antheia rummages through her stock and finds you a Tiger Lily that you can [bold type]buy[roman type] from her for a dozen eggs. She tells you, 'Are you looking to pray to Athena? If so, this is a very good, simple gift. Cinnamon is another good option! Don't be afraid to aske me any other questions. I'm certain now that the Goddesses want me to help you.'";
	else:
		say "'I've already shown you my whole stock of Tiger Lillies,' Antheia says.".
after asking about "river/boat":
	say "Antheia thinks to herself for a moment, and you take the time to thank the Goddesses for bringing you someone so lovely to help you figure out what's going on. 'There's a woman in another stall around here that has what you need. Find her and you should be able to find it. Don't be a stranger,' Antheia says slyly, and it makes your heart flutter.".
before asking about "documents / buldings / houses / document":
	now the deed is in Vendor 2.
after asking about "documents / buildings / houses / document":
	now the deed is in Vendor 3;
	say "Antheia makes a motion to get closer and so you lean in incredibly aware of how far away you are from her lips, but you restrain yourself because you would never force yourself on a person. She whispers, 'I would go back to the vendor with food and clothing, and I think you might find something else there that wasn't there before.'".
after asking about "olives":
	now Olive Ask is Olive Ask + 1;
	say "Antheia is slient for a moment and then puts her hand on your shoulder and points you to a vendor that is southeast from her. 'That vendor should have some olives for you. I know that Athena just loves olives, and I think she would love to talk to you if you had some. Sometimes the Gods speak through me,' she tells you with a smile. The touch from her hand sends shivers throughout your entire body. She senses that and starts to giggle.

'Surely touch cannot be that foreign to you that you shiver in fear at the response!' she tells you with a sly smile on her face. She must know what she's doing to you.

'No no no! I just. It's not that your touch is bad or anything of that sort! In fact, I like it a lot. Maybe too much! But not in a bad way! Askgldjsalfdj, I'm just going to quit now before I ramble you into an early grave,' you respond with the social grace of a dancer with no flexibility or rhythm.

'Oh? Well I implore you, please go on! It's not every day I see a beautiful girl at my store, and I want to know what you like, so that you'll come back and spend some more time with me!' she responds back. If only you could remember anything, because you can't even remember what flirting looked like or how to do it and so you don't even know how to handle yourself.

'I'm already planning on coming back! You're so sweet and you've been helping me out quite a lot!' you tell her with all the scincerity in the world.

'I'm looking forward to it gorgeous' she tells you as she went to go help another customer.".
after asking about "dragon's blood":
		now the torch is in Vendor 2;
		move the torch to the player;
		now Dragon Blood Ask is Dragon Blood Ask + 1;
		[move the dragon blood to the upper river only when they examine a part of it]
		say "'Hmmmm. Dragon's blood is awfully peculiar for just anybody to have. You must be really wanting to talk to Athena if you need to find something that can't be readily found in the Agora! She's so lucky to have such a devoted follower like you!' Antheia says admiringly.

'Oh honestly the pleasure is mine. I'm learning so much and she truly is devine. I'm just glad that she wants to communicate with me, and I would never have been able to without your help! You've truly been amazing! How do you know so much about giving gifts to Athena?' you respond, eager to have a conversation with the sales woman.

'Let's just say that I know our Goddess Athena quite well and that I owe her. Now, for your Dragon's blood, it will most likely be found somewhere underneath the city where liquid rushes through just like blood might. Take this torch so that you can find your way down there!' Antheia hands you a lit torch and mysteriously dips away to help someone else. Maybe one day you'll figure her out.".
after asking about "onyx":
	now Onyx Ask is Onyx Ask + 1;
	if player has the torch:
		say "'This must be a serious conversation you're having with the marvelous Athena if you're trying to find all these gifts in one day!' Antheia says lightheartedly. She sees the somber tone in your face and realizes that this indeed must be of the utmost importance.

She wraps an arm around you, 'The onyx will also be under our very feet. It is underneath the tallest point of our city. Go make haste. You shouldn't waste any time! Go talk to Athena'

Somehow Antheia knows exactly what you need and  you are extremely grateful to her.";
	else:
		now the torch is in Vendor 2;
		move the torch to the player;
		say "'This must be a serious conversation you're having with the marvelous Athena if you're trying to find all these gifts in one day!' Antheia says lightheartedly. She sees the somber tone in your face and realizes that this indeed must be of the utmost importance.

She wraps an arm around you, 'Here is a torch. The onyx will also be under our very feet. It is underneath the tallest point of our city. Go make haste. You shouldn't waste any time! Go talk to Athena'

Somehow Antheia knows exactly what you need and  you are extremely grateful to her.".
after asking about "star sapphire":
	now Star Sapphire Ask is Star Sapphire Ask + 1;
	if player has the torch:
		say "'You're back! How is it going? Is everything okay?? How can I best help you now?' Antheia drops everything she's doing to come see you.

'Athena is ditraught but she hasn't told me how to help her, so I need to talk to her again so I can help her!' you explain.

'Say no more my love, the brilliant gem you're looking for will again be hidden underground near the person you'd like to help the most,' Antheia has to leave you but you give her a hug before you go.";
	else:
		now the torch is in Vendor 2;
		move the torch to the player;
		say "'You're back! How is it going? Is everything okay?? I see that you need my wisdom on another potential gift again' Antheia drops everything she's doing to come see you.

'Athena is ditraught but she hasn't told me how to help her, so I need to talk to her again so I can help her!' you explain.

'Say no more my love, here's a torch. The brilliant gem you're looking for will again be hidden underground near the person you'd like to help the most,' Antheia has to leave you but you give her a hug before you go.";
after asking about "ivory":
	now Ivory Ask is Ivory Ask + 1;
	if player has the torch:
		say "'I sense that things are coming to a climax is there anything I can do besides give you information? I want to be of more use to you and Athena!' Antheia says as she wraps you up in a hug.

'You have already been one of the biggest helps Antheia! Without you, I would never have been able to learn all this information' you tell her.

'You are too kind and it has been my pleasure to help you. The ivory is closer to us than you think. You'll need to go underground, but you won't need to travel very far since it's under the hustle and bustle of our very own Agora,' Antheia squeezes your hand, kisses your cheek, and sends you off.";
	else:
		now the torch is in Vendor 2;
		move the torch to the player;
		say "'I sense that things are coming to a climax is there anything I can do besides give you information? I want to be of more use to you and Athena!' Antheia says as she wraps you up in a hug.

'You have already been one of the biggest helps Antheia! Without you, I would never have been able to learn all this information' you tell her.

'You are too kind and it has been my pleasure to help you. The ivory is closer to us than you think. Here's a torch. You'll need to go underground, but you won't need to travel very far since it's under the hustle and bustle of our very own Agora,' Antheia squeezes your hand, kisses your cheek, and sends you off.";

[Contingency incase person doesn't write bronze shields-------------]
after asking about "shields / shield / bronze":
	now Bronze Shield Ask is Bronze Shield Ask + 1;
	say "'I'm glad you're back because I just had a vision. I saw shields, I saw bronze shields being dropped from the sky. It was so quick, but I know what I saw! I think Athena wants you to get to those shields.' Antheia explains to you in a hurried frenzy.

'That's great! Perfect even! Athena does want me to get those shields! Did you see where they landed?' you ask her.

'Yes I think at least vaguely! I saw one near the top of a river, another one landed in a cluster of buildings, and the last one shot into a cave and seemed to be surrounded by other gold items,' she informs you, 'Go quickly my brave love. My vision should some man coming for the shields!'

You pull her close and kiss her. She's helped you so much and deserves all the gratitude you can muster, and she's fiercely kissing you back so you can guess that the attraction is two sided. It makes it harder for you to leave, but you both know that you have to.";
after asking about "bronze shield":
	now Bronze Shield Ask is Bronze Shield Ask + 1;
	say "'I'm glad you're back because I just had a vision. I saw shields, I saw bronze shields being dropped from the sky. It was so quick, but I know what I saw! I think Athena wants you to get to those shields.' Antheia explains to you in a hurried frenzy.

'That's great! Perfect even! Athena does want me to get those shields! Did you see where they landed?' you ask her.

'Yes I think at least vaguely! I saw one near the top of a river, another one landed in a cluster of buildings, and the last one shot into a cave and seemed to be surrounded by other gold items,' she informs you, 'Go quickly my brave love. My vision should some man coming for the shields!'

You pull her close and kiss her. She's helped you so much and deserves all the gratitude you can muster, and she's fiercely kissing you back so you can guess that the attraction is two sided. It makes it harder for you to leave, but you both know that you have to.";
after asking about "bronze shields":
	now Bronze Shield Ask is Bronze Shield Ask + 1;
	say "'I'm glad you're back because I just had a vision. I saw shields, I saw bronze shields being dropped from the sky. It was so quick, but I know what I saw! I think Athena wants you to get to those shields.' Antheia explains to you in a hurried frenzy.

'That's great! Perfect even! Athena does want me to get those shields! Did you see where they landed?' you ask her.

'Yes I think at least vaguely! I saw one near the top of a river, another one landed in a cluster of buildings, and the last one shot into a cave and seemed to be surrounded by other gold items,' she informs you, 'Go quickly my brave love. My vision should some man coming for the shields!'

You pull her close and kiss her. She's helped you so much and deserves all the gratitude you can muster, and she's fiercely kissing you back so you can guess that the attraction is two sided. It makes it harder for you to leave, but you both know that you have to.";
[--------------------------------------------------------------------------]

after asking about "knife":
	say "'You've actually already seen this item before coming to me! It's not very far either. Maybe you should go back to other vendors and [bold type]examine[roman type] their wares more closely,' says Antheia with that cute smirk that makes you melt.".
after asking about "ceremonial knife":
	say "'You've actually already seen this item before coming to me! It's not very far either. Maybe you should go back to other vendors and [bold type]examine[roman type] their wares more closely,' says Antheia with that cute smirk that makes you melt.".
	
after asking about "medusa":
	say "'All that I know about Medusa is that she is a priestess for Athena and lives in home somewhere in the mountains!' Antheia replies.".
	
after asking about "medusa's home":
	say "'All that I know about Medusa is that she is a priestess for Athena and lives in home somewhere in the mountains!' Antheia replies.".
	
after asking about "medusa's house":
	say "'All that I know about Medusa is that she is a priestess for Athena and lives in home somewhere in the mountains!' Antheia replies.".
[---------------------------------------------------------------------------]

instead of taking oregano:
	say "You don't have the trade item needed to get oregano, but you probably won't need it.".
	
instead of taking marjoram:
	say "You don't have the trade item needed to get marjoram, but you probably won't need it.".
	
instead of taking fennel:
	say "You don't have the trade item needed to get fennel, but you probably won't need it.".
	
instead of taking mint:
	say "You don't have the trade item needed to get mint, but you probably won't need it.".
	
instead of taking sideritis:
	say "You don't have the trade item needed to get sideritis, but you probably won't need it.".

[Code to buy cinnamon or tiger lillies ------------------------------------]
instead of taking cinnamon:
	if Bought Lentils is 0, say "You need to get some lentils first to pay for that!";
	else:
		Continue the action.
after taking cinnamon:
	now the lentils is nowhere;
	say "You now hava vial of cinnamon!".
	
instead of taking tiger lily:
	if Bought Eggs is 0, say "You need to get some eggs first to pay for that!";
	else:
		Continue the action.
after taking tiger lily:
	now a dozen eggs is nowhere;
	say "You now have a Tiger Lily!".
[---------------------------------------------------------------------------]

Vendor 3 is a room. "You really want to avoid this cart because the man running it seems to really hate you, and for what!? You just got here! You can also hear him spouting some vile insults about a priestess in the Temple of Athena. You don't think he'll be a friend to you, but he has a bunch of food and clothing though and that could be really useful.".

The deed is nowhere. "You now notice a piece of paper slightly stuck under a rock and it seems to be a deed for a house."

Visited Vendor 3 is a number that varies.
Enter Vendor 3 is a number that varies.
after going to Vendor 3:
	Continue the action;
	now Enter Vendor 3 is 1.
before going to Agora:
	if player has bundles of wheat:
		if player has eggs:
			if player has lentils:
				now Visited Vendor 3 is Visited Vendor 3 + 1;
				now the sack of coins is nowhere.

In Vendor 3 are olives, bundles of wheat, a dozen eggs, figs, vases of milk, grapes, and lentils.

The description of olives is "You see a bunch of olives in a basket. There are olives all around this area though, so you're not sure they'll be worth much in a trade.". The description of bundles of wheat is "There's a small pyramid of bundles of wheat on the counter top, and there's only one wheat farm on this island. Wheat would probably be very valuable as a trading item to buy.". The description of a dozen eggs is "Rarely are there good eggs on this island, and that basket of 12 eggs looks really great. This would probably be a good trading item to buy.". The description of figs is "You don't remember if you like figs but you've seen them on the trees walking around this town, so they may not be a very good trading item to buy.". The description of vases of milk is "There are three vary large vases of milk and you're not sure you could actually carry those vases.". The description of grapes is "There is an abundance of grapes in baskets at this stand and  because of their abundace in the region, they might not be a good trade item to buy.". The description of lentils is "This legume can be used for both food and fodder. Because of this duality, it would be a good trade item to buy.".

instead of taking vases of milk:
	say "You really can't lift these vases so you'll have to buy something else.".
	
instead of taking figs:
	say "You only have a limited amount of money so you decide to leave the figs and buy something you think would be useful to trade with.".
	
instead of taking grapes:
	say "You only have a limited amount of money so you decide to leave the grapes and buy something you think would be useful to trade with.".

[Code for buying things from vendor 1---------------------------------------------]
Bought Wheat is a number which varies.
Bought Eggs is a number which varies.
Bought Lentils is a number which varies.
instead of taking bundles of wheat:
	if player does not have sack of coins:
		say "You can't buy these items without money.";
	else:
		if Bought Wheat is 0:
			say "You've purchased some bundles of wheat, and left some coins on the counter.";
		else:
			say "You now have the bundles of wheat!";
		now Bought Wheat is Bought Wheat + 1;
		say "You've purchased some bundles of wheat, and left some coins on the counter.";
		Continue the action;
		
instead of taking a dozen eggs:
	if player does not have sack of coins:
		say "You can't buy these items without money.";
	else:
		if Bought Eggs is 0:
			say "You've purchased a dozen eggs, and left some coins on the counter.";
		else:
			say "You now have the eggs!";
		now Bought Eggs is Bought Eggs + 1;
		Continue the action.
		
instead of taking lentils:
	if player does not have sack of coins:
		say "You can't buy these items without money.";
	else:
		if Bought Lentils is 0:
			say "You've purchases some lentils, and left some coins on the counter.";
		else:
			say "You now have the lentils!";
		now Bought Lentils is Bought Lentils + 1;
		Continue the action.
		
Bought Olives is a number which varies.	
instead of taking olives:
	if Bought Olives is 0:
		say "[if Olive Ask is greater than 0] This man has been very disgusted with you for no reason. He sees you touching an olive and hears you ask how much it is and declares that the whole batch must be thrown out because it's been contaminated! He throws the basket of olives on the floor and spits in your direction. You don't remember if you've done anything to this man, but you take the olives on the floor any way.[line break][line break][italic type]Check your inventory![roman type][otherwise]You only have a limited amount of money so you decide to leave the olives and buy something you think would be useful to trade with.[end if]";
	if Olive Ask is greater than 0:
		move olives to the player;
		now Bought Olives is Bought Olives + 1;
		say "You have the olives now!".
[-------------------------------------------------------------------------------------]

The Upper River is a room. "[if Bronze Shield Ask is greater than 0 and the player does not have bronze shield 1] Ah the river, granter of life! So serene and peacefull. You don't see many other people around and you feel a lot safer for some reason. You look around and take stock of what you can see. You notice a slight glimmer near the bushes. [otherwise] Ah the river, granter of life! So serene and peacefull. You don't see many other people around and you feel a lot safer for some reason. You look around and take stock of what you can see. [end if]"

[write what things are in the upper river so you can examine one and find the bronze shield]
Bushes are in the Upper River. The bushes are fixed in place. Boulders are in the Upper River.  The Boulders are fixed in place. Trees are in the Upper River. The Trees are fixed in place.
The description of the bushes is "[if Bronze Shield Ask is greater than 0 and the player does not have bronze shield 1]As you get closer to the clump of bushes near the river, you see the source of the slight glimmer! It is in fact a bronze shield lodged into the branches of these bushes.You would be able to [bold type]take[roman type] it from the bushes if you tried, since it doesn't seem to be stuck.[otherwise]Look at them bushy boys[end if]". The description of the boulders is "Look at them sturdy boys.". The description of the trees is "Look at them tall boys".
[Code to make shield appear after examining the bushes -----------------]
after examining bushes:
	now bronze shield 1 is in the Upper River.
[----------------------------------------------------------------------------]
after taking bronze shield 1:
	now Bronze Shield Count is Bronze Shield Count + 1.
[Code to handle keeping the player out of the River-----------------------]
instead of going north to the Upper River:
	if the player does not have the boat:
		say "As you get closer you notice that the river is flowing a lot harsher than you thought. It's quite a ways wide and you never now how deep a river could be! You decide to hang back until you can find something to help you navigate it.[line break][line break][italic type]Maybe you could [bold type]examine[roman type] something at one of the vendors to find something that will help you cross.[roman type]";
	Otherwise:
		Continue the action.
[------------------------------------------------------------------------------]

Temple Visited is a number which varies.
The Temple of Athena is a room. "[if Temple Visited is 1]As soon as you step foot within the temple you hear dramatic whisperings.

'I can't believe she would do that', a priestess said.

'What did she do?', another priestess asked.

'Oh you didn't hear? Our fellow priestess Medusa broke her vow and had sex with a man in this very temple!', exclaimed the first priestess.

The second priestess gasps loudly and says,'I can't believe she would disgrace Athena like that! How vile! How disgusting!'

They never look in your direction and walk into a different room. You then take the time to look around.

Athena deserves only the best and that's exactly what this temple is. It's pristine and made with the finest marble possible. Bits of gold and other gems make the temple sparkle with magical radiance as the sun hits it just right. You can see the magnificent statue of Athena and what looks like an altar to the [bold type]south[roman type].[otherwise]They be gossiping about Medusa banging a guy still in another room. But you ignore that.

This temple is still stunning! It's pristine and made with the finest marble possible. Bits of gold and other gems make the temple sparkle with magical radiance as the sun hits it just right. You can see the magnificent statue of Athena and what looks like an altar to the [bold type]south[roman type].[end if]".  

The book stand is in the Temple of Athena. The book stand is a supporter. The book stand is fixed in place.
The prayer book is on the book stand. "You see a prayer book, and It's a very elegant and ornate book and maybe you can find the answers you've been searching for if you [bold type]read[roman type] the prayer book.".
The description of the book stand is "It is just a plain wooden stand with a tilted top for better reading.".
instead of taking the prayer book:
	say "You really shouldn't take this book from the temple. It seems really important to the priestesses.".

after going to Temple of Athena:
	now Temple Visited is Temple Visited + 1;
	Continue the action.

[Code for Reading the book to get info--------------------------------------------------]
Understand the command "read" as something new.
Understand "read [something]"  or "consult [something]" or "read in/from [something]" as reading.
Reading is an action applying to one thing.
The block consulting rule is not listed in the check reading rules.
Carry out reading:
	say "Our Goddess Athena:

Our Goddess requires gifts to give us her devine thoughts. For us to get our gifts to Athena, we've built a special altar underneath her magnificent statue in the room [bold type]south[roman type] of here. 

At the altar, we can place our gift first and it will be burnt after you start to [bold type]pray[roman type] so that the smoke will rise up to our Goddess. After she is done communicating with us, she returns our gift to us in gratitude, and it won't be a pile of ashes anymore! Your gift will not disappear so remember to [bold type]take[roman type] it after you have finished praying. Also, only put one item on the altar, so that Athena knows what advice to give you!

Athena has some favorite types of gifts. Each gift tends to garner a different response from our Goddess so if you'd like the full story from her, you should bring many gifts. Here's a list of gifts that we've found to favorable so far (the list may change): [if Pray Star Sapphire is greater than 0]Olives, a Tiger Lily, Cinnamon, Dragon's Blood, Onyx, Star Sapphire, and Ivory[else if Pray Onyx is greater than 0]Olives, a Tiger Lily, Cinnamon, Dragon's Blood, Onyx, Star Sapphire[else if Pray Dragon Blood is greater than 0]Olives, a Tiger Lily, Cinnamon, Dragon's Blood, Onyx  [else if Pray Cinnamon is greater than 0]Olives, a Tiger Lily, Cinnamon, Dragon's Blood [else if Pray Tiger Lily is greater than 0]Olives, a Tiger Lily, Cinnamon [else if Pray Olives is greater than 0]Olives, a Tiger Lily [otherwise]Olives[end if]";
Report reading:
	say "[line break]You're not really sure where to find those gifts mentioned yet so maybe you can [bold type]ask[roman type] somebody in the Agora [bold type]about[roman type] these gifts for help.".
[-----------------------------------------------------------------------------------------]

The Statue of Athena is a room.  "A very simplistic room. There's not much in it, but there doesn't need to be. The building material is beautiful in and of its self, and this accentuates the other things in the room. You also notice a staircase that leads [bold type]down[roman type] near the back of this room.".
Athena's Statue is in the Statue of Athena. "A towering marble statue of Athena looms above you and you wonder how something so rigid like marble can look so fluid like cloth.". Athena's Statue is fixed in place.
The altar is in the Statue of Athena. "There's a wide block with a dip in the center that looks slightly singed in front of the statue. This must be the altar.". 

The description of the Athena's Statue is "The Goddess looks radiant. On top of her head she wears a helmet with a Sphinx like figure sitting in the middle and griffins on either side. On top of her floor length tunic she wears a breast plate and holds the statue of the Goddess Nike in her outstreched right hand. Firmly in her right is a large circular shield.".
The description of the altar is "It seems to be made of a dark kind of stone. You could definitely [bold type]put[roman type] things [bold type]on[roman type] the altar to get wisdom from Athena.".

The altar is a supporter. The altar is fixed in place.

instead of putting something on the altar:
	if altar is supporting something, say "You already have an item on the altar. Make sure you take it off first by using the command [bold type]take[roman type].";
	else:
		Continue the action.

[Code to handle giving gifts to Athena and receiving advice---------------------------]
A woman called Athena is in the Statue of Athena. "It feels like the Goddess Athena herself is present".
Pray Olives is a number which varies. Pray Tiger Lily is a number which varies. Pray Cinnamon is a number which varies. Pray Dragon Blood is a number which varies. Pray Onyx is a number which varies. Pray Star Sapphire is a number which varies. Pray Ivory is a number which varies.
Understand "pray to [someone]" as praying.
Praying is an action applying to one thing.
Check praying:
	if altar is not supporting anything, say "You have not brought a gift for Athena, and therefore she will not answer you. Check the Prayer Book or the help list if you're unsure of how to pray.";
	if the location is not the Statue of Athena, say "You must pray at the altar in the Temple of Athena. Check the Prayer Book or the help list if you're unsure of how to pray.".
Carry out praying:
	if olives is on altar: 
		say " The olives start to burn as soon as you started to pray and the fire doesn't feel from this world because the fire is green. You can hear Athena's voice inside your head.

'You've heard about the priestess that defiled this temple. Well my child, Medusa was not at fault. The circumstances are not what you've heard....'

You feel the presence of Athena leave your head. You should probably go [bold type]read[roman type] the prayer book again to see if anything has changed.";
		now Pray Olives is Pray Olives + 1;
	if Tiger Lily is on altar:
		say " The Tiger Lily shrinks into the lime green fire. The sweet scent still hits your nose, and Athena's voice is back inside your head.

'Ah my child, thank you for such a beautiful gift. Those circumstances with Medusa, they were terrible and vile and it fills me up with rage! My daughter, my fellow [italic type]God[roman type],' she told you with disgust,' Posiedon forced himself on my priestess Medusa. She fought the whole way but she of course was no match for him. He and Zeus had the nerve to force me to discipline her for being an unwilling part of this defiling this temple....'

In anger, Athena's presence left your head. You should probably go [bold type]read[roman type] the prayer book again to see if anything has changed.";
		now Pray Tiger Lily is Pray Tiger Lily + 1;
	if cinnamon is on the altar:
		say "The sweet scent of cinnamon wafts up as the ethereal fire dances on top of it. Athena's voice in your head doesn't even feel out of place anymore as if your head was where she belongs.

'I can feel your curiosity about my punishment for Medusa. She was the daughter of the sea Gods Phoroys and Ceto. Her sisters are Gorgons but she mysteriously was born a human. As a 'punishment' I turned her into what her sisters are and added snakes for hair and a gaze that turns men to stone. I wanted her to never again be helpless like that.....'

Your emotions are starting to mirror Athena's and as she slips away again you can't help but feel contempt for the Gods and a sense of sorrow for Medusa. You should probably go [bold type]read[roman type] the prayer book again to see if anything has changed.";
		now Pray Cinnamon is Pray Cinnamon + 1;
	if Dragon's Blood is on the altar:
		say "Seeing the blood start to boil as the flames dance around it is a bit of an unnerving site, and unlike the other gifts, your nose is not thrilled with the scents that it's getting. As Athena starts to settle in your mind, the unpleasantness melts away, and you hope the Goddess never leaves your head.

'Other women might think me to be a bit harsh with the 'punishment' that I gave to Medusa, but think about why that is. I hate that men are allowed to govern us and what we think, but I can't do anything about it so I have to sit and watch the other Gods treat women like dust and watch as men right down my stories, and those of my fellow Goddesses' incorrectly! Seeing as how the Goddesses and I aren't in a position to take control from the others, I played on men's disgust for 'ugly-ness' to make it look like this was the ultimate punishment, because clearly a woman is only useful if she's silent and pretty,' she scoughed, 'I tried to give her power while disguising it as a punishment, because I would not be able to handle to the wrath of the other male Gods by myself. I want to still be there for her instead of cast into the depths of Tartarus.....'

Never have you thought about the ways that men treat you before. That's in part because you can't remember anything period, but you still feel as though Athena just gave you the key to unlocking the universe as she once again disappears from your mind. You should probably go [bold type]read[roman type] the prayer book again to see if anything has changed.";
		now Pray Dragon Blood is Pray Dragon Blood + 1;
	if onyx is on the altar:
		say "The flames dance around the stone, never seeming to consume it. The flickering green flames did little to bring light to what looked like a portable patch of darkness. It was quite a marvel, or maybe that was just your feelings toward Athena being with you.

'Darling, thank you for giving me all of these gifts! They are all my favorite things and I honestly need some company right now. They sent a 'hero' after my Medusa. The Gods, against my will, are going to kill my priestess, Medusa. As a Goddess, I don't get attached to many himans, but she has a special place in my heart and I can't help her. Powerless isn't a word you'd use to describe a Goddess, but that is how I feel right now! Oh won't you help me? Won't you help me stop the man named Perseus from killing my Medusa?....'

Your heart pangs in your chest. It's as if you can feel Athena's love for Medusa, as if you can feel the hole that will be left if Medusa was killed. Athena leaves you but her sorrow doesn't and won't for a while. You should probably go [bold type]read[roman type] the prayer book again to see if anything has changed.";
		now Pray Onyx is Pray Onyx + 1;
	if star sapphire is on the altar:
		say "The brilliant blue from the sapphire is enhanced from the light of the engulfing flames. Maybe the bright, white star will lighten up Athena's day. She slips into your mind a lot quicker than usual.

'My darling you're back! Perfect timing! Please help me, your Goddess, in an effort to stop Perseus. I promise that no harm will come to you from the other Gods if you do! With your help, we can kill Perseus and keep him from ever finding Medusa in her home in the mountians. You just need to find the ceremonial knife!'

Hope seeps back in and it seems that both you and Athena are feeling a bit better as she leaves you head. You should probably go [bold type]read[roman type] the prayer book again to see if anything has changed.";
		now Pray Star Sapphire is Pray Star Sapphire + 1;
	if ivory is on the altar:
		say "The flames spread through the carved image as fast as a real painting would have, but yet somehow it enhances the carving, and Athena swoops into your mind even faster this time.

'Lovely daughter of mine, listen quick! I don't have much time, the Gods suspect me of mischeif and have tried to help Perseus even further by giving him a bronze shield so that he can look at Medusa's reflection and not get turned to stone! I've silently screwed over their 3 attempts at sending the shield directly to Perseus. That means they're on this island somewhere and you need to make sure you get all the of the shields before he does and find her in her home in the mountains...'

She leaves in a rush as you just being to process that information. At least she thinks you're lovely! You should probably go [bold type]read[roman type] the prayer book again to see if anything has changed.";
		now Pray Ivory is Pray Ivory + 1;
[-----------------------------------------------------------------------------------------]

The Houses is a room. "[if Bronze Shield Ask is greater than 0 and the player does not have bronze shield 2]It's seems like this is where everybody is living in this town.  It's just a cluster of the buildings in a very unclear pattern, but some rose higher than others. You see a glimmer of bronze near the cluster of poor houses.[otherwise]It's seems like this is where everybody is living in this town.  It's just a cluster of the buildings in a very unclear pattern, but some rose higher than others.[end if]"

The cluster of poor homes is in the Houses.  The cluster of poor homes is fixed in place.The cluster of rich homes are in the Houses.  The cluster of rich homes is fixed in place. The stone walkway is in the houses. The stone walkway is fixed in place.
 The description of a cluster of poor homes is "[if Bronze Shield Ask is greater than 0 and the player does not have bronze shield 2]There's a group of small one story houses made of mud bricks covered in plaster. The roofs look like potter tiles and there are few holes in the wall to see out of. It doesn't seem like there are many rooms inside either. Behind one of the houses you can see part of what is a bronze shield.[otherwise]There's a group of small one story houses made of mud bricks covered in plaster. The roofs look like potter tiles and there are few holes in the wall to see out of. It doesn't seem like there are many rooms inside either.[end if] ".
after examining a cluster of poor homes:
	now bronze shield 2 is in the Houses.
	
after taking bronze shield 2:
	now Bronze Shield Count is Bronze Shield Count + 1.
	
The description of a cluster of rich homes is "Each house is a collection of several rooms arranged around a courtyard. Some houses even have an upper story as well. These houses seem in much better up keep and a lost nicer than the poor homes even though they seem to be the same things at their core".

[Code to handle keeping the player out of the houses-----------------------]
instead of going east from the Town Center:
	if the player does not have the deed:
		say "This appears to be a gated community of sorts and the guard won't let you through with out the proper documents.[line break][line break][italic type]Maybe you could [bold type]ask[roman type] someone in the Agora to help you find something that will help you get in.[roman type]";
	Otherwise:
		Continue the action.
[------------------------------------------------------------------------------]

The Lower River is a room. "Being at the river that's at the base of the mountain makes things seem more peaceful. You feel like you're at the perfect crossroads for Gods and humans. It's like the mountains and the river are the perfect connectors."

The Mountains is a room. "Giant mound of earth that radiate powerful energy but also house many dangerous creatures."
[Code to keep player within the house---------------------------------------]
Entrance Visited is a number which varies.
First Avalanche is a number which varies.
after going to the Atrium:
	now Entrance Visited is Entrance Visited + 1;
	Continue the action.

after going to the Treasure Room:
	now Entrance Visited is Entrance Visited + 1;
	Continue the action.
	
after going to the Worship Room:
	now Entrance Visited is Entrance Visited + 1;
	Continue the action.
	
instead of going west from the Atrium:
	if Entrance Visited is greater than 0 and First Avalanche is 0:
		say "You hear another loud rumbling from deep within the mountain and you see the entrance fill up with rocks. Within seconds the rocks have already reached the top. You quickly try to see if you can push or pull some rocks out and create a hole, but alas not a single rock budges. It seems to be that you're stuck in Medusa's home."; 
		now First Avalanche is First Avalanche + 1;
	else:
		if First Avalanche is greater than 0:
			say "An avalanche of rocks is blocking that path.";
		else:
			Continue the action.
			
instead of going west from the Treasure Room:
	if Entrance Visited is greater than 0 and First Avalanche is 0:
		say "You hear another loud rumbling from deep within the mountain and you see the entrance fill up with rocks. Within seconds the rocks have already reached the top. You quickly try to see if you can push or pull some rocks out and create a hole, but alas not a single rock budges. It seems to be that you're stuck in Medusa's home.";
		now First Avalanche is First Avalanche + 1;
	else:
		if First Avalanche is greater than 0:
			say "An avalanche of rocks is blocking that path.";
		else:
			Continue the action.
		
instead of going west from the Worship Room:
	if Entrance Visited is greater than 0 and First Avalanche is 0:
		say "You hear another loud rumbling from deep within the mountain and you see the entrance fill up with rocks. Within seconds the rocks have already reached the top. You quickly try to see if you can push or pull some rocks out and create a hole, but alas not a single rock budges. It seems to be that you're stuck in Medusa's home.";
		now First Avalanche is First Avalanche + 1;
	else:
		if First Avalanche is greater than 0:
			say "An avalanche of rocks is blocking that path.";
		else:
			Continue the action.

[------------------------------------------------------------------------------]
[Code to simulate Persus tracking the player down--------------------------]
Turns Trapped In House is a number which varies.
Every turn when Entrance Visited is greater than 0:
	now Turns Trapped In House is Turns Trapped In House + 1;
	if Turns Trapped In House is 1:
		say "[Turns Trapped in House] 'Shit!' you just heard someone scream and the sound of something clattering. The voice definitely did not sound like a woman's. That man must be here! You have to get to Medusa first and stop Perseus!!";
	if Turns Trapped In House is less than 5 and Turns Trapped In House is greater than 1:
		say "[Turns Trapped in House] You can still hear him clattering into everything and not caring about the state of this home. You still haven't seen him yet or Medusa. He seems to be getting closer to where you are.";
	if Turns Trapped In House is less than 10 and Turns Trapped In House is greater than 4:
		say "[Turns Trapped in House] You hear Perseus footsteps quickening. Has he heard you?? Has he found Medusa?? He seems to be getting ever so closer to where you are and you still haven't found Medusa!";
	if Turns Trapped In House is 11:
		say "'You can't escape from me Medusa!! Your reign of terror is over!!!' you here Perseus shout! It feels like he's two rooms away. You have to pick of the pace if you want to find Medusa first!!";
	if Turns Trapped In House is 12:
		say "You can hear him scrapping his sword against the wall and say with the utmost confidence, 'You can run but you can't hide Medusa! I will find you!!' You hope he hasn't heard you and you still have the element of surprise, but he sounds slightly closer. You need to pick up the pace!! ";
	if Turns Trapped In House is 13:
		say "'I can hear you! I've got you now Medusa! Prepare to meet your fate you disgraceful monster!' you hear Perseus cry, but the most distressing part is that he sounds like he's just in the next room. You need to hurry!!";
	if Turns Trapped In House is 14:
		say "'Your ass is mine now you fucking shameful slut!' Perseus screams. You see him in one the doorways, but you can't see Medusa anywhere?? Maybe she's in the very next room! You're not sure if Perseus saw you or cares that you're there but you still have to try to help Medusa!";
	if Turns Trapped In House is 15:
		[ending if you got all three shields and the kinfe]
		if Bronze Shield Count is 3 and the player has the ceremonial knife:
			say "Perseus steps harshly into the [location].  You start to notice that he doesn't quite seem to look at you in your eyes but elsewhere in the room. Are you going crazy and you just can't see Medusa in this room?

You start to slowly step away but he yells, 'Not so fast Medusa! You won't be able escape me or my blade!' You start to feel like you're losing your mind because you can't seem to find Medusa anywhere! He suddenly lounges at you and as you try to dodge the swing you trip over something and land sprawled against the floor.

The scarf you had been wearing to protect you from the sun has fallen away and you look at what you tripped on. It seems to be a potion bottle. With that realization, the mountain shakes and a gusts of wind hits you straight in the face! And suddenly you remember everything....

You remember your family! You may not have had the most contact with them since you were born a human and they were all immortal, but you can finally remember and at this time you're happy to know them! You remember when you first became a priestess for Athena, and you felt like you had a purpose. You felt like you were helping your fellow people live a safe and moral lifestyle. Your favorite part is that you really felt Athena was also protecting you and guiding you and you miss her so much. And then you remember him. You remember feeling dirty and unpure. You remember try to fight back. You remember losing... ";
			say "You feel yourself changing and you can see Perseus stepping back in fear. You don't want this. You don't want to be like this. You like talking to people. You like being with people. You want to see the island. You want to see the sky again. If you keep changing you'll never be able to be free again.

'Please Athena! You can't take it back! Don't change me forever! Please...' you shout to the ceiling hoping that she'll hear you. 'I'm so sorry my child...' Athena whispers in your head, 'I wish I were stronger to right the wrong done to you. I want to take it back, but I can't my daughter. But I can try to keep you safe. There are no mirrors in here. You have all the shields. He can't defeat you. Use the ceremonial knife so that you can stay alive.' You do as she says because you would still rather live then be cut down because men are ignorant and believe that this horrible act was my fault.

You get up and corner him in the [location]. You start to hear constant hissing sound. Your hair feels heavier. You feel stronger. 'Fuck you, you foul disgusting bitch!' Perseus spits on you while trying very hard not to look you in the eyes. That is the final straw for you. You grip his shoulder and stick that knife right in his head and force him to look at you. As you see him slowly turn to stone, you say 'The only thing disgusting here is your mind and how you treat women.' Then you let him drop to the floor and shatter.

After you look up from the shattered stone, you see a line of women coming to you. They get closer like they're coming to hug you and you realize you know them! The Goddesses are absolutely stunning and you've never felt so blessed since you're seeing them all at once. You sense they're here to comfort you and you start to relax. Suddenly you see a familiar face, 'Antheia? Is that you?' 'You can call me Venus my darling. We've always been here for you and we always will be....'";
			end the story saying "You successfully lived, but at what cost? The ignorance of man is damning. There are multiple endings if you'd like to try again.";	
		[ending if you got all three shields but not the knife]
		if Bronze Shield Count is 3 and the player does not have the ceremonial knife:
			say "Perseus steps harshly into the [location].  You start to notice that he doesn't quite seem to look at you in your eyes but elsewhere in the room. Are you going crazy and you just can't see Medusa in this room?

You start to slowly step away but he yells, 'Not so fast Medusa! You won't be able escape me or my blade!' You start to feel like you're losing your mind because you can't seem to find Medusa anywhere! He suddenly lounges at you and as you try to dodge the swing you trip over something and land sprawled against the floor.

The scarf you had been wearing to protect you from the sun has fallen away and you look at what you tripped on. It seems to be a potion bottle. With that realization, the mountain shakes and a gusts of wind hits you straight in the face! And suddenly you remember everything....

You remember your family! You may not have had the most contact with them since you were born a human and they were all immortal, but you can finally remember and at this time you're happy to know them! You remember when you first became a priestess for Athena, and you felt like you had a purpose. You felt like you were helping your fellow people live a safe and moral lifestyle. Your favorite part is that you really felt Athena was also protecting you and guiding you and you miss her so much. And then you remember him. You remember feeling dirty and unpure. You remember try to fight back. You remember losing... ";
			say "You feel yourself changing and you can see Perseus stepping back in fear. You don't want this. You don't want to be like this. You like talking to people. You like being with people. You want to see the island. You want to see the sky again. If you keep changing you'll never be able to be free again.

'Please Athena! You can't take it back! Don't change me forever! Please...' you shout to the ceiling hoping that she'll hear you. 'I'm so sorry my child...' Athena whispers in your head, 'I wish I were stronger to right the wrong done to you. I want to take it back, but I can't my daughter. But I can try to keep you safe. There are no mirrors in here. You have all the shields, but where is the ceremonial life darling? Why didn't grab the knife? I cannot interfere with the killing of Perseus! The male Gods will have my head! You have to try and defeat him on your own, but I believe in you my child...' 

Perseus feels courageous and comes at you swinging. The blade catches your left arm and you scream in pain. You reach and grab one of the bronze shield to protect yourself. You start to hear constant hissing sound. Your hair feels heavier. You feel stronger. Perseus seeing his opportunity finally turns to look in your direction since the shield is in front of your face. 'You're as good as dead you fucking monster!' his words stinging you like acid and you can't handle it anymore. You're one step ahead of him though and as soon as he starts his up swing to cut you down you move the shield and turn him to stone. The momemtum that he was carrying tips his solid stone body backwards and shatters.

After you look up from the shattered stone, you see a line of women coming to you. They get closer like they're coming to hug you and you realize you know them! The Goddesses are absolutely stunning and you've never felt so blessed since you're seeing them all at once. You sense they're here to comfort you and you start to relax. Suddenly you see a familiar face, 'Antheia? Is that you?' 'You can call me Venus my darling. We've always been here for you and we always will be....'";
			end the story saying "You successfully lived, but very narrowly. The ignorance of man is damning. There are multiple endings if you'd like to try again.";
		[ending if you didn't get all three shields but you have the knife]
		if Bronze Shield Count is less than 3 and the player has the ceremonial knife:
			say "Perseus steps harshly into the [location].  You start to notice that he doesn't quite seem to look at you in your eyes but elsewhere in the room. Are you going crazy and you just can't see Medusa in this room?

You start to slowly step away but he yells, 'Not so fast Medusa! You won't be able escape me or my blade!' You start to feel like you're losing your mind because you can't seem to find Medusa anywhere! He suddenly lounges at you and as you try to dodge the swing you trip over something and land sprawled against the floor.

The scarf you had been wearing to protect you from the sun has fallen away and you look at what you tripped on. It seems to be a potion bottle. With that realization, the mountain shakes and a gusts of wind hits you straight in the face! And suddenly you remember everything....

You remember your family! You may not have had the most contact with them since you were born a human and they were all immortal, but you can finally remember and at this time you're happy to know them! You remember when you first became a priestess for Athena, and you felt like you had a purpose. You felt like you were helping your fellow people live a safe and moral lifestyle. Your favorite part is that you really felt Athena was also protecting you and guiding you and you miss her so much. And then you remember him. You remember feeling dirty and unpure. You remember try to fight back. You remember losing... ";
			say "You feel yourself changing and you can see Perseus stepping back only slightly in fear. You don't want this. You don't want to be like this. You like talking to people. You like being with people. You want to see the island. You want to see the sky again. If you keep changing you'll never be able to be free again.

'Please Athena! You can't take it back! Don't change me forever! Please...' you shout to the ceiling hoping that she'll hear you. 'I'm so sorry my child...' Athena whispers in your head, 'I wish I were stronger to right the wrong done to you. I want to take it back, but I can't my daughter. But I can try to keep you safe. There are no mirrors in here. Wait you don't have all three shields! You do have the ceremonial knife but you are not as skilled in combat as he is! I cannot interfere with the killing of Perseus! The male Gods will have my head! You have to try and defeat him on your own, but I believe in you my child...please live....' 

Perseus feels courageous and comes at you swinging. The blade catches your left arm and you scream in pain.  You start to hear constant hissing sound. Your hair feels heavier. You feel stronger, but you still try to flee. You take a stab at him catch his shoulder, but it does nothing to stop him, so you turn to run. Perseus seeing his opportunity comes after you as your back is turned. 'You're as good as dead you fucking monster!' his words stinging you like acid and you can't handle it anymore. You try to turn and use your powers against him, but with his bronze shield he doesn't even look at you as he beheads you.

With your finally moments of conciousness in pure agony, you see a line of women coming to you. They're all weeping for you. You realize they are the Goddess, and they must be keeping you in this world because you don't know how you're still alive. The Goddesses are absolutely stunning and you've never felt so blessed since you're seeing them all at once. You sense they're here to comfort you and you start to relax into the slow release of blackness. Suddenly you see a familiar face, 'Antheia? Is that you?' you say with your last breath. 'You can call me Venus my darling,' she says choking up, ' We've always been here for you and we always will be....'";
			end the story saying "You're were killed and for what? The ignorance of man is truly damning. There are multiple endings if you'd like to try again.";
		[ending if you didn't get all three shields and don't have the knife]
		if Bronze Shield Count is less than 3 and the player does not have the ceremonial knife:
			say "Perseus steps harshly into the [location].  You start to notice that he doesn't quite seem to look at you in your eyes but elsewhere in the room. Are you going crazy and you just can't see Medusa in this room?

You start to slowly step away but he yells, 'Not so fast Medusa! You won't be able escape me or my blade!' You start to feel like you're losing your mind because you can't seem to find Medusa anywhere! He suddenly lounges at you and as you try to dodge the swing you trip over something and land sprawled against the floor.

The scarf you had been wearing to protect you from the sun has fallen away and you look at what you tripped on. It seems to be a potion bottle. With that realization, the mountain shakes and a gusts of wind hits you straight in the face! And suddenly you remember everything....

You remember your family! You may not have had the most contact with them since you were born a human and they were all immortal, but you can finally remember and at this time you're happy to know them! You remember when you first became a priestess for Athena, and you felt like you had a purpose. You felt like you were helping your fellow people live a safe and moral lifestyle. Your favorite part is that you really felt Athena was also protecting you and guiding you and you miss her so much. And then you remember him. You remember feeling dirty and unpure. You remember try to fight back. You remember losing... ";
			say "You feel yourself changing and you can see Perseus stepping back only slightly in fear. You don't want this. You don't want to be like this. You like talking to people. You like being with people. You want to see the island. You want to see the sky again. If you keep changing you'll never be able to be free again.

'Please Athena! You can't take it back! Don't change me forever! Please...' you shout to the ceiling hoping that she'll hear you. 'I'm so sorry my child...' Athena whispers in your head, 'I wish I were stronger to right the wrong done to you. I want to take it back, but I can't my daughter. But I can try to keep you safe. There are no mirrors in here. Wait you don't have all three shields and you don't have the ceremonial knife? How will you defeat Perseus?! I cannot interfere with the killing of Perseus! The male Gods will have my head! You have to try and defeat him on your own....' you think you can feel Athena crying. 

Perseus feels courageous and comes at you swinging. The blade catches your left arm and you scream in pain.  You start to hear constant hissing sound. Your hair feels heavier. You feel stronger, but you still try to flee. You don't have anything to fight him with, so you turn to run. Perseus seeing his opportunity comes after you as your back is turned. 'You're as good as dead you fucking monster!' his words stinging you like acid and you can't handle it anymore. You try to turn and use your powers against him, but with his bronze shield he doesn't even look at you as he beheads you.

With your finally moments of conciousness in pure agony, you see a line of women coming to you. They're all weeping for you. You realize they are the Goddess, and they must be keeping you in this world because you don't know how you're still alive. The Goddesses are absolutely stunning and you've never felt so blessed since you're seeing them all at once. You sense they're here to comfort you and you start to relax into the slow release of blackness. Suddenly you see a familiar face, 'Antheia? Is that you?' you say with your last breath. 'You can call me Venus my darling,' she says choking up, ' We've always been here for you and we always will be....'";
			end the story saying "You're were killed and for what? The ignorance of man is truly damning. There are multiple endings if you'd like to try again.";

[------------------------------------------------------------------------------]
The Entrance to the Cave is room. "You found the layer of Medusa. What will be her fate if you walk inside? Near the cave opening, you see a ladder descending [bold type]down[roman type]."

Bedroom 1 is a room. "The first bedroom is this maze like home. There really isn't anything of use to you in this room just a bed and a table and a chest. Medusa must try to live a simple life.".
Bed 1 is in Bedroom 1. "Here's a bed with no bedding." Bed 1 is fixed in place. Chest 1 is in Bedroom 1. "The chest in the room seems to be bolted shut." Chest 2 is fixed in place. Table 2 is in Bedroom 1. Table 2 is fixed in place. "A plain wooden table sits along a wall." Table 2 is a supporter.
The description of Bed 1 is "Just a plain old bed. There's really nothing special about it.". The description of Chest 1 is "You get closer but realize that you'll never be able to open it.". The description of Table 2 is "It's just a plain wooden table with no intricate carving.".

The Atrium is a room. "What would normally be a regular living space but seems scarily empty. Medusa doesn't strike me as a poor commoner. Why doesn't she have more things?"
The rug is in the Atrium. "There's a plain, rectangular, woolen rug on the floor.". The rug is fixed in place. The description of the rug is "There really isn't anything else to it. It's a plain, rectangular, woolen rug.". The open hearth fireplace is in the Atrium. "There's an open hearth fireplace with a pile of wood in it". The open hearth fireplace is fixed in place.  The description of the open hearth fireplace is "You look closer at the stone and the wood and realize that the wood hasn't been lit at all. Has Medusa even been here in a while?".

The Worship Room is a room. "Again the room is sparse but the walls are breathtaking. The murals are the most intricate you've ever seen, and every single one of them details a story about Athena. Medusa was nothing if not dedicated. There isn't a single other thing in this room.".
The intricate murals are in the Worship Room. "It really feels like the magic of the Goddess Athena is coursing throught the murals.". The intricate murals are fixed in place. The description of the intricate murals is "You feel like is whispering to you through the murals but you can't quite make out what she's saying.".

The Kitchen is a room. "Like most of the other rooms, this one too is sparse. There's no decoration or anything like that and there are barely any kitchen tools either."
The cooking pots are in the Kitchen. "There are some large pots in one corner.". The cooking pots are fixed in place. The description of the cooking pots is "They are just large clay plots. There's nothing special about them.". The empty firepit is in the Kitchen. "There's an empty firepit in the middle of the room.". The empty firepit is fixed in place. The description of the empty firepit is "There is abosultely nothing in that pit. It's of no use to anyone right now!".

Bedroom 2 is a room. "A completely unused room. I guess Medusa never had any guests or family that wanted to stay over. Maybe she had no friends or family...Maybe she was forced away from them..."
Bed 2 is in Bedroom 2. "Here's a bed with no bedding." Bed 2 is fixed in place. Chest 2 is in Bedroom 2. "The chest in the room seems to be bolted shut." Chest 2 is fixed in place.
The description of Bed 2 is "Just a plain old bed. There's really nothing special about it.". The description of Chest 2 is "You get closer but realize that you'll never be able to open it.".

The Treasure Room is a room. "[if Bronze Shield Ask is greater than 0 and the player does not have bronze shield 3]The room is filled with gold. I don't know how anyone could have aquired this much gold. A dragon would be jealous of all of this gold, but one of these things is not like the others and you see a glimmer of bronze behind a pile of jewlery. [otherwise]The room is filled with gold. I don't know how anyone could have aquired this much gold. A dragon would be jealous of all of this gold! This must be all of her life savings![end if]"

A pile of jewlery is in the Treasure Room. The pile of jewlery is fixed in place. A pile of coins is in the Treasure Room. The pile of coins is fixed in place. A pile of medals is in the Treasure Room. The pile of medals is fixed in place.

The description of the pile of jewlery is "[if Bronze Shield Ask is greater than 0 and the player does not have bronze shield 3] This is a massively large pile of necklaces, bracelets, and earings. The mind boggling thing is that they all look unique. No two pieces of jewlery look a like. Some even have gems in them. As you step closer, you can see the bronze shield wedged into that pile That you could definitely [bold type]take[roman type].[otherwise] This is a massively large pile of necklaces, bracelets, and earings. The mind boggling thing is that they all look unique. No two pieces of jewlery look a like. Some even have gems in them.[end if]". The description of the pile of coins is "Neatly stacked coins tower above you and you think that you would probably be set for life.". The description of the pile of medals is "You're not sure how she could have amassed such an array of medals, but nonetheless they are impressive.".

after examining the pile of jewlery:
	now the bronze shield 3 is in the Treasure Room.
	
after taking the bronze shield 3:
	now Bronze Shield Count is Bronze Shield Count + 1.

[Creation of Main Level Map]
West of the Town Center is the Agora. 
North of the Agora is Vendor 1. 
West of the Agora is Vendor 2.
South of the Agora is Vendor 3.
North of the Town Center is the Upper River.
South of the Town Center is the Temple of Athena.
South of the Temple of Athena is the Statue of Athena.
East of the Town Center is the Houses.
Southeast of the Upper River is the Lower River.
South of the Houses is the Lower River.
Northeast of the Lower River is the Mountains.
East of the Houses is the Mountains.
North of the Mountains is the Entrance to the Cave.
East of the Entrance to the Cave is the Atrium.
Southeast of the Entrance to the Cave is the Worship Room.
Northeast of the Entrance to the Cave is Bedroom 1.
Northwest of the Worship Room is the Entrance to the Cave.
South of the Atrium is the Worship Room.
East of the Atrium is the Kitchen.
Northwest of the Atrium is Bedroom 1.
West of the Treasure Room is Bedroom 1.
Southwest of the Kitchen is the Worship Room.
Northeast of the Kitchen is Bedroom 2.
Northwest of Bedroom 2 is the Treasure Room.

[Description of the Underground Rooms]
Town Center Underground is a dark room. "[if Ivory Ask is greater than 0 and the player does not have ivory]You can see the light filtering through from the Town Center but that's about all you can see. Even with the torch it's pretty dim in here and there doesn't seem to be anything down here. However, to the west you can see room filled with things. [otherwise]You can see the light filtering through from the Town Center but that's about all you can see. Even with the torch it's pretty dim in here and there doesn't seem to be anything down here. Exploration might help you find useful things though.[end if]"

Under Temple is a dark room.  "[if Star Sapphire Ask is greater than 0 and the player does not have star sapphire]You can hear priestesses above you so you believe you're under the Temple of Athena. The flames dance across the walls, but there's nothing else to illuminate really. However, you can see the hint of a blue shimmer from a room near you. [otherwise]You can hear priestesses above you so you believe you're under the Temple of Athena. The flames dance across the walls, but there's nothing else to illuminate really.[end if]"

Under Statue is a dark room. "[if Star Sapphire Ask is greater than 0 and the player does not have star sapphire]The light from the staircase near the end of the room barely sheds any light into this room, however, because of the staircase you do realize that you are under the room contain the great statue of Athena and that beaultiful altar. With the torch, you can see that these walls are covered in murals that depict the stories of Athena. Such beautiful art just hidden away and used as a kind of storage space. It is really ashame. Passing over the room with your torch again, you notice the flame catch a shimmer of brilliant blue near the chest against the wall.[otherwise]The light from the staircase near the end of the room barely sheds any light into this room, however, because of the staircase you do realize that you are under the room contain the great statue of Athena and that beaultiful altar. With the torch, you can see that these walls are covered in murals that depict the stories of Athena. Such beautiful art just hidden away and used as a kind of storage space. It is really ashame. [end if]"

The wooden chest is in Under Statue. The wooden chest is fixed in place. Old books are in Under Statue. Rusted Knives are in Under Statue.
instead of taking old books:
	say "If you pick them up, they might break apart seeing how old they are. You just leave the items in their place to preserve them.".
instead of taking rusted knives:
	say "If you pick them up, they might break apart seeing how old they are. You just leave the items in their place to preserve them.".
The description of the wooden chest is "[if Star Sapphire Ask is greater than 0 and the player does not have star sapphire]As you step closer to the open, worn out, wooden chest and notice the collection of jems inside. Now you notice a deep blue gem with white streaks forming what looks like a star among the multitude of gems.[otherwise]As you step closer to the open, worn out, wooden chest and notice the collection of gems inside.[end if]".
after examining the wooden chest:
	now the star sapphire is in Under Statue.

Under Upper River is a dark room. "[if Dragon Blood Ask is greater than 0 and the player does not have the vial of Dragon's Blood]The waterfall cascading from above is such beautiful sight, but it does make this entire area damp. There isn't really anything in this area, but as you step closer to the underground river and waterfall you notice that part of the stream is blood red and leads into the lower part of the river.[otherwise]The waterfall cascading from above is such beautiful sight, but it does make this entire area damp. There isn't really anything in this area.[end if]"

The moss is in Under Upper River. "There are large amounts of moss covering the walls and floor.".The moss is fixed in place.

[Code to handle keeping the player out of the River-----------------------]
instead of going north to Under Upper River:
	if the player does not have the boat:
		say "As you get closer you notice that the river is flowing in from above as well creating a powerful waterfall! It's still quite a ways wide and you never now how deep a river could be! You decide to hang back until you can find something to help you navigate it.[line break][line break][italic type]Maybe you could [bold type]examine[roman type] something at one of the vendors to find something that will help you cross.[roman type]";
	Otherwise:
		Continue the action.
[------------------------------------------------------------------------------]

Under Agora is a dark room. "[if Ivory Ask is greater than 0 and the player does not have ivory]By all the rumbling you hear above you, you deduce that you're under the Agora right now. There are magnificent things down here now that you have a light to see with! There are many many expertly crafted things in here and you wonder why they're under the Agora instead of displayed at the Agora itself! You see something that catches your eye on the shelf.[otherwise]By all the rumbling you hear above you, you deduce that you're under the Agora right now. There are magnificent things down here now that you have a light to see with! There are many many expertly crafted things in here and you wonder why they're under the Agora instead of displayed at the Agora itself![end if]".

The metal chest is in Under Agora. The metal chest is fixed in place. The shelf is in Under Agora. The shelf is fixed in place.  The table 1 is in Under Agora. The table 1 is fixed in place.

The description of the metal chest is "It seems to be rusted shut which is a shame.". The description of the shelf is "[if Ivory Ask is greater than 0 and the player does not have ivory]The shelf is layered with sculptures and vases. Some are in styles you've never seen before, and some are in materials you didn't know could be sculpted. They are exquiste. As you take in all the sculptures again you notice one near the back that is so intricately carved and is breathtaking. You realize it's the ivory you've been looking for! [otherwise]The shelf is layered with sculptures and vases. Some are in styles you've never seen before, and some are in materials you didn't know could be sculpted. They are exquiste.[end if]". The description of the table 1 is "The table itself is beautifully crafted but has nothing on it.".

after examining the shelf:
	now the ivory is in Under Agora.

Under Vendor 1 is a dark room. "[if Ivory Ask is greater than 0 and the player does not have ivory]There is no light in here besides the flames of your torch. It's quite a barren room. You think you're below the vendor with the woodworking but you're not totally sure. The room next to this one probably has what you are trying to find.[otherwise]There is no light in here besides the flames of your torch. It's quite a barren room. You think you're below the vendor with the woodworking but you're not totally sure.[end if]".

Under Vendor 2 is a dark room. "[if Ivory Ask is greater than 0 and the player does not have ivory]You see the trapdoor above you (that you can go [bold type]up[roman type] through) and you instantly know you're under Antheia's cart! It seems like she might use this area to store some of her wares, but there isn't much decoration in this room, just stone and dirt. You don't think what you're looking for is here. Possibly in the next room though! [otherwise]You see the trapdoor above you (that you can go [bold type]up[roman type] through) and you instantly know you're under Antheia's cart! It seems like she might use this area to store some of her wares, but there isn't much decoration in this room, just stone and dirt.[end if]".

Mounds of Oregon are in Under Vendor 2. Mounds of Margoram are in Under Vendor 2. Mounds of fennel are in Under Vendor 2. Various mounds of other herbs are in Under Vendor 2.

instead of taking Mounds of Oregon:
	say "'You know I probably shouldn't take her wares without paying Antheia for it. She's been nothing but helpful. I shouldn't do something like that to her! I'm just going to leave them here' you say to yourself.".

instead of taking Mounds of Margoram:
	say "'You know I probably shouldn't take her wares without paying Antheia for it. She's been nothing but helpful. I shouldn't do something like that to her! I'm just going to leave them here' you say to yourself.".
	
instead of taking Mounds of fennel:
	say "'You know I probably shouldn't take her wares without paying Antheia for it. She's been nothing but helpful. I shouldn't do something like that to her! I'm just going to leave them here' you say to yourself.".
	
instead of taking Various mounds of other herbs:
	say "'You know I probably shouldn't take her wares without paying Antheia for it. She's been nothing but helpful. I shouldn't do something like that to her! I'm just going to leave them here' you say to yourself.".

Under Vendor 3 is a dark room. "[if Ivory Ask is greater than 0 and the player does not have ivory]Another dim empty room. There are just slightly moist walls and a dirt floor. The room next to this one, to the north, probably has what you are trying to find.[otherwise]Another dim empty room. There are just slightly moist walls and a dirt floor.[end if]".

Under Lower River is a dark room. "[if Onyx Ask is greater than 0 and Dragon Blood Ask is greater than 0 and the player does not have onyx and the player does not have the vial of Dragon's Blood]As the light dances around you and you see the reflection of the flame in the water, you notice that the river just ends. You can't see where it goes. It just hits a wall and ends. You get closer to the edge of the river and you the small inner stream of blood being sucked into this glass box.  You can also see a black glimmer from the northeast.[else if Onyx Ask is greater than 0 and the player does not have onyx]As the light dances around you and you see the reflection of the flame in the water, you notice that the river just ends. You can't see where it goes. It just hits a wall and ends. You can see that there's a passage way to the northeast and you can see a black glimmer out of the corner of your eye.[else if Dragon Blood Ask is greater than 0 and the player does not have the vial of Dragon's Blood]As the light dances around you and you see the reflection of the flame in the water, you notice that the river just ends. You can't see where it goes. It just hits a wall and ends. You get closer to the edge of the river and you the small inner stream of blood being sucked into this glass box. There's a passage way to the northeast[otherwise]As the light dances around you and you see the reflection of the flame in the water, you notice that the river just ends. You can't see where it goes. It just hits a wall and ends. There is not much else in this place.There is a passage to the northeast.[end if]".

More moss is in Under Lower River. "There are large amounts of moss covering the walls and floor.". More moss is fixed in place.

The glass box is a closed container and openable. "The glass box shimmers under water like it's calling to you.". The glass box is opaque and fixed in place. The glass box is nowhere.
The description of the glass box is "While the box is made of glass, you still are unable to make out what's inside. It looks like the box is frosted, but you can hear something clanking against the box inside. Maybe you should [bold type]open[roman type] the box.".

before going to Under Lower River:
	if Dragon Blood Ask is greater than 0:
		now the glass box is in Under Lower River;
		now the vial of Dragon's Blood is inside the glass box.


Under Houses is a dark room. "[if Onyx Ask is greater than 0 and Dragon Blood Ask is greater than 0 and the player does not have onyx and the player does not have the vial of Dragon's Blood]As you enter you can hear constant kind of rumbling noise from above you. You think you can possibly make out the sound of people talking and the clomping of hooves. You deduce that you're most likely under the group of houses that people live in! There really isn't anything under here. You doubt that anyone really knows how to get down here. To the south you can slightly see the lower part of a river that has an interesting tint, and to the east you can see a black glimmer. [else if Onyx Ask is greater than 0 and the player does not have onyx]As you enter you can hear constant kind of rumbling noise from above you. You think you can possibly make out the sound of people talking and the clomping of hooves. You deduce that you're most likely under the group of houses that people live in! There really isn't anything under here. You doubt that anyone really knows how to get down here. To the east you can see a black glimmer[else if Dragon Blood Ask is greater than 0 and the player does not have the vial of Dragon's Blood]As you enter you can hear constant kind of rumbling noise from above you. You think you can possibly make out the sound of people talking and the clomping of hooves. You deduce that you're most likely under the group of houses that people live in! There really isn't anything under here. You doubt that anyone really knows how to get down here. To the south you can slightly see the lower part of a river that has an interesting tint.[otherwise]As you enter you can hear constant kind of rumbling noise from above you. You think you can possibly make out the sound of people talking and the clomping of hooves. You deduce that you're most likely under the group of houses that people live in! There really isn't anything under here. You doubt that anyone really knows how to get down here.[end if]".

[Code to handle keeping the player out of the houses-----------------------]
instead of going east to Under Houses:
	if the player does not have the deed:
		say "Even underground there's someone guarding the houses! At least they're very thorough. You still need the proper documentation to pass.[line break][line break][italic type]Maybe you could [bold type]ask[roman type] someone in the Agora to help you find something that will help you get in.[roman type]";
	Otherwise:
		Continue the action.
[------------------------------------------------------------------------------]

Under Mountain is a dark room. "[if Onyx Ask is greater than 0 and Dragon Blood Ask is greater than 0 and the player does not have onyx and the player does not have the vial of Dragon's Blood]It's almost like you can feel the pressure of a large mass around you and it feels a lot darker in here than it has in other rooms. You think you've found your way under the mountain on this island. What's peculiar is that there are drawings on these walls but only if you pass your torch very close to it, but there isn't anything else in this place at all. As you're trying to look at all the drawings you find one that's unlike the others and you catch a glimpse of the black glimmer that you've seen before.To the southwest you can faintly see a river with an unusual tint.[else if Onyx Ask is greater than 0 and the player does not have onyx]It's almost like you can feel the pressure of a large mass around you and it feels a lot darker in here than it has in other rooms. You think you've found your way under the mountain on this island. What's peculiar is that there are drawings on these walls but only if you pass your torch very close to it, but there isn't anything else in this place at all. As you're trying to look at all the drawings you find one that's unlike the others and you catch a glimpse of the black glimmer that you've seen before.[else if Dragon Blood Ask is greater than 0 and the player does not have the vial of Dragon's Blood]It's almost like you can feel the pressure of a large mass around you and it feels a lot darker in here than it has in other rooms. You think you've found your way under the mountain on this island. What's peculiar is that there are drawings on these walls but only if you pass your torch very close to it, but there isn't anything else in this place at all. To the southwest you can faintly see a river with an unusual tint.[otherwise]It's almost like you can feel the pressure of a large mass around you and it feels a lot darker in here than it has in other rooms. You think you've found your way under the mountain on this island. What's peculiar is that there are drawings on these walls but only if you pass your torch very close to it, but there isn't anything else in this place at all.[end if]".

The Owl Drawing is in Under Mountain. "As you continue to examine the unique drawing, you recognize it as the shape of an owl." The Owl Drawing is fixed in place.  The description of the Owl Drawing is "You trace the lines of the owl and admire the amount of detail in it. It almost looks like it could be really here. At first you thought that it's beak was missing since a chunk of the rock was missing. You were sad that someone's art was missing a piece, but as you press the torch a bit closer, you realize that it's actually a piece of onyx in place of where the mouth should be! It was so dark that you didn't realizing anything was there!".

after examining the Owl Drawing:
	now the onyx is in Under Mountain.
	
after taking the onyx:
	say "You are just able to pry the onyx from the rock wall and then the whole room starts to shake. You worry for a brief second that you've just caused the mountin to cave in but you turn back towards the drawing is see it trying to wedge itself out of the rock. It finally gets free and starts flying in front of your face. You can feel that it doesn't mean any harm to you and it nods at you and flys straight through the rock. This must be a sign from the Gods that you were meant to have this!";
	now the Owl Drawing is nowhere.

Under Cave Entrance is a dark room. "[if Onyx Ask is greater than 0 and the player does not have onyx]It felt like you climbed throught the mountain to get here, but you don't really know where here is. There really isn't anything here that you could piece together where you are, but you're probably near cave. You can see a ladder in the far corner that you can go [bold type]up[roman type] and to the south you can see a black glimmer.. [otherwise]It felt like you climbed throught the mountain to get here, but you don't really know where here is. There really isn't anything here that you could piece together where you are, but you're probably near cave. You can see a ladder in the far corner that you can go [bold type]up[roman type].[end if]". 

[Under Atrium is a dark room.

Under Worship Room is a dark room.

Under Kitchen is a dark room.

Under Bedroom 2 is a dark room.

Under Bedroom 1 is a dark room.

Under Treasure Room is a dark room.]

[Creation of Underground Map]
Down from the Town Center is Town Center Underground.
South from Town Center Underground is Under Temple.
North from Town Center Underground is Under Upper River.
South from Under Temple is Under Statue.
Up from Under Statue is Statue of Athena.
West from Town Center Underground is Under Agora.
North from Under Agora is Under Vendor 1.
West from Under Agora is Under Vendor 2.
Up from Under Vendor 2 is Vendor 2.
South from Under Agora is Under Vendor 3.
Southeast from Under Upper River is Under Lower River.
Up from Under Lower River is Lower River.
East from Town Center Underground is Under Houses.
South from Under Houses is Under Lower River.
East from Under Houses is Under Mountain.
Southwest from Under Mountain is Under Lower River.
North from Under Mountain is Under Cave Entrance.
Up from Under Cave Entrance is the Entrance to the Cave.
[Northeast from Under Cave Entrance is Under Bedroom 1.
Southeast from Under Cave Entrance is Under Worship Room.
East from Under Cave Entrance is Under Atrium.
Northwest from Under Atrium is Under Bedroom 1.
South from Under Atrium is Under Worship Room.
East from Under Atrium is Under Kitchen.
Southwest from Under Kitchen is Under Worship Room.
Northeast from Under Kitchen is Under Bedroom 2.
Northwest from Under Bedroom 2 is Under Treasure Room.
West from Under Treasure Room is  Under Bedroom 1.
Up from Under Worship Room is Worship Room.
Up from Under Bedroom 1 is Bedroom 1.]




