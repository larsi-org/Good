import <GoodLib.ash>;

void cleanup()
{
	visit_url("clan_slimetube.php?action=chamois");
	use_item( 1, $item[scroll of drastic healing]);
}

void maintainBuffs()
{
	if (have_effect($effect[Bitterskin]) == 0)
		use_item(1, $item[bitter pill]);

	if (have_effect($effect[Ur-Kel's Aria of Annoyance]) == 0)
		use_skill(1, $skill[Ur-Kel's Aria of Annoyance]);
}

void main()
{
	print("Welcome to Larsi's AutoSlime.ash", 'green');

	if ((my_adventures() < 1) || (my_inebriety() > inebriety_limit()))
		abort("Either too drunk or no adventures left...");

	set_choice(326, 0, "The Slime Tube, Showdown");

	set_choice(337, 3, "The Slime Tube, Engulfed!");
	//set_choice(337, 0, "The Slime Tube, Engulfed!");

	print("Swapping our equipment", 'blue');
	use_familiar($familiar[Purse Rat]);
	equip($slot[familiar], $item[tiny cell phone]);

	if (!outfit("Slime")) print("Failed equip 'Slime'.", "red");

	//cli_execute("maximize monster level, +equip chamoisole, +equip corrosive cowl, +equip corroded breeches, +equip pernicious cudgel, -tie");

	while (my_adventures() > 0) {
		maintainBuffs();
		//abort("You are on your own...  Good luck!");

		if (have_effect($effect[Beaten Up]) > 0) {
			cleanup();
			use_item(1, $item[soft green echo eyedrop antidote]);
			abort("Beaten Up...");
		}

		if (my_hp() < 0.6 * my_maxhp()) cleanup();

		if (my_mp() < 1000) use_item(1, $item[natural fennel soda]);

		boolean retval = adv1($location[The Slime Tube], -1, "");
	}
	cleanup();

	print("Done!", "blue");
}
