/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
player=obj_chooseRole.player
hp=60*obj_chooseDifficulty.difficulty
preHp=60*obj_chooseDifficulty.difficulty
maxHp=60*obj_chooseDifficulty.difficulty
if(room=room_desert){
	defence=2*obj_chooseDifficulty.difficulty
}
else{
	defence=1*obj_chooseDifficulty.difficulty
}
beatenEffectTime=0
iceLever=0
iceTime=0
lightTime=0
posionTime=0
soul=0
soulTime=0
summonFieldTime=0
alarm[0]=36000
alarm[1]=300
gift=2