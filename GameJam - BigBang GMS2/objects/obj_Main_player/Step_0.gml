/// @Description This is the step event for the player - will control movment and other aspects
script_execute(State);

image_blend = c_white;

//changes the used sprite based on 2D array created
sprite_index = View[Direction,Action];

while (keyboard_check(vk_space) = true && Shoot == false)
{
	potentialObject = instance_create_depth(x, y, 0, obj_Player_Bullet)
	potentialObject.direction = 90;
	alarm_set(0, 10);
	Shoot = true;
}

image_angle += (100 - (Player_HP));

if (Player_HP <= 0 && killed = false)
{
	killed = true
	Particle_BigBangBang(x, y, 50)
	alarm_set(1, 270)	
}

if (x <= 64) x = 64;
if (x >= room_width - 64) x = room_width - 64;
