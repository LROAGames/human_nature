/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[1]=600
	for(var i=0;i<4;i+=1) instance_create_depth(irandom(room_width),irandom(room_height),1,obj_cactus)
}