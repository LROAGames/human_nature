/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(room==room_volcano){
	instance_create_depth(x,y,3,obj_speedEnemyBall)
	instance_create_depth(x,y,0,obj_lava)
	if(alarm[1]%180==0){
		for(var i=0;i<6;i+=1){
			with(instance_create_depth(x,y,0,obj_enemyBulletRedyy)){
				speed=6
				direction=other.direction+i*60
				image_angle=direction
			}
		}
	}
	alarm[1]=360
}