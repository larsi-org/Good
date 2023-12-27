import <GoodLib.ash>;

void setChoiceAdventures()
{
	int m = muscle_mysticality_moxie();
	set_choice(1345, m, "Blech House");
}

void dailyDungeon()
{
	if (get_property("dailyDungeonDone").to_boolean()) return;

	if (can_interact()) {
		cli_execute("find pick-o-matic lockpicks");
		cli_execute("find eleven-foot pole");
		cli_execute("find ring of Detect Boring Doors");
	}

	set_choice(689, 1, "Daily Dungeon, The Final Reward");
	set_choice(690, 2, "Daily Dungeon, Go through the boring door");
	set_choice(691, 2, "Daily Dungeon, Go through the boring door");
	set_choice(692, 3, "Daily Dungeon, Use your lockpicks");
	set_choice(693, 2, "Daily Dungeon, Use your eleven-foot pole");

	if (have_item($item[pick-o-matic lockpicks]) && have_item($item[eleven-foot pole]) && have_item($item[ring of Detect Boring Doors])) {
		equip($item[ring of Detect Boring Doors]);
		cli_execute("goal set fat loot token");
		adventure(15, $location[The Daily Dungeon]);
	}
	else print("You do not have the required items for the Daily Dungeon.", "red");
}

// Get Free Volcoino
void getVolcoino()
{
	if (get_property("_infernoDiscoVisited") == true) return;

	print("Attempting to rock Disco Style...");
	if (outfit("Smooth")) {
		visit_url("place.php?whichplace=airport_hot&action=airport4_zone1");
		run_choice(7);
	}
	else print("Failed to claim Volcoino.", "red");
}

// Get Free Funfunds
void getFunFunds()
{
	if (get_property("_dinseyGarbageDisposed") == "true") return;

	print("Attempting to turn in garbage...");
	get_item(1, $item[bag of park garbage]);
	visit_url("place.php?whichplace=airport_stench&action=airport3_tunnels");
	run_choice(6);
}

void eatDrinkChew()
{
	if (get_property("_eatDrinkChew") == "true") return;

	if (have_item($item[mafia pinky ring])) {
		equip($slot[acc3], $item[mafia pinky ring]);
	}
	if (have_item($item[tuxedo shirt]) && have_skill($skill[Torso Awareness]) && can_equip($item[tuxedo shirt])) {
		equip($item[tuxedo shirt]);
	}

	if (isFarming()) {
		// eat
		use_item(2, $item[milk of magnesium]);
		use_item(1, $item[karma shawarma]);
		time_spinner_eat($item[karma shawarma]);
		time_spinner_eat($item[karma shawarma]);
		time_spinner_eat($item[karma shawarma]);
		call_script("Good/GoodEat");

		stash_currency();
		call_script("Good/GoodDrink");

		while ((inebriety_limit() - my_inebriety()) >= 4) use_item(1, getDrink4());
		while ((inebriety_limit() - my_inebriety()) >= 3) use_item(1, getDrink3());
		while ((inebriety_limit() - my_inebriety()) >= 1) use_item(1, getDrink1());
	} else {
		call_script("Good/GoodDrink");
		call_script("Good/GoodEat");
	}
}

void getPants()
{
	if (get_property("_portablePantogram") == "true") return;

	if (have_item($item[Portable Pantogram])) {

		int m = muscle_mysticality_moxie();
		int e = 5; // stench

		// http://kolmafia.us/showthread.php?22336-How-do-I-craft-my-pantogram-pants-using-mafia
		get_item(1, $item[porquoise]);
		visit_url("inv_use.php?pwd&which=99&whichitem=9573");
		visit_url("choice.php?whichchoice=1270&pwd&option=1&m=" + m + "&e=" + e + "&s1=-1%2C0&s2=706%2C1&s3=-2%2C0", true, true);
	}
}

void get_horse(int choice)
{
	string temp = visit_url("place.php?whichplace=town_right&action=town_horsery");
	temp = visit_url("choice.php?pwd=&whichchoice=1266&option=" + choice);
}

void get_floundry(item it)
{
	string temp = visit_url("clan_viplounge.php?preaction=buyfloundryitem&whichitem=" + it.to_int());
}

void doCamp()
{
	visit_url("place.php?whichplace=campaway&action=campaway_sky");
}

void doBoxingDaycare(boolean farming)
{
	visit_url("place.php?whichplace=town_wrong&action=townwrong_boxingdaycare");
	run_choice(1);   // Have a Boxing Daydream
	run_choice(3);   // Enter the Boxing Daycare
	run_choice(2);   // Scavenge for gym equipment (free)
	if (farming) {
		run_choice(2);   // Scavenge for gym equipment (1 adv.)
		run_choice(2);   // Scavenge for gym equipment (2 adv.)
		run_choice(1);   // Recruit toddlers (100 meat)
		run_choice(1);   // Recruit toddlers (1000 meat)
		run_choice(1);   // Recruit toddlers (10000 meat)
	}
	run_choice(5);   // Return to the Lobby
	run_choice(2);   // Visit the Boxing Day Spa
	run_choice(3);   // Get a Cucumber Eye Treatment
	run_choice(4);   // Leave
}

void doTunnel()
{
	visit_url("place.php?whichplace=town_wrong&action=townwrong_tunnel");
	run_choice(1);   // Enter the Tunnel
	run_choice(2);   // Sneak around the Enforcer
	run_choice(3);   // Take the earrings
	run_choice(2);   // Sneak around the Engineer
	run_choice(3);   // Wandering Eye Surgery
	run_choice(2);   // Sneak around the Equivocator
	run_choice(3);   // Take the chocolate

	item it = $item[LOV Extraterrestrial Chocolate];
	if (item_amount(it) > 0) use(1, it); // use a first one, if available
	if (item_amount(it) > 0) use(1, it); // use a second one, if available
}

void setDefaultChoices()
{
	set_choice(1108, 2, "1108");
}

void main()
{
	setDefaultChoices();
	uploadStats();

	call_script("Detective Solver");

	setChoiceAdventures();

	//dailyDungeon();
	//call_script("VotingBooth");

	if (isFarming()) {
		getFunFunds();
		//if (item_amount($item[FunFunds&trade;]) >= 20)
		//	buy_coinmaster(1, $item[one-day ticket to Dinseylandfill]);

		getVolcoino();
		//if (item_amount($item[Volcoino]) >= 3)
		//	buy_coinmaster(1, $item[one-day ticket to That 70s Volcano]);
		if (!outfit("Good Morning")) print("Failed equip 'Good Morning'.", "red");
	}

	eatDrinkChew();

	if (have_skill($skill[Communism!]))
		use_skill(1, $skill[Communism!]);
	if (have_skill($skill[Rainbow Gravitation]))
		use_skill(3, $skill[Rainbow Gravitation]);
	if (have_item($item[BittyCar MeatCar]))
		use_item(1, $item[BittyCar MeatCar]);
	if (have_skill($skill[Canticle of Carboloading]))
		use_skill(1, $skill[Canticle of Carboloading]);

	buy_coinmaster(1, $item[print screen button]);
	buy_coinmaster(1, $item[daily dungeon malware]);

	boolean temp;

	if (have_skill($skill[Summon Clip Art]) && get_property("_clipartSummons").to_int() == 0)
		temp = cli_execute("make unbearable light");
	if (have_skill($skill[Summon Clip Art]) && get_property("_clipartSummons").to_int() == 1)
		temp = cli_execute("make cold-filtered water");
	if (have_skill($skill[Summon Clip Art]) && get_property("_clipartSummons").to_int() == 2)
		temp = cli_execute("make bucket of wine");

	temp = cli_execute("genie pocket wish");
	temp = cli_execute("genie pocket wish");
	temp = cli_execute("genie pocket wish");

	if (have_item($item[Deck of Every Card])) {
		temp = cli_execute("cheat Knife");
		temp = cli_execute("cheat Ancestral Recall");
		temp = cli_execute("cheat Island");
	}

	if (get_campground() contains $item[Potted Tea Tree])
		temp = cli_execute("teatree cuppa Royal tea");

	temp = cli_execute("Briefcase collect");

	if (isLarsi() || isA2Z()) {
		temp = cli_execute("terminal extrude food");
		temp = cli_execute("terminal extrude food");
		temp = cli_execute("terminal extrude food");
	}

	if (isLarsiKolbot() || isEndOfTime()) {
		temp = cli_execute("terminal extrude booze");
		temp = cli_execute("terminal extrude booze");
		temp = cli_execute("terminal extrude booze");
	}

	temp = cli_execute("terminal enhance meat");
	temp = cli_execute("terminal enhance meat");
	temp = cli_execute("terminal enhance meat");

	if (isFarming()) use_item(3, $item[Flaskfull of Hollow]);

	get_horse(2); // dark horse
	get_floundry($item[carpe]);

	getPants();

	call_script("CombBeach free");

	//call_script("PirateRealm any");
	//if (!outfit("Good Morning")) print("Failed equip 'Good Morning'.", "red");

	doBoxingDaycare(false);
	doTunnel();
	doCamp();

	if (item_amount($item[circle drum]) > 0) use(1, $item[circle drum]);
	if (item_amount($item[defective Game Grid token]) > 0) use(1, $item[defective Game Grid token]);

	print("Done!", "blue");
}
