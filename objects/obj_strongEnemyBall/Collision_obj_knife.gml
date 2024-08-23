/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_knife.attackTime>0){
	if(beatenEffectTime==0){
		hp-=max(1,obj_calculation.knifeDamage-defence)
		beatenEffectTime=30
	}
	if(obj_ninja.angry==1&&preHp<=0){
		obj_knife.attackTime=30
		obj_ninja.hp+=0.1
	}
}