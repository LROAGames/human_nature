/// @description Insert description here
// You can write your code in this editor
alarm[1]=1200
for(var i=0;i<100;i+=1){
	if(i%10==0){
		with(instance_create_depth(x,y,5,obj_desertEnemy)){
			flag=true
			angry=true
		}
	}
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-300||xx>player.x+300)&&(yy<player.y-300||yy>player.y+300)){
		instance_create_depth(xx,yy,2,obj_speedEnemyBall)
		instance_create_depth(xx,yy,4,obj_desertEnemy)
	}
}