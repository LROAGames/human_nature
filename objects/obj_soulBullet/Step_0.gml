/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	image_blend=c_black
	speed=24
	depth=-y
	if(instance_exists(obj_enemyBallBoss)){
		if(distance_to_point(obj_enemyBallBoss.x,obj_enemyBallBoss.y)<150){
			obj_enemyBallBoss.hp-=max(1,obj_calculation.soulBulletDamage-obj_enemyBallBoss.defence)
			alarm[0]=1
		}
	}
	if(instance_exists(obj_desertEnemyBoss)){
		if(distance_to_point(obj_desertEnemyBoss.x,obj_desertEnemyBoss.y)<150){
			obj_desertEnemyBoss.hp-=max(1,obj_calculation.soulBulletDamage-obj_desertEnemyBoss.defence)
			alarm[0]=1
		}
	}
	if(instance_exists(obj_seaEnemyBoss)){
		if(distance_to_point(obj_seaEnemyBoss.x,obj_seaEnemyBoss.y)<100){
			obj_seaEnemyBoss.hp-=max(1,obj_calculation.soulBulletDamage-obj_seaEnemyBoss.defence)
			alarm[0]=1
		}
	}
	if(y>(player.y+camera_get_view_height(0))) instance_destroy()
	if(y<(player.y-camera_get_view_height(0))) instance_destroy()
	if(x>(player.x+camera_get_view_width(0))) instance_destroy()
	if(x<(player.x-camera_get_view_width(0))) instance_destroy()
}
else{
	speed=0
	alarm[0]+=1
}