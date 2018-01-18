var x_move = argument0;
var y_move = argument1;

with (obj_boomerang) {
    solid = true;
}

var block = instance_place(x + sign(x_move), y + sign(y_move), obj_block);
if (block != noone) {
    with (block) {
        if (place_free(x + sign(x_move) * 16, y + sign(y_move) * 16)) {
            audio_play_sound(snd_push, 0, false);
            x += sign(x_move) * 16;
            y += sign(y_move) * 16;
        }
    }
}

with (obj_boomerang) {
    solid = false;
}
