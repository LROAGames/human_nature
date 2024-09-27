/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(beatenEffectTime==0){
	if(lightTime<3) lightTime=3 
	hp-=max(1,obj_calculation.bulletDamage-defence)
	beatenEffectTime=6
}