/// @description Insert description here
// You can write your code in this editor
alarm[1]=2100
for(var i=0;i<=100;i+=1){
	if(i%10==0){
		with(instance_create_depth(x,y,1,obj_attackCactus)){
			speed=6
			direction=point_direction(x,y,other.player.x,other.player.y)-50+i
		}
	}
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-300||xx>player.x+300)&&(yy<player.y-300||yy>player.y+300)){
		instance_create_depth(xx,yy,1,obj_cactus)
	}
}