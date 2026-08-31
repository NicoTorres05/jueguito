function sBlink() {

    if (!variable_instance_exists(id, "blinking")) {
        blinking = false;
        bf = 0;
        bc = 0;
        bt = irandom_range(180, 300);
    }

    if (!blinking) {
        bt--;

        if (bt <= 0) {
            blinking = true;
            bf = 0;
            bc = 0;
        }
    }
    else {
        bc++;

        if (bc >= 3) {
            bc = 0;
            bf++;

            if (bf >= 4) {
                blinking = false;
                bf = 0;
                bt = irandom_range(180, 300);
            }
        }
    }

    image_index = bf;
}