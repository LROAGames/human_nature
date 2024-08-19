/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
audio_stop_all()
audio_play_sound(snd_rainy,0,true)
for(var i=0;i<2000;i+=1){
	instance_create_depth(irandom(room_width),1024+irandom(room_height),3,obj_wall)
}