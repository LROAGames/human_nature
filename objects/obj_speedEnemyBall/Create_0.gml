/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
player=obj_chooseRole.player
iceLever=0
iceTime=0
lightTime=0
posionTime=0
if(room==room_volcano){
	hp=10*obj_chooseDifficulty.difficulty
	preHp=10*obj_chooseDifficulty.difficulty
	maxHp=10*obj_chooseDifficulty.difficulty
	alarm[1]=600
}
else{
	hp=6*obj_chooseDifficulty.difficulty
	preHp=6*obj_chooseDifficulty.difficulty
	maxHp=6*obj_chooseDifficulty.difficulty
	alarm[1]=900
}
defence=0
beatenEffectTime=0
soul=0
soulTime=0
summonFieldTime=0
alarm[0]=10000