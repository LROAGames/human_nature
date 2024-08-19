/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_ninja.angry==1) image_blend=c_red
if(obj_ninja.ninjaTime>0){
	speed=30
	direction+=2
}
else{
	direction+=6
}
image_angle=direction
image_alpha-=0.016