/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_shield.attackTime>0&&lightTime==0){
	if(beatenEffectTime==0){
		hp-=max(1,obj_calculation.shieldDamage-defence)
		beatenEffectTime=6
	}
	if(lightTime<30) lightTime=30
}