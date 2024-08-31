/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_pause.stop==0){
	speed=32
	if(y>room_height) instance_destroy()
	if(y<0) instance_destroy()
	if(x>room_width) instance_destroy()
	if(x<0) instance_destroy()
}
else{
	speed=0
}