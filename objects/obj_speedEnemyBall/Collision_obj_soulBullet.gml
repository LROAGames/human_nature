/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(beatenEffectTime==0){
	soul=1
	if(soulTime<15) soulTime=15
	hp-=max(1,obj_calculation.soulBulletDamage-defence)
	beatenEffectTime=6
}