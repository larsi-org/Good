import <GoodLib.ash>;

void maintainBuffs()
{
	print("maintaining our buffs", 'blue');

	if (have_effect($effect[Earning Interest]) == 0 && item_amount($item[savings bond]) > 0)
		use_item(1, $item[savings bond]);

	if (have_effect($effect[Resined]) == 0 && item_amount($item[distilled resin]) > 0)
		use_item(1, $item[distilled resin]);


	if ((have_effect($effect[Disco Leer]) == 0) && have_skill($skill[Disco Leer]))
		cli_execute("up Disco Leer");

	if ((have_effect($effect[Polka of Plenty]) == 0) && have_skill($skill[The Polka of Plenty]))
		cli_execute("up Polka of Plenty");

	if (isFarming()) {
		if (have_effect($effect[How to Scam Tourists]) < 100)
			use_item(5, $item[How to Avoid Scams]);

		if (have_effect($effect[Flapper Dancin']) < 100)
			use_item(5, $item[flapper fly]);

		if ((equipped_item($slot[off-hand]) == $item[Half a Purse]) && (have_effect($effect[Merry Smithsness]) == 0))
			use_item(1, $item[Flaskfull of Hollow]);
	} else {
		if (have_effect($effect[How to Scam Tourists]) == 0 && item_amount($item[How to Avoid Scams]) > 0)
			use_item(1, $item[How to Avoid Scams]);

		if (have_effect($effect[Flapper Dancin']) == 0 && item_amount($item[flapper fly]) > 0)
			use_item(1, $item[flapper fly]);
	}
}

void maintainEquipment()
{
	print("Swapping our equipment", 'blue');

	if (have_item($item[li'l pirate costume])) {
		use_familiar($familiar[Trick-or-Treating Tot]);
		equip($slot[familiar], $item[li'l pirate costume]);
		//equip($slot[familiar], $item[li'l ninja costume]);
	} else {
		use_familiar($familiar[Hobo Monkey]);
		equip($slot[familiar], $item[tiny bindle]);
	}

	//use_familiar($familiar[XO Skeleton]);
	//use_familiar($familiar[Flaming Leafcutter Ant]);

	if (isFarming()) {
		cli_execute("maximize meat, +equip cheap sunglasses, +equip lucky gold ring, +equip rake, -tie");
	} else {
		cli_execute("maximize meat, +equip cheap sunglasses, -tie");
	}

	modifyOutfit();
}

void main()
{
	print("Welcome to Larsi's AutoBarfMountain.ash", 'green');

	if ((my_adventures() < 1) || (my_inebriety() > inebriety_limit()))
		abort("Either too drunk or no adventures left...");

	// Making sure our pre-adventure and post-adventure settings are empty
	set_property("afterAdventureScript", "");
	set_property("betweenBattleScript", "");

	// Setting our combat handler to BarfMountain.ccs, edit the ccs/BarfMountain.ccs file to suit your combat needs
	set_property("battleAction","custom combat script");
	set_property("customCombatScript","BarfMountain.ccs");

	set_property("choiceAdventure1073", "1");

	// chew
	if (isFarming()) {
		call_script("synthesis * meat");
		//call_script("synthesis * item");
	}

	maintainEquipment();

	while (my_adventures() > 2) {
		test_numberology(69); // +3 adventures

		if (my_adventures() % 16 == 1) maintainEquipment();

		maintainBuffs();

		if (have_effect($effect[Beaten Up]) > 0) {
			use_item(1, $item[soft green echo eyedrop antidote]);
			use_item(1, $item[scroll of drastic healing]);
		}

		if (have_skill($skill[Cannelloni Cocoon])) {
			while (my_hp() < my_maxhp() - 100) use_skill(1, $skill[Cannelloni Cocoon]);
		} else {
			if (my_hp() < 0.5 * my_maxhp()) use_item(1, $item[scroll of drastic healing]);
		}

		if (have_skill($skill[Dark Ritual])) {
			while (my_mp() < my_maxmp() - 3000) use_skill(1, $skill[Dark Ritual]);
		}

		while (my_mp() < 0.5 * my_maxmp()) use_item(1, $item[natural fennel soda]);

		boolean retval = adv1($location[Barf Mountain], 1, '');
	}

	// Setting our combat handler to autoscend_null.ccs
	cli_execute("ccs autoscend_null");
}
