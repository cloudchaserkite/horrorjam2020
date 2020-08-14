/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left) and !instance_exists(obj_dialogue){

var dia = instance_create_depth(x,y,-200,obj_dialogue);
with(dia){message[0] = "A set of planks blocks the way.";
	message[1] = "I don't think I can get past this."
	message_end = 1;}


}