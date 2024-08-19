/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[1]=300
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-300||xx>player.x+300)&&(yy<player.y-300||yy>player.y+300)){
		instance_create_depth(xx,yy,1,obj_cactus)
	}
}