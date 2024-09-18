/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
for(var i=0;i<multicnt;i+=1){
	if(magic>0){
		with(instance_create_depth(x,y,0,obj_multiShot)){
			magic=other.magic-1
			image_alpha=other.image_alpha-0.2
			direction=irandom(360)
			image_angle=direction
		}
	}
}
instance_destroy()