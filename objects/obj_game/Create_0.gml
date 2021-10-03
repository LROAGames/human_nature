/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
alarm[0]=1
audio_stop_all()
audio_play_sound(snd_bgm,0,100000000)
for(var i=0;i<3000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_tree)
}
for(var i=0;i<10000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),2,obj_flower)
}