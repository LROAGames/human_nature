/// @description Insert description here
// You can write your code in this editor
hp-=max(1,obj_calculation.shotDamage-defence)
if(obj_chooseRole.role=="cowboy"){
	if(obj_cowboy.angry==1&&preHp<=0){
		obj_cowboy.hp+=0.1
	}
}