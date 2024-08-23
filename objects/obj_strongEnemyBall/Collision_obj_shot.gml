/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
hp-=max(1,obj_calculation.shotDamage-defence)
if(obj_chooseRole.role=="cowboy"){
	if(obj_cowboy.angry==1&&preHp<=0){
		obj_cowboy.hp+=0.1
	}
}