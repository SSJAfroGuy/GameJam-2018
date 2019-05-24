Particle_LaserTrail(x,y, 10);

if (image_xscale < 7.5)
{
	direction = point_direction(x, y, obj_Main_player.x, obj_Main_player.y);
}

if (image_xscale <= 0 || image_yscale <= 0)
{
	instance_destroy();
}

image_xscale -= 0.010;
image_yscale -= 0.010;
speed += 0.007;