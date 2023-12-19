import <GoodLib.ash>;

void main()
{
	boolean [item] toUse = $items[cyclops eyedrops, Polka Pop, celestial carrot juice, eagle feather, tiny dancer, recording of The Ballad of Richie Thingfinder, Gene Tonic: Dude, Gene Tonic: Penguin, holly-flavored Hob-O, eyedrops of the ocelot];

	foreach it in toUse use_item(1, it);

	print("Done!", "blue");
}
