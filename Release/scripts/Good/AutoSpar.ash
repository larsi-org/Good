import <GoodLib.ash>;

void main()
{
	print("Welcome to Larsi's AutoSpar.ash", 'green');

	visit_url("place.php?whichplace=town_wrong&action=townwrong_boxingdaycare");
	run_choice(3);                                 // Enter the Boxing Daycare
	while (my_adventures() > 2) run_choice(4);     // spar
	run_choice(5);                                 // Return to the Lobby
	run_choice(4);                                 // Leave

	print("Done!", "blue");
}
