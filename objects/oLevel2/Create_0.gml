global.runCS2 = false;
global.runCS2_2 = false;
doOnce2 = true;
doOnce2_2 = true;
executeText2 = false;
executeText2_2 = false;
cam2 = view_camera[0];

//Text Management
textBoxCreated2 = 0;
textArray2 = ds_list_create();

ds_list_add(textArray2, "Text to be displayed on the first page");
ds_list_add(textArray2, "Text to be displayed on teh 2nd page");
ds_list_add(textArray2, "Look, it got triggered!");


textArray2_2 = ds_list_create();
ds_list_add(textArray2_2, "Yo, I'm your dad.");
ds_list_add(textArray2_2, "And my name is also Janet. Janet Sr, that is....");
text_count = ds_list_size(textArray2_2);