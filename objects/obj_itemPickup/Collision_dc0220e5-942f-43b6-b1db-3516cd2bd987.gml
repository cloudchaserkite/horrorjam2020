/// @description Insert description here
// You can write your code in this editor


//check if player has enough room
if mouse_check_button_pressed(mb_left){
			if obj_player.invFull == true
			{
			var dia = instance_create_depth(x,y,-300,obj_dialogue);
			with dia{
			message[0] = "There's something on the ground, but I can't hold any more items.";
			message[1] = "I'll come back for this when I can carry it.";
			message_end = 1;
	
			}
	
			}

			else{
			
			pickupPrompt = true;
			
			
			}


}