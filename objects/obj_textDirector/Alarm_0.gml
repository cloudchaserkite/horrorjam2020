/// @description Insert description here
// You can write your code in this editor
	
	var text = instance_create_depth(x,y,-900,obj_text);
	with text{
	var current = other.message_current;
	messageBody = other.message[current];
	speaker = other.speaker[current];
	
	
	}
	if message_current < message_end{
	message_current += 1;
	
	alarm[0] = 4 * room_speed;}
	
	if message_current == message_end{
	alarm[1] = 10 * room_speed;
	
	}
