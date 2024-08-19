/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	if(score>=100&&a=0){
		instance_create_depth(player.x+500,player.y+500,-2,obj_desertEnemyBoss)
		a=1
	}
}
else{
	alarm[0]+=1
}