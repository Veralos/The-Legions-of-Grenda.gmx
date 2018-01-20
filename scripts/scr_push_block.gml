var x_move = argument0;
var y_move = argument1;

var block = instance_place(x + sign(x_move), y + sign(y_move), obj_block);
if (block != noone) {
    with (block) {
        scr_move_block(x_move, y_move);
    }
}
