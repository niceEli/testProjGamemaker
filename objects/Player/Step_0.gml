/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 45F9EFDF
/// @DnDArgument : "xvel" "vx"
/// @DnDArgument : "yvel" "vy"
/// @DnDArgument : "object" "Player"
/// @DnDSaveInfo : "object" "Player"
move_and_collide(vx, vy, Player,4,0,0,-1,-1);

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 75480EA0
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D24EB14
/// @DnDArgument : "expr" "0.098"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "vy"
vy += 0.098;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 229CE777
/// @DnDArgument : "key" "vk_up"
var l229CE777_0;
l229CE777_0 = keyboard_check(vk_up);
if (l229CE777_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48E147D5
	/// @DnDParent : 229CE777
	/// @DnDArgument : "expr" "-0.5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vy"
	vy += -0.5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 191A4AFD
/// @DnDArgument : "key" "vk_left"
var l191A4AFD_0;
l191A4AFD_0 = keyboard_check(vk_left);
if (l191A4AFD_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F14CB82
	/// @DnDParent : 191A4AFD
	/// @DnDArgument : "expr" "-0.2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vx"
	vx += -0.2;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 485F589F
/// @DnDArgument : "key" "vk_right"
var l485F589F_0;
l485F589F_0 = keyboard_check(vk_right);
if (l485F589F_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5062587D
	/// @DnDParent : 485F589F
	/// @DnDArgument : "expr" "0.2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vx"
	vx += 0.2;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A6F445F
/// @DnDArgument : "code" "/// @description Super Skibidi$(13_10)$(13_10)$(13_10)if (vx <= -maxSpeed){$(13_10)	vx = -maxSpeed;$(13_10)}$(13_10)if (vx >= maxSpeed){$(13_10)	vx = maxSpeed;$(13_10)}$(13_10)if (vy <= -maxSpeed){$(13_10)	vy = -maxSpeed;$(13_10)}$(13_10)if (vy >= maxSpeed){$(13_10)	vy = maxSpeed;$(13_10)}$(13_10)"
/// @description Super Skibidi


if (vx <= -maxSpeed){
	vx = -maxSpeed;
}
if (vx >= maxSpeed){
	vx = maxSpeed;
}
if (vy <= -maxSpeed){
	vy = -maxSpeed;
}
if (vy >= maxSpeed){
	vy = maxSpeed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 329941EB
/// @DnDArgument : "key" "vk_escape"
var l329941EB_0;
l329941EB_0 = keyboard_check_pressed(vk_escape);
if (l329941EB_0)
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 433A5181
	/// @DnDParent : 329941EB
	game_end();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 25A2E641
/// @DnDArgument : "key" "ord("R")"
var l25A2E641_0;
l25A2E641_0 = keyboard_check_pressed(ord("R"));
if (l25A2E641_0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5558DF65
	/// @DnDParent : 25A2E641
	room_restart();
}