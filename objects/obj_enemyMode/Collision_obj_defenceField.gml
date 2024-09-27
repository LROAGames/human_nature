/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(lightTime<15) lightTime=15
if(beatenEffectTime==0){
	hp-=max(1,obj_calculation.defenceFieldDamage-defence)
	beatenEffectTime=6
}