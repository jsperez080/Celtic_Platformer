/// @description Insert description here
// You can write your code in this editor
var x1 = 0;
var x2 = 40;
var x3 = 90;

//Draw Knotts to screen to let player know how many they have collected.
if(global.totalKnots == 1)
{
	draw_sprite(sKnot1, 1, x1, 0);
}
if(global.totalKnots == 2)
{
	draw_sprite(sKnot1, 1, x1, 0);
	draw_sprite(sKnot2, 1, x2, 0);
}
if(global.totalKnots == 3)
{
	draw_sprite(sKnot1, 1, x1, 0);
	draw_sprite(sKnot2, 1, x2, 0);
	draw_sprite(sKnot3, 1, x3, 0);
}