/// @description Insert description here
// You can write your code in this editor
if(beatenEffectTime==0){
	hp-=max(1,obj_calculation.shotDamage-defence)
	beatenEffectTime=6
}
if(obj_chooseRole.role=="cowboy"){
	if(obj_cowboy.angry==1&&preHp<=0){
		obj_cowboy.hp+=0.1
	}
}
