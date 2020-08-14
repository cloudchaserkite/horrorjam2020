/// @description Insert description here
// You can write your code in this editor


keyW = keyboard_check(ord("W"));
keyA = keyboard_check(ord("A"));
keyS = keyboard_check(ord("S"));
keyD = keyboard_check(ord("D"));

if keyW{y-=1;}
if keyS{y+=1;}
if keyA{x-=1; image_xscale = -1;}
if keyD{x+=1; image_xscale = 1;}
