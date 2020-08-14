/// @description Insert description here
// You can write your code in this editor
// init position, between mouse and player
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

if place_meeting(x,y,obj_plank){sprite_index = spr_Eye;}


else{sprite_index = spr_mouseCursor;}
