/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
alarm[2]=2400
var v=irandom(800)-400
x=player.x+v
y=player.y+sqrt(160000-v*v)
for(var i=0;i<12;i++){
	with(instance_create_depth(x,y,0,obj_lavaBullet)){
		direction=other.direction+i*30
	}
}