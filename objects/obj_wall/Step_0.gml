/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	if(distance_to_point(obj_player.x,obj_player.y)<70){
		obj_player.hp-=0.5
	}
	if(x<room_width and a) x+=5
	if(x>=room_width) a=0
	if(!a and x>0) x-=5
	if(x<=0) a=1
	if(distance_to_object(obj_wall)<75){
		instance_destroy()
	}
}