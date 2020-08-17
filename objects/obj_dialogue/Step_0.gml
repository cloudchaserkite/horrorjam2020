/// @description Insert description here
// You can write your code in this editor
depth = -9000;
if (characters < message_length) { //if current character count is less than the amount in current message* 
    hold = keyboard_check(vk_space); //hold is true or false if we hold 'E' or not
    characters += increase * (1 + hold); //increase speed based on hold
   var flip = choose(1,2);
   if(flip == 1){}
    audio_play_sound(snd_junVoice,2,false);
    message_draw = string_copy(message[message_current], 0, characters); //copy string to current character
} 
else { //if current character is more than the amount in the current message
    if (keyboard_check_pressed(ord("E"))) { //if we press E...
        if (message_current < message_end) { //if there are more messages left to show (0 -> 6, in our case)
            message_current += 1; //increase the message by 1
            message_length = string_length(message[message_current]);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text
        }
        else { //if our messages are done (we reach 6, in our case)...
            instance_destroy(); //destroy the object
        }
    }
}