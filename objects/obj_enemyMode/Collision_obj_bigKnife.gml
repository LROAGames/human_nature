/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(beatenEffectTime==0){
	hp-=max(1,obj_calculation.bigKnifeDamage-defence)
	if(obj_ninja.angry==1&&hp<=0){
		obj_knife.attackTime=30
		obj_ninja.hp+=0.1
	}
	beatenEffectTime=6
}