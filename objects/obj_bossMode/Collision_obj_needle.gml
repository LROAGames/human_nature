/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_needle.attackTime>0&&lightTime==0){
	if(obj_needle.mode=="heal"){
		hp-=max(1,obj_calculation.needleDamage-defence)
		if(obj_needle.flag<1){
			obj_doctor.hp+=0.2+(obj_doctor.energy-obj_doctor.energy%15)/150
			obj_doctor.energy+=0.5
			obj_needle.flag=1
		}
		if(lightTime<12) lightTime=12
	}
	else if(obj_needle.mode=="posion"){
		hp-=max(1,obj_calculation.needleDamage-defence)
		if(posionTime<60+(obj_doctor.energy-obj_doctor.energy%15)*2){
			posionTime=60+(obj_doctor.energy-obj_doctor.energy%15)*2
		}
		if(lightTime<12) lightTime=12
	}
}