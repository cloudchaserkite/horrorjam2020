/// @description Insert description here
// You can write your code in this editor



vx = camera_get_view_x(view_camera[0])+16+8;
vy = camera_get_view_y(view_camera[0])+16+8;
vw = camera_get_view_x(view_camera[0])+480-16-8;
vh = camera_get_view_y(view_camera[0])+270-16-8;

draw_sprite_ext(spr_itemCell,0,vx,vh,1,1,0,c_white,.5);//Item Held

draw_sprite_ext(spr_itemCell,0,vw-64-16,vh,1,1,0,c_white,.5);//Item Slot One
draw_sprite_ext(spr_itemCell,0,vw-32-8,vh,1,1,0,c_white,.5);//Item Slot Two
draw_sprite_ext(spr_itemCell,0,vw,vh,1,1,0,c_white,.5);//Item Slot Three


if inventory[? "invOne"] != undefined{
	
	var itemID = inventory[? "invOne"];
	switch (itemID) {
	    case "Rune":
		draw_sprite_ext(spr_runeItem,0,vw-64-16,vh,1,1,0,c_white,1);//Item Slot One
	        // code here
	        break;
	    default:
	        // code here
	        break;
	}

}
if inventory[? "invTwo"] != undefined{

}
if inventory[? "invThree"] != undefined{

}




