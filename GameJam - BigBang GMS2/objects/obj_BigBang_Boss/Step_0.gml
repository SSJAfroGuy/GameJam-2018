image_blend = c_white; //Default colour - should change after health gates

//Kills the boss
if (boss_HP_BigBang <= 0)
{
	Particle_BigBangBang(x, y, 50)
	draw_text(x, y, "YOU DID IT, WELL DONE");
	instance_destroy();		
}

if (Action == 1 && Laser_Orb_Count > 0)
{
	//Sets the direction patterns, this is how the "bullet patterns" are generated
	potentialObject = instance_create_depth(x, y, 0, obj_Laser_Orb);
	Laser_Orb_Count -= 1;
}

if (Action == 2 && Generic_Bullet_Count > 0)
{
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir1;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir2;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir3;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir4
	Generic_Dir1 += 7;
	Generic_Dir2 += 5;
	Generic_Dir3 -= 7;
	Generic_Dir4 -= 5;
	Generic_Bullet_Count -= 1;
}

if (Action == 3 && Icicle_Count > 0)
{
	potentialObject = instance_create_depth(x, y, 0, obj_Icicle_Bullet)
	potentialObject.direction = random(360);
	potentialObject = instance_create_depth(x, y, 0, obj_Icicle_Bullet)
	potentialObject.direction = random(360);
	potentialObject = instance_create_depth(x, y, 0, obj_Icicle_Bullet)
	potentialObject.direction = random(360);
	potentialObject = instance_create_depth(x, y, 0, obj_Icicle_Bullet)
	potentialObject.direction = random(360);
	Icicle_Count -= 1;
}

if (Action == 4)
{
alarm_set(3, 10)
Action = 5;
}

if (Action == 5)
{
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir1;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir2;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir3;
	potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
	potentialObject.direction = Generic_Dir4
	Generic_Dir1 += 10;
	Generic_Dir2 += 10;
	Generic_Dir3 -= 10;
	Generic_Dir4 -= 10;
}