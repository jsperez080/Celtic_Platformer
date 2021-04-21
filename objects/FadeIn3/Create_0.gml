alpha = 1;
alpha = 1;
global.runCS = false;

doOnce = true;
executeText = false;
cam = view_camera[0];

//Text Management
textBoxCreated = 0;
textArray = ds_list_create();

#region//Cutscene Dialogue
ds_list_add(textArray, "Janet: I better find some Juniper. Just in case.");
#endregion

fadeTime = 10*room_speed;