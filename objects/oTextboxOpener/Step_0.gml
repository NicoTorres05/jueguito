if place_meeting(x,y,oPlayer) and oPlayer.can_move && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) {
	var instantiated = instance_create_depth(0,0, -998, oTextbox);
	
	instantiated.text = text;
	instantiated.port_x = port_x;
	instantiated.port_y = port_y;
	instantiated.txtb_snd = txtb_snd
	instantiated.speaker_sprite = speaker_sprite;	
}