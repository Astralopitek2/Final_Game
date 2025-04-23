// Calculating Depth for drawing sprites correctly.


with(all) {
	depth = -bbox_bottom + room_height/2; 
}

with(oCircle_1)
{
	depth = 1;
}
with(oCircle_2)
{
	depth = 1;
}
with(oFloor)
{
	depth = 2;
}
depth = -10000;
