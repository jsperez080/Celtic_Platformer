/// hey so this still needs to be specified to Level 4

global.runCS = false;

doOnce = true;
executeText = false;
cam = view_camera[0];

//Text Management
textBoxCreated = 0;
textArray = ds_list_create();

#region//Cutscene Dialogue
ds_list_add(textArray, "Tam Lin: Fair Lady….is that juniper in your pocket?");
						
ds_list_add(textArray, "Janet: *sigh* yes.");
ds_list_add(textArray, "Tam Lin: You’d….really kill our child?");

ds_list_add(textArray, "Janet: I don’t want to! But I can’t afford to be a single mother.");

ds_list_add(textArray,"Janet: and no one is going to take “I hooked up with a hot elf knight” as a valid explanation.");

ds_list_add(textArray, "Tam Lin:....");

ds_list_add(textArray, "Tam Lin: He was my grandfather. We went hunting one day and...well I was young");
						
ds_list_add(textArray, "Tam Lin: It didn’t take more than a strong wind to knock me off my horse.");

ds_list_add(textArray, "Tam Lin: I fell down a hill and….the Queen of the Fairies caught me.");

ds_list_add(textArray, "Janet: Excuse me?");

ds_list_add(textArray, "Tam Lin: I know. She was more radiant than anyone or anything I’d ever seen.");

ds_list_add(textArray, "Tam Lin: Present company excluded, of course.");

ds_list_add(textArray, "Tam Lin:  She took a liking to me too because she took me back to the fairy land with her.");
						
ds_list_add(textArray, "Janet: Wait….you aren’t a fairy?");
ds_list_add(textArray, "Tam Lin: Does that change things between us?.");
ds_list_add(textArray, "Janet: Well, no, not entirely. That’s still a pretty big lie by omission.");
ds_list_add(textArray, "Tam Lin: I’m sorry Janet.");
ds_list_add(textArray, "Tam Lin: But it might not matter by tonight anyway.");
ds_list_add(textArray, "Janet: Well that sounds ominous…");
ds_list_add(textArray, "Tam Lin: The Fairies must pay a tithe to Hell every seven years on Halloween night.");
ds_list_add(textArray, "Tam Lin: I’ve seen the Queen whispering about me. I’m afraid that they plan to offer me instead of one of their own once the sun sets.");
ds_list_add(textArray, "Janet: Oh my god….no….");
ds_list_add(textArray, "Tam Lin: But Janet, YOU might be my savior. You can win me and my freedom, if you’ll still have me.");
ds_list_add(textArray, "Tam Lin: Perhaps you’ll consider keeping the child that way.");
ds_list_add(textArray, "Janet: I……..*sigh* Tell me what to do.");
#endregion