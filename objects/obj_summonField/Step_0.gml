/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_pause.stop==0){
	x=obj_summoner.x
	y=obj_summoner.y
	if(a<60){
		a+=1
	}
	else{
		a=0
		if(obj_summoner.hp>0.5){
			obj_summoner.hp-=0.5
			energy+=5
		}
	}
	image_alpha=energy/150+0.2
	if(obj_summoner.coldDown2<=0) instance_destroy()
	if(energy>=100){
		with(instance_create_depth(x,y,0,obj_summonedAnimal)){
			level=3
			alarm[0]=3600
		}
		instance_destroy()
	}
}