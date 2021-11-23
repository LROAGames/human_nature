/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_font(fnt_chs_zipx)
draw_text(10,10,"HP:")
draw_text(40,10,obj_player.hp)
draw_text(10,40,"冷却:")
draw_text(60,40,obj_player.coldDown)
draw_text(10,70,"分数:")
draw_text(60,70,score)
draw_text(10,100,"O2:")
draw_text(40,100,o2)