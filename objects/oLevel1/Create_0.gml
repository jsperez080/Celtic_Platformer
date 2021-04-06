global.runCS = false;

doOnce = true;
executeText = false;
cam = view_camera[0];

//Text Management
textBoxCreated = 0;
textArray = ds_list_create();

#region//Cutscene Dialogue
ds_list_add(textArray, "Tam Lin: Fair Lady, why do you pull on a rose that doesn't belong to you?."
						+ " Furthermore, why do you come to this forest without my permission?");
						
ds_list_add(textArray, "Janet: You're mistaken sir. I own these woods. My father owns all the land "
					    + "nearby and gave this forest to me.");
ds_list_add(textArray, "Janet: Frankly, I don't need your, or anyone's permission to be here.");

ds_list_add(textArray, "Tam Lin: I see...It seems I won't get my usual offering from you.");

ds_list_add(textArray, "Janet: So you're the infamous Tam Lin. Do you mean all that nonsense about "
						+ "leaving a ring or a cloak or you'll steal something more...precious?");

ds_list_add(textArray, "Tam Lin: 'Steal' is perhaps a strong word. Beyong a stolen kiss, most are "
						+ "more than willing to give that gift freely.");
						
ds_list_add(textArray, "Janet: Ah so you *have* slept with women around here!");

ds_list_add(textArray, "Tam Lin: *Ahem* Not much with the women of THIS realm.");

ds_list_add(textArray, "Janet: Oh... ... ... ...");

ds_list_add(textArray, "Janet: .................");

ds_list_add(textArray, "Janet: ....Do you want to? Its not every day I find an attractive fairy "
						+ "knight already in my bushes.");

ds_list_add(textArray, "Tam Lin: ...");
#endregion