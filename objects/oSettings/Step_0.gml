if keyboard_check_pressed(vk_f4) and window_get_fullscreen() { //if the game is fullscreen and f4 is pressed
		window_set_fullscreen(false) //exit fullscreen
} else if keyboard_check_pressed(vk_f4) { //otherwise if the game isn't fullscreen and f4 is pressed
		window_set_fullscreen(true) //enter fullscreen
}