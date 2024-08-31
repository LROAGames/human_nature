/// @description Insert description here
// You can write your code in this editor
instance_create_depth(1024+irandom(room_width-2048),1024+irandom(room_height-2048),-100,obj_exit)
direction=point_direction(x,y,obj_exit.x,obj_exit.y)
image_angle=direction