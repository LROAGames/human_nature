/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	if(distance_to_object(player)<1){
		if(player.f=0){
			player.hp-=obj_calculation.attackCactusDamage
			if(player.b==0) player.b=-120
			player.f=30
		}
	}
	if(y>room_height) instance_destroy()
	if(y<0) instance_destroy()
	if(x>room_width) instance_destroy()
	if(x<0) instance_destroy()
	if(obj_mapDesert.a=1){
		speed=6
		image_angle=direction
	}
}
else{
	speed=0
}
