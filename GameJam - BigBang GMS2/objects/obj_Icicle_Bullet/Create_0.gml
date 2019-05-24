/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4C596463
/// @DnDArgument : "speed" "random(15-30)"
speed = random(15-30);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 634D7926
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 211C4098
/// @DnDArgument : "angle" "(direction)"
/// @DnDArgument : "angle_relative" "1"
image_angle += (direction);