/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_pause.stop==0){
	if(posionTime>0){
	if(posionTime%30==0) hp-=max(1,obj_calculation.posionDamage-defence)
		posionTime-=1
	}
	if(summonFieldTime>0) summonFieldTime-=1
	if(soulTime>0) soulTime-=1
	if(iceTime>0) iceTime-=1
	if(iceTime==0) iceLever=0
}
