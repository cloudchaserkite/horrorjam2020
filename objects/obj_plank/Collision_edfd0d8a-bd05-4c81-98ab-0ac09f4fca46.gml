/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left) and !instance_exists(obj_dialogue){

var dia = instance_create_depth(x,y,-200,obj_dialogue);

var flip = irandom_range(1,2);
switch (flip) {
    case 1:
		with(dia){message[0] = "A set of planks blocks the way.";
		message[1] = "I don't think I can get past this."
		message_end = 1;}
        break;
	 case 2:
        with(dia){message[0] = "Some planks and garbage.";
		message[1] = "I don't think there's anything of interest here."
		message_end = 1;}
        break;
    default:
       with(dia){message[0] = "Nothing of interest here.";
		
		message_end = 0;}
        break;
	
	
	
	
}}


