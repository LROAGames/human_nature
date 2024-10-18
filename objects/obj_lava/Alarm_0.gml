/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(num>0){
	with(instance_create_depth(x,y,0,obj_lava)){
		num=other.num-1
	}
	for(var i=0;i<3;i+=1){
		for(var j=0;j<3;j+=1){
			if(i%2==0&&j%2==0) continue
			with(instance_create_depth(x-50+i*50,y-50+j*50,0,obj_lava)){
				num=other.num-1
			}
		}
	}
}
instance_destroy()