/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_pause.stop==0){
	depth=0
	angry=obj_summoner.angry
	if(alarm[0]<0) alarm[0]=1
	if(beatenEffectTime>0) image_blend=c_dkgray
	else if(angry==1) image_blend=c_red
	else image_blend=c_white
	if(beatenEffectTime>0){
		beatenEffectTime-=1
	}
	if(distance_to_object(obj_summoner)>400){
		x=obj_summoner.x
		y=obj_summoner.y
	}
	image_angle=direction
	image_alpha=alarm[0]/max(1000,2000*level)+0.2
	speed=5
	if(alarm[0]%attackSpeed==0){
		if(angry==1&&obj_summoner.energy>=0.5){
			obj_summoner.energy-=0.5
		} 
		direction=point_direction(x,y,obj_summoner.x-100+irandom(200),obj_summoner.y-100+irandom(200))
		for(var i=0;i<24;i++){
			if(level==1&&i%6==0){
				with(instance_create_depth(x,y,0,(angry==0?obj_bullet: obj_shot))){
					direction=i/6*90+other.direction
					image_angle=direction
				}
			}
			if(level==2&&i%4==0){
				with(instance_create_depth(x,y,0,(angry==0?obj_bullet: obj_shot))){
					direction=i/4*60+other.direction
					image_angle=direction
				}
			}
			if(level==3&&i%3==0){
				with(instance_create_depth(x,y,0,(angry==0?obj_shot: obj_multiShot))){
					obj_calculation.multiShotDamage=5
					direction=i/3*45+other.direction
					image_angle=direction
				}
			}
		}
		with(instance_create_depth(x,y,0,obj_darkHole)){
			direction=other.direction
			image_angle=direction
		}
	}
	else{
		if(int64(alarm[0]/15)%2==0) direction+=3
		else direction-=3
	}
}
else{
	speed=0
	alarm[0]+=1
}