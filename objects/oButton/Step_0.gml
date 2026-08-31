if (!pressed && place_meeting(x, y, oPlayer)) {
    audio_play_sound(sndButton, 10, false);
    pressed = true;
    
    with (oSpikes) {
        if (pID == other.pID) {
            active = false;
        }
    }
}