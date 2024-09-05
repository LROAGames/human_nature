/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
alarm[0]=1
alarm[1]=1
alarm[2]=1
score=0
a=0
audio_stop_all()
audio_play_sound(snd_bgm,0,true)
for(var i=0;i<2000;i+=1){
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-100||xx>player.x+100)&&(yy<player.y-100||yy>player.y+100)){
		instance_create_depth(xx,yy,1,obj_cactus)
	}
}
for(var i=1;i<=2;i+=1){	
	for(var j=1;j<=2;j+=1){
		instance_create_depth(room_width/i-irandom(room_width/2),room_height/j-irandom(room_height/2),5,obj_lake)
	}
}
for(var i=0;i<20000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),3,obj_yellowDot)
}