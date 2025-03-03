var sword_hp = 0;
var orb_hp = 0;
var shock_hp = 0;

if(instance_exists(obj_swordfighter)) sword_hp = obj_swordfighter.enemy_hp;
if(instance_exists(obj_orbmage)) orb_hp = obj_orbmage.enemy_hp;
if(instance_exists(obj_shocksweeper)) shock_hp = obj_shocksweeper.enemy_hp;
draw_sprite_stretched(spr_health, 0, 396, 656, 490 * (sword_hp + orb_hp + shock_hp) / 30 , 16);
draw_sprite(spr_bar_boss, 0, 390, 650);