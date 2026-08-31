rightKey = keyboard_check(vk_right) or keyboard_check(ord("D"));
leftKey = keyboard_check(vk_left) or keyboard_check(ord("A"));
upKey = keyboard_check(vk_up) or keyboard_check(ord("W"));
downKey = keyboard_check(vk_down) or keyboard_check(ord("S"));






//Movement
xspd = (rightKey - leftKey) * movespd;
yspd = (downKey - upKey) * movespd;

//Collision
if place_meeting(x+xspd, y, oWall) {
xspd = 0;
}

if place_meeting(x, y+yspd, oWall) {
yspd = 0;
}

if (place_meeting(x + xspd, y, oSpikes)) {
    var inst = instance_place(x + xspd, y, oSpikes);
    
    if (inst.active) {
        xspd = 0;
    }
}

if (place_meeting(x, y + yspd, oSpikes)) {
    var inst = instance_place(x, y + yspd, oSpikes);
    
    if (inst.active) {
        yspd = 0;
    }
}


//Animate
if (can_move) {
if xspd > 0 {
	sprite_index = sPlayerLeftWalk;
} else if xspd < 0 {
	sprite_index = sPlayerRightWalk;
	
} else if yspd > 0 {
	sprite_index = sPlayerDownWalk;
	
} else if yspd < 0 {
	sprite_index = sPlayerUpWalk;
	
} else {
	image_index = 0;
	sBlink();
}

if(xspd != 0 or yspd != 0) {
	image_speed = 1;
} 


x += xspd;
y += yspd;
}

// run
if keyboard_check(vk_shift) or keyboard_check(ord("X")) {
	image_speed = 2;
	movespd = run_spd;
} else {
	movespd = walk_spd;
}
