/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
player=obj_chooseRole.player
if(room=room_forest){
	hp=120
	preHp=120
	maxHp=120
}
else{
	hp=80
	preHp=80
	maxHp=80
}
if(room=room_desert){
	defence=1.5
}
else{
	defence=1
}
beatenEffectTime=0
iceLever=0
iceTime=0
lightTime=0
alarm[0]=36000