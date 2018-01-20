var x_move = argument0;
var y_move = argument1;

with (obj_boomerang) {
    solid = true;
}
with (obj_water) {
    solid = true;
}

if (place_free(x + sign(x_move) * 16, y + sign(y_move) * 16) &&
        x == draw_x &&
        y == draw_y
    ) {
    audio_play_sound(snd_push, 0, false);
    x += sign(x_move) * 16;
    y += sign(y_move) * 16;
}

with (obj_boomerang) {
    solid = false;
}
with (obj_water) {
    solid = false;
}
