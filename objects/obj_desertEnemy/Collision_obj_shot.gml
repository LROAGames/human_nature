/// @description Insert description here
// You can write your code in this editor
hp-=max(1,obj_calculation.shotDamage-defence)
if(preHp<=0){
	if(obj_chooseRole.role=="cowboy"){
		if(obj_cowboy.angry==1&&obj_cowboy.hp<100){
			obj_cowboy.hp+=0.1
		}
	}
}