/// @description Insert description here
// You can write your code in this editor

if(beatenEffectTime==0){
	if(lightTime<3) lightTime=3  
	hp-=max(1,obj_calculation.bulletDamage-defence)
	beatenEffectTime=6
}