import <GoodLib.ash>;

void main()
{
	foreach loc in $locations[] {
		if (loc.turns_spent > 0) print_html(loc + ": " + loc.turns_spent);
	}

	print("Done!", "blue");
}
