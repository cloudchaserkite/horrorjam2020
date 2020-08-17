/// @description Insert description here
// You can write your code in this editor
amber = make_colour_rgb(210, 144, 43);
draw_text_ext_transformed_colour(camera_get_view_x(view_camera[0])+(5*(480/8)),camera_get_view_y(view_camera[0])+270-(1*(270/4))-(40*message_count), string_hash_to_newline(speaker),20,480,.3,.3,0,amber,amber,amber,amber,1); //draw the text at the coordinates

draw_text_ext_transformed_colour(camera_get_view_x(view_camera[0])+(5*(480/8)),camera_get_view_y(view_camera[0])+270-(1*(270/4))-(40*message_count)+8, string_hash_to_newline(messageBody),20,480,.3,.3,0,c_white,c_white,c_white,c_white,1); //draw the text at the coordinates

//draw_text_ext_transformed(camera_get_view_x(view_camera[0])+(480/2),camera_get_view_y(view_camera[0])+270-(270/8)+16, string_hash_to_newline("Press E to Continue"),3,1280,.2,.2,0);//draw the text at the coordinates
