/// @description Insert description here
// You can write your code in this editor
if(obj_chooseRole.role=="cowboy"){
	draw_text(10,130,"bullet:")
	draw_text(100,130,player.bullet)
}
else{
	draw_text(10,130,"energy:")
	draw_text(100,130,player.energy)
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
draw_text(10,160,"O2:")
draw_text(50,160,o2)
if(a=1){
	draw_text(713,40,"BossHP:")
	draw_text(803,40,obj_seaEnemyBoss.hp)
}