import <GoodLib.ash>;

void cleanup()
{
	use_item( 1, $item[scroll of drastic healing]);
}

void maintainBuffs()
{
}

void main()
{
	print("Welcome to Larsi's AutoCrimbo.ash", 'green');

	if ((my_adventures() < 1) || (my_inebriety() > inebriety_limit()))
		abort("Either too drunk or no adventures left...");

	//set_choice(1486, 2, "Crimbo Choice 1486");
	//set_choice(1487, 1, "Crimbo Choice 1487");
	//set_choice(1488, 1, "Crimbo Choice 1488");

	// Making sure our pre-adventure and post-adventure settings are empty
	set_property("afterAdventureScript", "");
	set_property("betweenBattleScript", "");

	// Setting our combat handler to Crimbo.ccs, edit the ccs/Crimbo.ccs file to suit your combat needs
	set_property("battleAction","custom combat script");
	set_property("customCombatScript","Crimbo.ccs");

	print("Swapping our equipment", 'blue');
	cli_execute("maximize item, +equip lucky gold ring, +equip combat lover's locket, +equip rake, -tie");
	//cli_execute("maximize item, +equip lucky gold ring, +equip combat lover's locket, +equip rake, +equip Elf Guard patrol cap, +equip Elf Guard hotpants, +equip Elf Guard insignia (private), -tie");
	//cli_execute("maximize item, +equip lucky gold ring, +equip combat lover's locket, +equip rake, +equip Crimbuccaneer tricorn, +equip Crimbuccaneer breeches, +equip Crimbuccaneer fledges (mint), -tie");

	//if (!outfit("Crimbo")) print("Failed equip 'Crimbo'.", "red");
	//use_familiar($familiar[Yule Hound]);

	// chew
	if (isFarming()) {
		//call_script("synthesis * meat");
		call_script("synthesis * item");
	}

	while (my_adventures() > 2) {
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

		//boolean retval = adv1($location[The Canadian Wildlife Preserve], -1, "");

		buffer page_text = visit_url("adventure.php?snarfblat=576");
		run_turn();
	}
	cleanup();

	print("Done!", "blue");
}
