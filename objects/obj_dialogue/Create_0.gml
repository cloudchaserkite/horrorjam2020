
image_speed = .125;
draw_set_font(fnt);
//write your messages in an array, starting at 0, like so
message[0] = "...Where...am I? I'm trying to see if even this will draw";
message[1] = "I dont recognize this hanger...";
message[2] = "I better have a look around and see if I can find anyone...";
//^^ These are the Default messages, you can use a With command to define more of these messages,
// remember to change the messenge_end value so it matches the number in the last message,
//if you have a message[4] as your last line, set message_end to 4.


message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 2; //this defines what the last message is, if we press E after this is displayed, it closes the message
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.8; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message

