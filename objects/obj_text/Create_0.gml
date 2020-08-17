/// @description Insert description here
// You can write your code in this editor
audio_play_sound(textNotification,2,false);
message_count = 0
with(obj_text){message_count += 1}
speaker = "Speaker";
messageBody = "I'm testing to see hown much space on the screen this will take.";
x = camera_get_view_x(view_camera[0])+(5*(480/8));
y = camera_get_view_y(view_camera[0])+270-(1*(270/4))-(40*message_count);

