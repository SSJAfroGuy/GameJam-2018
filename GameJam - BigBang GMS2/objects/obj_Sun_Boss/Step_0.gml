//Normalises the colouring for the boss
obj_Sun_Boss.image_blend = c_white; //Default colour - should change after health gates

//Kills the boss
if (boss_HP <= 0) //If boss HP = 0 kill boss
{
	instance_destroy();
	potentialObject = instance_create_depth(x, y, 0, obj_BigBang_Boss)
}

//Phase 1 - Generic attacks until 900 HP
if (Pattern_Generic == true)
{
	//Sets the direction patterns, this is how the "bullet patterns" are generated
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir1;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir2;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir3;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir4
	Generic_Dir1 += 5;
	Generic_Dir2 += 10;
	Generic_Dir3 -= 5;
	Generic_Dir4 -= 10;
	Pattern_Generic = false;
	alarm_set(0, 7);
}

if (boss_HP <= 900 && Action = 1) //When boss is at 900HP start next phase
{	
	Particle_SolarFlare(x,y, 70);
	Action = 2
	Pattern_Mercury = true;
}
 
if (Pattern_Mercury == true && Action <= 3)
{
	//Meteors added - random speed and size - Gravity effects them.
	potentialObject = instance_create_depth(x, y, 0, obj_Bullet_Meteor)
	potentialObject.direction = random (0-360);
	potentialObject.speed = random(0-30)
	rand_Mercury_Scale = (3 + random(3)); //(random nunber between 3 and 6)
	potentialObject.image_xscale = rand_Mercury_Scale;
	potentialObject.image_yscale = rand_Mercury_Scale;	
	
	//generic bullets added
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir5;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir6;
	Generic_Dir5 += 3;
	Generic_Dir6 -= 3;
	
	Pattern_Mercury = false;
	alarm_set(1, 15);
}


//Phase 2 - Mercury phase - Drops meteors + generic bullets until 800 HP


if (boss_HP = 800 && Action = 2) //When boss is at 900HP start next phase
{	
	Particle_SolarFlare2(x,y, 24);
	Action = 3
	Pattern_Neptune = true;
}

if (Pattern_Neptune == true)
{
	//generic bullets added
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir7;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir8;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir9;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir10;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir11;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir12;
	Generic_Dir7  += 6;
	Generic_Dir8  -= 6;
	Generic_Dir9  += 12;
	Generic_Dir10 -= 12;
	Generic_Dir11 += 24;
	Generic_Dir12 -= 24;                   
	Pattern_Neptune = false;
	alarm_set(2, 5);
}

if (boss_HP = 700 && Action == 3)
{
	Action = 4;
	Particle_SolarFlare2(x, y, 48);
	Pattern_Earth = true;
}

if (Pattern_Earth == true)
{
	//generic bullets added
	potentialObject = instance_create_depth(x, y, 0, obj_Star_Bullet)
	potentialObject.direction = Earth_Dir1;
	potentialObject = instance_create_depth(x, y, 0, obj_Star_Bullet)
	potentialObject.direction = Earth_Dir2;
	potentialObject = instance_create_depth(x, y, 0, obj_Star_Bullet)
	potentialObject.direction = Earth_Dir3;
	potentialObject = instance_create_depth(x, y, 0, obj_Star_Bullet)
	potentialObject.direction = Earth_Dir4;
	Earth_Dir1  -= (5 * (boss_HP/100));             
	Earth_Dir2  -= (5 * (boss_HP/100));             
	Earth_Dir3  -= (5 * (boss_HP/100));             
	Earth_Dir4  -= (5 * (boss_HP/100));            
	Pattern_Earth = false;
	alarm_set(3, 5);
}

if (boss_HP = 600 && Action == 4)
{
	Action = 5;
	Particle_SolarFlare2(x, y, 96);
	potentialObject = instance_create_depth(x, y, 0, obj_BigBang_Boss)
	instance_destroy();
}

//Phase 1 - Mars Phase - Generic bullet intensity up + fire attacks (Mars Bullets)
//Phase 1 - Jupiter + pluto Phase - REALLY Big attacks, very small, increases scale for all attacks decreasing speed - Ice spears home in to force movment
//Phase 1 - Saturn - RINGS I want RINGS
//Phase 1 - Uranus - Generic bullet patterns - icicles included (cold planet)
//Phase 1 - neptune - Icicles EVERYWHERE
//End Phase - Bigbang final attacks