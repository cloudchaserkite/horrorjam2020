/// @description Insert description here
// You can write your code in this editor
// init position, between mouse and player

#region //tether Code
dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
len = point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y);

x = obj_player.x +lengthdir_x(len/2,dir);
y = obj_player.y +lengthdir_y(len/2,dir);

// keeping circular distance to player
dir = point_direction(obj_player.x,obj_player.y,x,y);
len = point_distance(obj_player.x,obj_player.y,x,y);
maxdist = 60;

if len > maxdist
{
x = obj_player.x +lengthdir_x(maxdist,dir);
y = obj_player.y +lengthdir_y(maxdist,dir);
}
#endregion


if mouseMode == "normal"{
if place_meeting(x,y,obj_plank){sprite_index = spr_Eye;}
else if place_meeting(x,y,obj_prop){sprite_index = spr_Eye;}
else if place_meeting(x,y,obj_itemPickup){sprite_index = spr_hand;}


else{sprite_index = spr_mouseCursor;}
}

if mouseMode == "useItem"{
	var itemCheck = obj_player.inventory[? "invHeld"];
	
	switch (itemCheck) {
	    case "Rune":
		itemID = "Rune";
	        // code here
	        break;
	    default:
	        // code here
	        break;
	}
	if mouse_check_button_pressed(mb_left){
	var check = instance_create_depth(obj_mouse.x,obj_mouse.y,-200,obj_itemUseCheck);
	with(check){itemID = other.itemID;}}
	
	


}

if mouse_check_button_pressed(mb_right){mouseMode = "normal";
	itemID = "none";
	}