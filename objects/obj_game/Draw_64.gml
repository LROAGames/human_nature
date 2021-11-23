/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
draw_set_color(c_white)
draw_set_font(fnt_chs_zipx)
draw_text(10,10,"HP:")
draw_text(50,10,obj_player.hp)
draw_text(10,40,"冷却:")
draw_text(70,40,obj_player.coldDown)
draw_text(10,70,"分数:")
draw_text(70,70,score)
if(a=1){
	draw_text(713,40,"BossHP:")
	draw_text(803,40,obj_enemyBallBoss.hp)
}
