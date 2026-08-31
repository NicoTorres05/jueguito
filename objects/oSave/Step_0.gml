var save = ("Save.sav")

if(place_meeting(x, y, oPlayer)) && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) {
	audio_play_sound(sndSave, 10, false)
	if file_exists(save) {
		file_delete(save)
	}
	ini_open(save)
	var savedRoom = room_get_name(room);
	ini_write_string("Save1", "room", savedRoom);
	ini_write_real("Save1", "x", oPlayer.x);
	ini_write_real("Save1", "y", oPlayer.y);
	ini_close()
}