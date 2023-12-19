import <GoodLib.ash>;

void main()
{
	int n = 40 / 10;

	switch(muscle_mysticality_moxie()) {
		case 1:	use_item(n, $item[oil of stability]); break;
		case 2:	use_item(n, $item[oil of expertise]); break;
		case 3:	use_item(n, $item[oil of slipperiness]); break;
	}

	//Holiday Weight Gain

	boolean [item] toUse = $items[Ferrigno's Elixir of Power, Hawking's Elixir of Brilliance, Connery's Elixir of Audacity, philter of phorce, ointment of the occult, serum of sarcasm, cold-filtered water, potion of temporary gr8ness];
	foreach it in toUse use_item(n, it);

	boolean [item] tac = $items[Trivial Avocations Card: What?, Trivial Avocations Card: When?, Trivial Avocations Card: Where?, Trivial Avocations Card: Who?];
	foreach it in tac use_item(1, it);

	print("Done!", "blue");
}
Ottohasagreatlife!2
1234567890123456789