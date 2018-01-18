var draw_x = argument0;
var draw_y = argument1;
var map_gridd = argument2;

var hero_x = obj_hero.x div 256;
var hero_y = obj_hero.y div 192;

for (var col = 0; col < ds_grid_width(map_gridd); col++) {
    for (var row = 0; row < ds_grid_height(map_gridd); row++) {
        if (ds_grid_get(map_gridd, col, row)) {
            draw_sprite(spr_map_square, 0, draw_x + 5 * col, draw_y + 3 * row);
            if (col == hero_x && row == hero_y) {
               draw_sprite(spr_map_indicator, 0, draw_x + 5 * col, draw_y + 3 * row);
            }
        }
    }
}
