
counter = 0;
maxTextBoxes = 2;

var value = 1;
for(var i=0; i<3; i++)
{
	for(var j=0; j<3; j++)
	{
		if(value !=9)
		{
			var ins = instance_create_depth(x + (i*sprite_get_width(sTile)),
								  y + (j*sprite_get_height(sTile)),
								  -1000,
								  oTile);
			ins.value = value;
			ins.image_index = value;
			value++;
		}
	}
}