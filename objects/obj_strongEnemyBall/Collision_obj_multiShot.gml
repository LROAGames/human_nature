/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(beatenEffectTime==0){
	if(lightTime<1) lightTime=1
	hp-=max(1,obj_calculation.multiShotDamage-defence)hp-=max(1,obj_calculation.bulletDamage-defence)
	beatenEffectTime=15
}