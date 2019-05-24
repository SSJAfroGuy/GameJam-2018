rand_Bullet = (1+ irandom(4));
	
if (rand_Bullet = 1)
{
potentialObject = instance_create_depth(x, y, 0, obj_GenericBullet_01)
potentialObject.direction = random(360);
}
else if (rand_Bullet = 2)
{
potentialObject = instance_create_depth(x, y, 0, obj_Icicle_Bullet)
potentialObject.direction = random(360);
}
	
else if (rand_Bullet = 3)
{
potentialObject = instance_create_depth(x, y, 0, obj_Laser_Orb)
potentialObject.direction = random(360);
}
	
else if (rand_Bullet = 4)
{
potentialObject = instance_create_depth(x, y, 0, obj_Star_Bullet)
potentialObject.direction = random(360);
}
	
else if (rand_Bullet = 5)
{
potentialObject = instance_create_depth(x, y, 0, obj_Bullet_Meteor)
potentialObject.direction = random(360);
}
Action = 4;