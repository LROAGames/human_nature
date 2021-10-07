/// @description Insert description here
// You can write your code in this editor
alarm[0]=1
alarm[1]=1
score=0
a=0
for(var i=0;i<1000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_cactus)
}
for(var i=0;i<1;i+=1){
	instance_create_depth(512+irandom(room_width-1024),512+irandom(room_height-1024),5,obj_lake)
}
for(var i=0;i<20000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),3,obj_yellowDot)
}