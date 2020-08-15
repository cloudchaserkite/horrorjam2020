/// @description Insert description here
// You can write your code in this editor

nextEmpty = ds_map_find_value(inventory,"nothing");
keyW = keyboard_check(ord("W"));
keyA = keyboard_check(ord("A"));
keyS = keyboard_check(ord("S"));
keyD = keyboard_check(ord("D"));
keyShift = keyboard_check(vk_shift);

		if canMove == true{
					if keyShift{
					if keyW{y-=2; if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}
					if keyS{y+=2;if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}
					if keyA{x-=2; image_xscale = -1;if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}
					if keyD{x+=2; image_xscale = 1;if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}

					}

					else{
	
	
					if keyW{y-=1;if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}
					if keyS{y+=1;if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}
					if keyA{x-=1; image_xscale = -1;if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}
					if keyD{x+=1; image_xscale = 1;if !audio_is_playing(snd_step){audio_play_sound(snd_step,1,false);}}
		
	
	
		}}

if obj_mouse.x > x{image_xscale = 1;}
if obj_mouse.x < x{image_xscale = -1;}



//defining a full inventory

if inventory[? "invOne"] != "nothing" and inventory[? "invTwo"] != "nothing"
and inventory[? "invThree"] != "nothing"{
invFull = true;

}

else {invFull = false;}


