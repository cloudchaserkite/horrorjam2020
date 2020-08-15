/// @description Insert description here
// You can write your code in this editor



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
        break;
}

}




