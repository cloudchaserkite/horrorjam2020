/// @description Insert description here
// You can write your code in this editor


if pickupPrompt == true{
switch (answer) {
    case "Yes":
        if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("S")){
		answer = "No";
		}
				
		if keyboard_check_pressed(ord("E")){
			with obj_player{
			if inventory[? "invOne"] == "nothing"{
			inventory[? "invOne"] = other.itemName;
			pickupPrompt = false;
			canMove = true;
			
			break;
			
			}
			
			else if inventory[? "invTwo"] == "nothing"{
			inventory[? "invTwo"] = other.itemName;
			pickupPrompt = false;
			canMove = true;
			
			break;
			
			}
			
			else if inventory[? "invThree"] == "nothing"{
			inventory[? "invThree"] = other.itemName;
			pickupPrompt = false;
			canMove = true;
			
			break;
			
			}	
				
				
				
			}
			
			
			
			
			instance_destroy();
			pickupPrompt = false;}
        break;
   case "No":
        if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("S")){
		answer = "Yes";
		}
		if keyboard_check_pressed(ord("E")){pickupPrompt = false;obj_player.canMove = true;}
        break;

}
}