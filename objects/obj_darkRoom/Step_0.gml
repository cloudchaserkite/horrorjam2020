/// @description Insert description here
// You can write your code in this editor
if (surface_exists(surf)){
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0.8)
	draw_rectangle(0,0,room_width,room_height,0);
	
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	with obj_itemPickup{
	#region //obj_itemPickup Redraw
	
		var vx = camera_get_view_x(view_camera[0])+64;
		var vy = camera_get_view_y(view_camera[0])+64;
		var vw = camera_get_view_x(view_camera[0])+480-64;
		var vh = camera_get_view_y(view_camera[0])+270-64;
			if pickupPrompt == true{
				obj_player.canMove = false;
				draw_set_halign(fa_center);
				draw_text_ext_transformed_colour(camera_get_view_x(view_camera[0])+(480/2),camera_get_view_y(view_camera[0])+270-(270/8), "There is a " + string(itemName) + ", take it?",3,1280,.4,.4,0,c_white,c_white,c_white,c_white,1); //draw the text at the coordinates
				draw_set_halign(fa_left);
				draw_text_transformed(vx,vy+128,"Yes",.4,.4,0);
				draw_text_transformed(vx,vy+128+16,"No",.4,.4,0);


			switch (answer) {
				case "Yes":
					draw_text_transformed(vx-8,vy+128,">",.4,.4,0);
		
					break;
				case "No":
					draw_text_transformed(vx-8,vy+128+16,">",.4,.4,0);
					break;}}
	#endregion
					}
	with obj_player{
	
	#region // obj_playerRedraw
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
	
	#endregion
	
	
	}
	with obj_mouse{
		#region //obj_mouse Redraw
	draw_circle(mouse_x,mouse_y,30,false);
	draw_circle(mouse_x,mouse_y,24,false);
	draw_triangle(mouse_x,mouse_y-24,mouse_x,mouse_y,obj_player.x,obj_player.y,false);
	draw_triangle(mouse_x,mouse_y+24,mouse_x,mouse_y,obj_player.x,obj_player.y,false);
	draw_triangle(mouse_x-24,mouse_y,mouse_x,mouse_y,obj_player.x,obj_player.y,false);
	draw_triangle(mouse_x+24,mouse_y,mouse_x,mouse_y,obj_player.x,obj_player.y,false);
	#endregion
	}
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	
}

else{

	surf = surface_create(room_width,room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	surface_reset_target();


}