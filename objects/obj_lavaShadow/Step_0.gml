/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_pause.stop==0){
	depth=-y
	image_alpha+=0.01
	if(image_alpha==1){
		for(var i=0;i<summon;i+=1) instance_create_depth(x,y,3,obj_speedEnemyBall)
		with(instance_create_depth(x,y,0,obj_lava)){
			num=other.num
		}
		instance_destroy()
	}
}