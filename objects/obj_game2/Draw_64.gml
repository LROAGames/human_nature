/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_text(10,10,"hp:")
draw_text(40,10,obj_player.hp)
draw_text(10,40,"coldDown:")
draw_text(100,40,obj_player.coldDown)
draw_text(10,70,"score:")
draw_text(70,70,score)
if(a=1){
	draw_text(713,40,"BossHP:")
	draw_text(793,40,obj_desertEnemyBoss.hp)
}
if(a=2){
	draw_text(683,40,"Find the lake and then press Z in the lake")
}