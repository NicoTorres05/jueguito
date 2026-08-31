if image_index = 0 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) {
	image_index = 1;
} 

else if image_index = 1 and (keyboard_check_pressed(vk_enter) or  keyboard_check_pressed(ord("Z"))) {
	image_index = 2;
} 

else if image_index = 2 and (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))) {
	audio_play_sound(sndSelect,10, false)
	image_index = 3;
}

else if image_index = 3 and (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) {
	audio_play_sound(sndSelect,10, false)
	image_index = 2;
} 

else if image_index = 3 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) {
	image_index = 0;
} 

else if image_index = 2 and (keyboard_check_pressed(vk_enter) or  keyboard_check_pressed(ord("Z"))) {
	room_goto(asset_get_index(startRoom));
	var instantiated = instance_create_layer(startX, startY, "Player", oPlayer);

}