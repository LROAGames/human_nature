/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_chooseRole.role=="cowboy"){
	draw_text(10,130,"bullet:")
	draw_text(100,130,player.bullet)
}
else{
	draw_text(10,130,"energy:")
	draw_text(100,130,player.energy)
}
if(obj_chooseRole.role=="doctor"){
	draw_text(150,10,"wound:")
	draw_text(230,10,obj_doctor.reduceHp)
}
draw_set_color(c_white)
draw_set_font(fnt_chs_zipx)
draw_text(10,10,"HP:")
draw_text(50,10,player.hp)
draw_text(10,40,"CD:")
draw_text(50,40,int64((player.coldDown+59)/60))
draw_text(10,70,"CD2:")
draw_text(60,70,int64((player.coldDown2+59)/60))
draw_text(10,100,"score:")
draw_text(90,100,score)
if(a=1){
	draw_text(713,40,"BossHP:")
	draw_text(803,40,obj_enemyBallBoss.hp)
}
if(a=2){
	draw_text(683,40,"Find the exit and then press Z in it")
}
