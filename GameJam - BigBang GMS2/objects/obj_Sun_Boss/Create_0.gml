boss_HP = 901; //HP for the boss - Will start at 1000 (1000 bullets need to hit it) when it hits 0 "BIGBANG" which has more HP will spawn
speed = 0; //Speed the boss can move at (Starts off stationary)
Action = 1; //Variable to determine if the boss can change phases or not - Also tells current phase number

//Declares all bullet pattern types (allows them to be turned on/off at will)
Pattern_Generic = true; //Generic pattern 
Pattern_Mercury = false; //Meteors start appearing
Pattern_Neptune = false; //More generic bullets
Pattern_Earth = false;
Pattern_Orb = false;

	//Declares the variables for the generic bullet patterns.
	Generic_Dir1 = 0;
	Generic_Dir2 = 0;
	Generic_Dir3 = 180;
	Generic_Dir4 = 180;
	Generic_Dir5 = 180;
	Generic_Dir6 = 0;
	Generic_Dir7 = 0;
	Generic_Dir8 = 0;
	Generic_Dir9 = 0;
	Generic_Dir10 = 0;
	Generic_Dir11 = 0;
	Generic_Dir12 = 0;
	
	//Declares the variables for the mercury bullet pattern (currently non-existant)
	Mecury_Dir1 = 270;
	
	//Declares variables for Earth pattern
	Earth_Dir1 = 0;
	Earth_Dir2 = 180;
	Earth_Dir3 = 90;
	Earth_Dir4 = 270;
	
	
