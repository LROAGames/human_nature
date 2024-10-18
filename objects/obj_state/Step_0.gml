/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
player=obj_chooseRole.player
if(obj_pause.stop==0){
	if(player.beatenEffectTime>0){
		image_blend=c_red
		image_alpha=(15-abs(15-player.beatenEffectTime))/25
	}
	else if(player.beatenEffectTime<0){
		image_blend=c_green
		image_alpha=(15-abs(15+player.beatenEffectTime))/25
	}
	else{
		image_blend=c_white
		image_alpha=0
	}
	x=player.x
	y=player.y
	depth=-999999999
}