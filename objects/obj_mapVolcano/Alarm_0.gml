/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[0]=180
	for(var i=0;i<2;i++){
		var xx=player.x-1000+irandom(2000)
		var yy=player.y-1000+irandom(2000)
		instance_create_depth(xx,yy,0,obj_lavaShadow)
	}
}