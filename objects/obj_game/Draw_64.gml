/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
draw_set_color(c_white)
draw_set_font(fnt_chs_zipx)
draw_text(10,10,"HP:")
draw_text(50,10,obj_player.hp)
draw_text(10,40,"CD:")
draw_text(50,40,obj_player.coldDown)
draw_text(10,70,"CD2:")
draw_text(60,70,obj_player.coldDown2)
draw_text(10,100,"score:")
draw_text(90,100,score)
draw_text(10,130,"bullet:")
draw_text(100,130,obj_player.bullet)
if(a=1){
	draw_text(713,40,"BossHP:")
	draw_text(803,40,obj_enemyBallBoss.hp)
}
if(a=2){
	draw_text(683,40,"Find the exit and then press Z in it")
}
