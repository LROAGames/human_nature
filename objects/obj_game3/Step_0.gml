/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	if(o2<=0){
		if(b<=0){
			obj_player.hp-=1
			b=60
		}
		b-=1;
	}
	else o2-=1
	if(o2>3600) o2=3600
	if(score>=100&&a=0){
		instance_create_depth(obj_player.x+500,obj_player.y+500,-2,obj_seaEnemyBoss)
		a=1
	}
	if(a!=2){
		alarm[1]=600
	}
}
else{
	alarm[0]+=1
	alarm[1]+=1
}