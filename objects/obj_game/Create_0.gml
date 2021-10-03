/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
alarm[0]=1
alarm[1]=1
audio_stop_all()
audio_play_sound(snd_bgm,0,100000000)
for(var i=0;i<5000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_tree)
}
for(var i=0;i<30;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_redFlower)
}
for(var i=0;i<120;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_yellowFlower)
}
for(var i=0;i<8000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_smallGrass)
}
for(var i=0;i<1000;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_bigGrass)
}
for(var i=0;i<500;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_smallRock)
}
for(var i=0;i<250;i+=1){
	instance_create_depth(irandom(room_width),irandom(room_height),1,obj_bigRock)
}