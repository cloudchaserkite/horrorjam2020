/// @description Insert description here
// You can write your code in this editor
draw_self();
if mouseMode = "useItem"{
switch (itemID) {
    case "Rune":
        if sprite_index != spr_runeItem{sprite_index = spr_runeItem; 
			if mouse_check_button_pressed(mb_right){mouseMode = "normal";}
			
			image_yscale = .5;
			image_xscale = .5;}
        break;
    default:
        // code here
        break;
}}

else if mouseMode = "normal"{
sprite_index = spr_mouseCursor; 
image_yscale = 1;
image_xscale = 1;
}