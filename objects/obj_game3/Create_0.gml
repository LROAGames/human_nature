/// @description Insert description here
// You can write your code in this editor
alarm[0]=1
score=0
o2=3600
a=0
b=0
xx=0
yy=0
for(var i=0;i<2000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),5,obj_bubble)
}
for(var i=0;i<4000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),5,obj_wave)
}