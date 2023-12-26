import <GoodLib.ash>;

void main()
{
	if ((my_adventures() > 2) || (my_inebriety() > inebriety_limit()))
		abort("Either too drunk or adventures left...");

	if (isFarming()) {
		use_familiar($familiar[Stooper]);
		use_item(1, getDrink1());

		if (have_item($item[mafia pinky ring])) {
			equip($slot[acc3], $item[mafia pinky ring]);
		}
		if (have_item($item[tuxedo shirt]) && have_skill($skill[Torso Awareness]) && can_equip($item[tuxedo shirt])) {
			equip($item[tuxedo shirt]);
		}

		item it = getOverdrink();
		get_item(1, it);
		overdrink(1, it);

		use_familiar($familiar[Trick-or-Treating Tot]);
		equip($slot[familiar], $item[li'l unicorn costume]);
		maximize("adv", 0, 0, false);
	}

	print("Done!", "blue");
}
