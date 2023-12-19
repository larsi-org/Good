boolean isLarsi()
{
	return my_id() == 2680845;
}

boolean isA2Z()
{
	return my_id() == 2723436;
}

boolean isLarsiKolbot()
{
	return my_id() == 2721932;
}

boolean isEndOfTime()
{
	return my_id() == 3156436;
}

boolean isFarming()
{
	return get_property("kingLiberated").to_boolean();
}

item getDrink1()
{
	return $item[meadeorite];
}

item getDrink3()
{
	return $item[perfect paloma];
	//return $item[perfect negroni];
}

item getDrink4()
{
	return $item[hacked gibson];
	//return $item[Ice Island Long Tea];
}

item getOverdrink()
{
	return $item[bucket of wine];
}

void modifyOutfit()
{
	//equip($slot[acc3], $item["I Voted!" sticker]);
	//equip($item[Toyleporter]);

	//use_familiar($familiar[Flaming Leafcutter Ant]);
	//equip($slot[familiar], $item[tiny rake]);
}

boolean have_item(item it)
{
	return (item_amount(it) > 0 || equipped_amount(it) > 0);
}

void get_item(int amount, item it)
{
	int n = amount - item_amount(it);
	if (n > 0) {
		print("Buying: " + n + " x " + it, "green");
		buy(n, it);
	}
}

void use_item(int amount, item it)
{
	if (amount < 1) return;

	get_item(amount, it);

	string it_t = item_type(it);
	if (it_t == "food") eat(amount, it);
	else if (it_t == "booze") drink(amount, it);
	else if (it_t == "spleen item") chew(amount, it);
	else use(amount, it);
}

void autosell_all_but(int remain, item it)
{
	int n = item_amount(it) - remain;
	if (n > 0) {
		print("Selling: " + n + " x " + it, "green");
		autosell(n, it);
	}
}

void use_all_but(int remain, item it)
{
	int n = item_amount(it) - remain;
	if (n > 0) {
		print("Using: " + n + " x " + it, "green");
		use(n, it);
	}
}

void have(int amount, item it)
{
	get_item(amount, it);
	autosell_all_but(amount, it);
}

boolean buy_coinmaster(int qty, item it)
{
	coinmaster master = it.seller;
	if (master == $coinmaster[none]) {
		print("You do not need a coinmaster to purchase " + it, "red");
		return buy(qty, it);
	}
	if (!is_accessible(master)) {
		print(inaccessible_reason(master), "red");
		return false;
	}
	int coins = master.available_tokens;
	int price = qty * sell_price(master, it);
	if (price > coins) {
		print("You only have " + coins + " " + master.token + ", but it costs " + price + " " + master.token, "red");
		return false;
	}
	return buy(master, qty, it);
}

void put_all_shop(item it)
{
	if (item_amount(it) > 0) put_shop(mall_price(it), 0, it);
}

void put_all_shop_but(int remain, item it)
{
	if (item_amount(it) > remain) put_shop(mall_price(it), 0, item_amount(it) - remain, it);
}

void put_all_display(item it)
{
	if (have_item(it)) {
		int n = item_amount(it);
		print("Display: " + n + " x " + it, "green");
		put_display(n, it);
	}
}

boolean time_spinner_eat(item it)
{
	int iid = to_int(it);
	buffer page = visit_url("inv_use.php?pwd=&whichitem=9104");
	if (get_property("_timeSpinnerMinutesUsed").to_int()>7) {
		print("TimeEating failed, not enough minutes","red");
		return false;
	}
	page = run_choice(2);
	if (contains_text(page,"option value=\""+iid+"\"")) {
		print("TimeEating "+it,"blue");
		page = visit_url("choice.php?pwd=&whichchoice=1197&option=1&foodid="+iid);
		return true;
	} else {
		print("TimeEating failed, "+it+" not available","red");
		return false;
	}
}

void use_marbles(item it)
{
	if (item_amount(it) < 3) return;
	use_item((item_amount(it) - 1) / 2, it); // keep at least 1
}

void set_choice(string adventure, string choice, string purpose)
{
	if (get_property("choiceAdventure" + adventure) != choice) {
		set_property("choiceAdventure" + adventure, choice);
		if (purpose != "") print(purpose, "olive");
	}
}

void set_choice(int adventure, int choice, string purpose)
{
	set_choice(to_string(adventure), to_string(choice), purpose);
}

void call_script(string script_name)
{
	print("CALLING: " + script_name, 'orange');
	boolean temp = cli_execute("call scripts/" + script_name);
	print("FINISHED: " + script_name, 'orange');
	print();
}

void test_numberology(int number)
{
	if (have_skill($skill[Calculate the Universe]) && (get_property("_universeCalculated").to_int() < get_property("skillLevel144").to_int()))
		if (reverse_numberology() contains number) {
			boolean temp = cli_execute("numberology " + number);
		}
}

int muscle_mysticality_moxie()
{
	int m = 0;
	switch(my_primestat()) {
		case $stat[Muscle]:			m = 1; break;
		case $stat[Mysticality]:	m = 2; break;
		case $stat[Moxie]:			m = 3; break;
	}
	return m;
}

void stash_currency()
{
	put_all_display($item[Beach Buck]);
	put_all_display($item[Coinspiracy]);
	put_all_display($item[FunFunds&trade;]);
	put_all_display($item[Volcoino]);
	put_all_display($item[Wal-Mart gift certificate]);
	put_all_display($item[Rubee&trade;]);
	put_all_display($item[hobo nickel]);
	put_all_display($item[Freddy Kruegerand]);
}

void buff_crimbo2020()
{
	int nb = item_amount($item[donated booze]);
	int nc = item_amount($item[donated candy]);
	int nf = item_amount($item[donated food]);

	if ((nb <= nc) && (nb <= nf)) {
		cli_execute("maximize +booze drop, +equip lucky gold ring, +equip booze drive button, -tie");
	} else if ((nc <= nb) && (nc <= nf)) {
		cli_execute("maximize +candy drop, +equip lucky gold ring, +equip candy drive button, -tie");
	} else if ((nf <= nb) && (nf <= nc)) {
		cli_execute("maximize +food drop, +equip lucky gold ring, +equip food drive button, -tie");
	}
}
