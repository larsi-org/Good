import <GoodLib.ash>;

void smash_barrels()
{
	for it_id from 8568 to 8577 use_all_but(0, to_item(it_id));
}

void use_all_junk()
{
	boolean [item] junk = $items[Elf Guard payroll bag, Crimbuccaneer captain's purse, ancient vinyl coin purse, black pension check, briefcase, duct tape wallet, fat wallet, fisherman's sack, Gathered Meat-Clip, gold Boozehounds Anonymous token, Mer-kin foodbucket, Mer-kin thingpouch, old coin purse, old leather wallet, pixel coin, pixellated moneybag, roll of meat, sack lunch, shiny stones, solid gold jewel, stolen meatpouch, mermaid's purse];

	foreach it in junk use_all_but(0, it);
}

void sell_all_junk()
{
	boolean [item] junk = $items[a little sump'm sump'm, ancient protein powder, barrel-aged martini, barrel cracker, barrel pickle, bean burrito, beertini, bit-o-cactus, bloody beer, bloody mary, bottle of Amontillado, bottle of cooking sherry, bottle of popskull, breakfast mess, cactus fruit, can of the cheapest beer, centipede eggs, commemorative war stein, concentrated magicalness pill, cute mushroom, day-old beer, decomposed boot, dense meat stack, dollar-sign bag, dusty bottle of Marsala, dusty bottle of Merlot, dusty bottle of Muscat, dusty bottle of Pinot Noir, dusty bottle of Port, dusty bottle of Zinfandel, eggnog, enchanted barbell, enchanted bean burrito, extra-strength strongness elixir, fancy seashell necklace, fat stacks of cash, flavorless gruel, giant moxie weed, gibson, gin and tonic, gin-soaked blotter paper, gold nuggets, half of a gold tooth, handful of moss, huge gold coin, ice-cold fotie, ice-cold Sir Schlitz, ice-cold Willer, Imp Ale, jug-o-magicalness, jumping bean burrito, leather bookmark, Mad Train wine, mana curds, margarita, massive gemstone, meat paste, meat stack, mimosette, mini-martini, moxie weed, overpriced &quot;imported&quot; beer, pile of gold coins, pink pony, plastic nightmare troll, Ram's Face Lager, really dense meat stack, rockin' wagon, roll in the hay, screwdriver, slap and tickle, slip 'n' slide, snifter of thoroughly aged brandy, solid gold bowling ball, spicy bean burrito, spicy enchanted bean burrito, spicy jumping bean burrito, strawberry daiquiri, strongness elixir, suntan lotion of moxiousness, Telltale&trade; rubber heart, tequila sunrise, tequila sunset, tequila with training wheels, Typical Tavern swill, unidentified jerky, vampire chowder, vibrating mushroom, vodka and cranberry, vodka and tonic, vodka martini, watered-down Red Minotaur, white Canadian, wind-up spider, Ye Olde Meade, zmobie, Zoodriver];

	foreach it in junk autosell_all_but(0, it);
}

void keep_one_junk()
{
	boolean [item] mr_klaw = $items[club necklace, diamond necklace, heart necklace, spade necklace, rubber WWBD? bracelet, rubber WWJD? bracelet, rubber WWSPD? bracelet, rubber WWtNSD? bracelet, stuffed angry cow, stuffed astral badger, stuffed baby gravy fairy, stuffed Cheshire bitten, stuffed cocoabo, stuffed flaming gravy fairy, stuffed frozen gravy fairy, stuffed hand turkey, stuffed MagiMechTech MicroMechaMech, stuffed mind flayer, stuffed scary death orb, stuffed sleazy gravy fairy, stuffed snowy owl, stuffed spooky gravy fairy, stuffed stinky gravy fairy, stuffed undead elbow macaroni, stuffed yo-yo, garish pinky ring, giant designer sunglasses, bejeweled cufflinks, fancy opera glasses, stuffed Baron von Ratsworth, stuffed Meat, stuffed mink, stuffed teddy butler, stuffed monocle, stuffed tin of caviar, teacher's pen, mother's necklace ];

	foreach it in mr_klaw autosell_all_but(1, it);


	boolean [item] junk = $items[acoustic guitarrr, Amulet of Yendor, ancient ice cream scoop, asbestos apron, barrel gun, big bass drum, bone flute, bottle opener belt buckle, bum cheek, buoybottoms, charming flute, cheap sunglasses, chef's hat, chopsticks, clown hammer, coffin lid, cold ninja mask, Crown of the Goblin King, curmudgel, dead guy's watch, dented harmonica, dirty hobo gloves, Dolphin King's crown, dreadlock whip, Drowsy Sword, encoder ring, enormous hoop earring, expensive camera, filthy child leash, fire poi, flaming talons, flask flops, frigid hanky&#363;, frilly skirt, frozen nunchaku, furniture dolly, giant artisanal rice peeler, gold wedding ring, grave robbing shovel, round green sunglasses, fuzzy earmuffs, red-hot sausage fork, wicker shield, didgeridooka, Lockenstock&trade; sandals, Gaia beads, hippy medical kit, hippy protest button, hardened slime belt, hardened slime hat, hardened slime pants, hermit permit, Jolly Roger charrrm bracelet, joybuzzer, keg shield, kick-ass kicks, mood ring, ninja mop, oversized pipe, pail, peanut brittle shield, perforated battle paddle, pet rock &quot;Groucho&quot; disguise, pet rock &quot;Snooty&quot; disguise, mesh cap, giant needle, obsidian nutcracker, red silk skirt, red-and-green sweater, Red Rover BB gun, rice bowl, ridiculously overelaborate ninja weapon, rusty grave robbing shovel, sabre teeth, scorpion whip, sk8board, soap knife, stone baseball cap, stuffed crazy bastard sword, stuffed shoulder parrot, The Big Book of Pirate Insults, tiny plastic golden gundam, x-ray specs];

	foreach it in junk autosell_all_but(1, it);


	boolean [item] medals = $items[Red Balloon of Valor, Purple Horseshoe of Honor, Blue Diamond of Honesty, Green Clover of Justice, Yellow Moon of Compassion, Orange Star of Sacrifice, Pink Heart of Spirit, Uranium Omega of Temperance, Lead Zeta of Chastity, Aluminum Epsilon of Humility, Zinc Delta of Tranquility, Nickel Gamma of Frugality, Iron Beta of Industry, Copper Alpha of Sincerity, Order of the Silver Wossname];

	foreach it in medals autosell_all_but(1, it);
}

void sell_good_stuff()
{
	boolean [item] good_stuff = $items[one-day ticket to Dinseylandfill, one-day ticket to That 70s Volcano, Rad Lib, cuppa Royal tea, Bowlet, Cornbeefadon, Disgeist, Stooper, Unspeakachu, Mu, pristine piranha seed, Shot of Kardashian Gin ];

	foreach it in good_stuff put_all_shop(it);
}

void clean_outfits()
{
	boolean [item] outfits = $items[

		// Bugbear Costume
		bugbear beanie, bugbear bungguard,

		// Filthy Hippy Disguise
		filthy knitted dread sack, filthy corduroys,

		// Frat Boy Ensemble
		Orcish baseball cap, Orcish frat-paddle, Orcish cargo shorts,

		// Knob Goblin
		Knob Goblin visor, Knob Goblin scimitar, Knob Goblin tongs,

		// Knob Goblin Harem Girl Disguise
		Knob Goblin harem veil, Knob Goblin harem pants,

		// Knob Goblin Elite Guard Uniform
		Knob Goblin elite helm, Knob Goblin elite polearm, Knob Goblin elite pants,
		Knob Goblin elite shirt,

		// eXtreme Cold-Weather Gear
		eXtreme scarf, snowboarder pants, eXtreme mittens, eXtreme Bi-Polar Fleece Vest,

		// Swashbuckling Getup
		eyepatch, swashbuckling pants, stuffed shoulder parrot, arrrgyle socks, crowbarrr, leotarrrd, safarrri hat, witty rapier,

		// Terrifying Clown Suit
		foolscap fool's cap, bloody clown pants, big red clown nose, clown shoes, polka-dot bow tie, acid-squirting flower,

		// Antique Arms And Arm
		antique helmet, antique spear, antique shield, antique greaves,

		// War Hippy Fatigues
		reinforced beaded headband, bullet-proof corduroys, round purple sunglasses,

		// Frat Warrior Fatigues
		beer helmet, distressed denim pants, bejeweled pledge pin,

		// Slimy Rags
		crown-shaped beanie, hopping socks, letterman's jacket, poodle skirt,

		// LOL
		f3d0r4, ASCII shirt, draggin' ball hat, drywall axe, plastic guitar, 1337 7r0uZ0RZ,

		// The Penultimate Fantasy Airship
		Mohawk wig, oversized pizza cutter, ridiculously huge sword, titanium assault umbrella, armgun, magilaser blastercannon, ocarina of space, amulet of extreme plot significance, glowing red eye,

		// The Hidden City
		attorney's badge, big bad voodoo mask, bloodied surgical dungarees, bone abacus, cold water bottle, compression stocking, half-size scalpel, head mirror, jungle drum, midriff scrubs, headhunter necktie, pointed stick, pygmy briefs, pygmy nose-bone, pygmy concertinette, pygmy spear, short-handled mop, smirking shrunken head, sphygmomanometer, surgical apron, surgical mask, tiny bowler, world's smallest violin,

		// The Black Forest
		black cloak, little black book,

		// Mining Gear
		miner's helmet,
		7-Foot Dwarven mattock,
		miner's pants,

		// Lynyrd
		lynyrdskin breeches, lynyrdskin cap, lynyrdskin tunic,

		// The Neverending Party
		cosmetic football, denim jacket, dorky glasses, everfull glass, gold skull ring, neverending wallet chain, noticeable pumps, paint palette, pentagram bandana, ponytail clip, pump-up high-tops, ratty knitted cap, shoe ad T-shirt, surprisingly capacious handbag,

		// Shallow Sea Fishing
		lucky rabbitfish fin, spearfish fishing spear, waders,

		// troll doll
		//blue raspberry troll doll, cinnamon troll doll, grape troll doll,
	];

	foreach it in outfits have(1, it);
}

void clean_avatar_potions()
{
	foreach it in $items[]
		if (item_type(it) == "avatar potion" && have_item(it))
			autosell_all_but(0, it);
}

void stock_pile_stuff()
{
	get_item(500, $item[BACON]);

	get_item(100, $item[Ferrigno's Elixir of Power]);
	get_item(100, $item[Hawking's Elixir of Brilliance]);
	get_item(100, $item[Connery's Elixir of Audacity]);

	get_item(100, $item[philter of phorce]);
	get_item(100, $item[ointment of the occult]);
	get_item(100, $item[serum of sarcasm]);

	get_item(100, $item[cold-filtered water]);
	get_item(100, $item[potion of temporary gr8ness]);

	get_item(100, $item[How to Avoid Scams]);
	get_item(100, $item[natural fennel soda]);
	get_item(100, $item[milk of magnesium]);
	get_item(100, $item[mojo filter]);
	get_item(100, $item[scroll of drastic healing]);
	get_item(100, $item[soft green echo eyedrop antidote]);
	get_item(100, $item[New Age healing crystal]);
	get_item(100, $item[New Age hurting crystal]);
	get_item(100, $item[Source essence]);
	get_item(100, $item[crayon shavings]);

	get_item(100, $item[cold wad]);
	get_item(100, $item[hot wad]);
	get_item(100, $item[sleaze wad]);
	get_item(100, $item[spooky wad]);
	get_item(100, $item[stench wad]);
	get_item(100, $item[twinkly wad]);

	get_item(100, $item[chewing gum on a string]);
	get_item(100, $item[spectral pickle]);
	get_item(  3, $item[pie man was not meant to eat]);
	get_item( 50, $item[fish juice box]);
	get_item( 50, $item[sea lasso]);
	get_item( 10, $item[sea cowbell]);

	get_item(100, $item[black mana]);
	get_item(100, $item[blue mana]);
	get_item(100, $item[green mana]);
	get_item(100, $item[red mana]);
	get_item(100, $item[white mana]);
	get_item(100, $item[snow crab]);
	get_item( 25, $item[stuffing fluffer]);
	get_item( 20, $item[disassembled clover]);
	get_item( 20, $item[tomb ratchet]);
	get_item( 20, $item[stench jelly]);
	get_item( 10, $item[glowing syringe]);
	get_item( 10, $item[gooey lava globs]);
	get_item( 10, $item[monkey barf]);
	get_item( 10, $item[SMOOCH bottlecap]);
	get_item( 10, $item[space wine]);
	get_item(  5, $item[cuppa Sobrie tea]);
	get_item(  5, $item[cuppa Voraci tea]);
	get_item(  3, $item[clockwork bartender-in-the-box]);
	get_item(  3, $item[clockwork chef-in-the-box]);
	get_item(  3, $item[clockwork maid]);
	get_item(  1, $item[Boris's key lime pie]);
	get_item(  1, $item[Jarlsberg's key lime pie]);
	get_item(  1, $item[Sneaky Pete's key lime pie]);
	get_item(  3, $item[digital key lime pie]);
	get_item(  3, $item[star key lime pie]);
	get_item(  1, $item[wet stew]);
	get_item(  1, $item[meat engine]);
	get_item(  1, $item[Antique accordion]);
	get_item(  1, $item[antique machete]);
	get_item(  1, $item[drum machine]);
	get_item(  1, $item[killing jar]);
	get_item(  1, $item[borrowed time]);
	get_item( 20, $item[corpse on the beach]);
	get_item(  1, $item[superduperheated metal]);
	get_item(  1, $item[security flashlight]);
	get_item(  1, $item[water wings for babies]);

	// passive damage
	get_item( 30, $item[paint bomb]);
	get_item( 30, $item[possessed tomato]);
	get_item( 30, $item[Colon Annihilation Hot Sauce]);
	get_item( 30, $item[can of sterno]);
	get_item( 30, $item[hedgeturtle]);
	get_item( 30, $item[crazy hobo notebook]);
	get_item( 30, $item[d8]);
	get_item(100, $item[pufferfish spine]);
	get_item( 10, $item[old school beer pull tab]);
	get_item( 10, $item[cold mashed potatoes]);
	get_item( 10, $item[hand grenegg]);
	get_item( 10, $item[jagged scrap metal]);
	get_item( 10, $item[jigsaw blade]);
	get_item( 10, $item[throwing fork]);

	// Hobopolis
	get_item( 30, $item[unfortunate dumplings]);
	get_item( 30, $item[sewer wad]);
	get_item( 30, $item[bottle of Ooze-O]);
	get_item( 30, $item[oil of oiliness]);
	get_item( 30, $item[gatorskin umbrella]);
}

void clean_marbles()
{
	boolean [item] cysts = $items[tiny slimy cyst, small slimy cyst, medium slimy cyst, big slimy cyst];
	foreach it in cysts use_all_but(0, it);

	use_marbles($item[green peawee marble]);
	use_marbles($item[brown crock marble]);
	use_marbles($item[red China marble]);
	use_marbles($item[lemonade marble]);
	use_marbles($item[bumblebee marble]);
	use_marbles($item[jet bennie marble]);
	use_marbles($item[beige clambroth marble]);
	use_marbles($item[steely marble]);
	use_marbles($item[beach ball marble]);
	use_marbles($item[black catseye marble]);
}

void clean_black_picnic_basket()
{
	use_all_but(0, $item[black picnic basket]);

	//autosell_all_but(0, $item[black pudding]);
	autosell_all_but(0, $item[Blackfly Chardonnay]);
	autosell_all_but(0, $item[black & tan]);
	autosell_all_but(0, $item[black pepper]);
	autosell_all_but(0, $item[black forest cake]);
	autosell_all_but(0, $item[black forest ham]);
}

void clean_red_box()
{
	use_all_but(0, $item[red box]);

	have(1, $item[red badge]);
	have(1, $item[red book]);
	have(1, $item[red coat]);
	have(1, $item[red-hot poker]);
	have(1, $item[red masque]);
	have(1, $item[red shirt]);
	have(1, $item[red shoe]);
	have(1, $item[Red X Shield]);

	get_item(20, $item[red letter]);

	autosell_all_but(0, $item[red red wine]);
	autosell_all_but(0, $item[red rum]);
	autosell_all_but(0, $item[red velvet cake]);
}

void clean_source_terminal()
{
	boolean [item] src_term = $items[Source terminal file: critical.enh, Source terminal file: damage.enh, Source terminal file: substats.enh, Source terminal file: protect.enq, Source terminal file: stats.enq, Source terminal file: compress.edu, Source terminal file: duplicate.edu, Source terminal file: portscan.edu, Source terminal file: turbo.edu, Source terminal file: gram.ext, Source terminal file: pram.ext, Source terminal file: spam.ext, Source terminal file: cram.ext, Source terminal file: dram.ext, Source terminal file: tram.ext, Source terminal file: familiar.ext, Source terminal INGRAM chip, Source terminal DIAGRAM chip, Source terminal ASHRAM chip, Source terminal SCRAM chip, Source terminal TRIGRAM chip];

	foreach it in src_term autosell_all_but(0, it);
}

void clean_thwaitgold()
{
	boolean [item] gold = $items[Thwaitgold bee statuette, Thwaitgold grasshopper statuette, Thwaitgold butterfly statuette, Thwaitgold stag beetle statuette, Thwaitgold woollybear statuette, Thwaitgold maggot statuette, Thwaitgold praying mantis statuette, Thwaitgold firefly statuette, Thwaitgold Goliath beetle statuette, Thwaitgold bookworm statuette, Thwaitgold ant statuette, Thwaitgold dragonfly statuette, Thwaitgold wheel bug statuette, Thwaitgold spider statuette, Thwaitgold nit statuette, Thwaitgold scarab beetle statuette, Thwaitgold caterpillar statuette, Thwaitgold termite statuette, Thwaitgold scorpion statuette, Thwaitgold moth statuette, Thwaitgold cockroach statuette, Thwaitgold amoeba statuette, Thwaitgold bug statuette, Thwaitgold time fly statuette, Thwaitgold metabug statuette, Thwaitgold chigger statuette, Thwaitgold masked hunter statuette, Thwaitgold mosquito statuette, Thwaitgold nymph statuette, Thwaitgold bombardier beetle statuette, Thwaitgold buzzy beetle statuette, Thwaitgold keyhole spider statuette, Thwaitgold slug statuette, Thwaitgold listening bug statuette, Thwaitgold quantum bug statuette, Thwaitgold fire beetle statuette, Thwaitgold protozoa statuette ];

	foreach it in gold put_all_display(it);
}

void clean_keys()
{
	boolean temp;
	int cnt;

	cnt = item_amount($item[Boris's key]);
	if (cnt > 0) temp = cli_execute("make " + cnt + " Boris's key lime pie");

	cnt = item_amount($item[Jarlsberg's key]);
	if (cnt > 0) temp = cli_execute("make " + cnt + " Jarlsberg's key lime pie");

	cnt = item_amount($item[Sneaky Pete's key]);
	if (cnt > 0) temp = cli_execute("make " + cnt + " Sneaky Pete's key lime pie");

	put_all_shop_but(1, $item[Boris's key lime pie]);
	put_all_shop_but(1, $item[Jarlsberg's key lime pie]);
	put_all_shop_but(1, $item[Sneaky Pete's key lime pie]);
}

void clean_mushrooms()
{
	use_all_but(0, $item[immense free-range mushroom]);
	use_all_but(0, $item[giant free-range mushroom]);
	use_all_but(0, $item[bulky free-range mushroom]);
	use_all_but(0, $item[plump free-range mushroom]);
	use_all_but(0, $item[free-range mushroom]);
}

void discard_instant_karma()
{
	while(item_amount($item[instant karma]) > 0) {
		print("Discarding: 1 x instant karma", "green");
		visit_url("inventory.php?which=1&action=discard&pwd&whichitem=4448&ajax=1");
	}
}

void main()
{
	if (!isFarming()) return;

	use_item(min(item_amount($item[stuffed treasure chest]), item_amount($item[stuffed key])), $item[stuffed treasure chest]);

	use_item(min(item_amount($item[Pok&eacute;-Gro fertilizer]), 7), $item[Pok&eacute;-Gro fertilizer]);

	use_all_but(200, $item[How to Avoid Scams]);
	use_all_but(200, $item[bag of park garbage]);
	autosell_all_but(200, $item[bag of gross foreign snacks]);

	smash_barrels();

	use_all_junk();
	sell_all_junk();
	keep_one_junk();
	sell_good_stuff();

	clean_black_picnic_basket();
	clean_red_box();
	clean_source_terminal();
	clean_outfits();
	clean_avatar_potions();
	clean_marbles();
	clean_thwaitgold();
	stock_pile_stuff();
	stash_currency();
	clean_keys();
	clean_mushrooms();
	discard_instant_karma();

	print("Done!", "blue");
}
