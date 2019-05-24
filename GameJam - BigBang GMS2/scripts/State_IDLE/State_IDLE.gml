Get_Input(); //Checks for input 

if (keyboard_check(vk_escape))
{
	//pauses game.
}

//Checks the player is moving up horizintally or vertically
if (XAxis !=0 || YAxis !=0)
{
	Action = MOVE;
}
else
{
	Action = IDLE;
}

//Checks players X direction and sets it to the corrisponding array value
if (XAxis > 0)
{
	Direction = RIGHT;
}

else if (XAxis < 0)
{
	Direction = LEFT;
}

//Checks players Y direction and sets it to the corrisponding array value
if (YAxis > 0)
{
	Direction = DOWN;
}

else if (YAxis < 0)
{
	Direction = UP;
}

var _direction = point_direction(0, 0, XAxis, YAxis); //Changes direction based on the key pressed
var _length = Speed * (XAxis != 0 || YAxis != 0); //length checks if the player can move, if the value is 0 no keys are being pressed

XAxis = lengthdir_x(_length, _direction);
YAxis = lengthdir_y(_length, _direction);

//Collision stuff below
if (place_meeting(x+XAxis, y, obj_Sun_Boss)) //Checks if the player is colliding with test collision object
{
	while (!place_meeting(x+sign(XAxis), y, obj_Sun_Boss)) //while the player hasn't met the object, the player can move the pixels inbetween speed to make accurate collision
	{
		x += sign(XAxis);
	}
		XAxis = 0;
}
x += XAxis

if (place_meeting(x, y+YAxis, obj_Sun_Boss))
{
	while (!place_meeting(x, y+sign(YAxis), obj_Sun_Boss))
	{
		y += sign(YAxis);
	}
	YAxis = 0;
}
y += YAxis
