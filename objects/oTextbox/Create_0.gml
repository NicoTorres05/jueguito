// textbox parameters
textbox_width = 286;
textbox_height = 82;
border = 8;
line_sep = 15;
line_width = textbox_width - border*2;
txtb_sprite = sTextbox
txtb_image = 0;
txtb_image_spd = 0;
txtb_snd = sndDefaultTalk;

// the text
page = 0;
page_number = 0;
text[0] = "Hola Mundo"

text_length[0] = string_length(text[0]);
draw_char = 0;
old_draw_char = 0;
text_speed = 0.5;

setup = false;

speaker_sprite[0] = noone; 

// portrait
port_x = 60;
port_y = 60;