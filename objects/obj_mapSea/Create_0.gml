/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
alarm[0]=1
alarm[2]=1
score=0
o2=3600
a=0
b=0
audio_stop_all()
audio_play_sound(snd_rainy,0,true)
for(var i=0;i<1000;i+=1){
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-100||xx>player.x+100)&&(yy<player.y-100||yy>player.y+100)){
		instance_create_depth(xx,yy,1,obj_bigRock)
	}
}
for(var i=0;i<2000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),5,obj_bubble)
}