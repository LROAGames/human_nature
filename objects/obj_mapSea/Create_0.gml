/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
alarm[0]=1
alarm[2]=1
score=0
o2=3600
a=0
b=0
xx=0
yy=0
audio_stop_all()
audio_play_sound(snd_rainy,0,true)
for(var i=0;i<2000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),5,obj_bubble)
}
for(var i=0;i<4000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),5,obj_wave)
}