/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
player=obj_chooseRole.player
a=0
score=0
alarm[0]=1
alarm[1]=1
alarm[2]=1
audio_stop_all()
audio_play_sound(snd_bgm,0,true)
for(var i=0;i<5000;i+=1){
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-100||xx>player.x+100)&&(yy<player.y-100||yy>player.y+100)){
		instance_create_depth(xx,yy,1,obj_tree)
	}
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