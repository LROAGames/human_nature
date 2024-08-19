/// @description Insert description here
// You can write your code in this editor
image_alpha-=0.01
if(room_get_name(room)!=roomName){
	roomName=room_get_name(room)
	image_alpha=1
}