function scDialogueData(_room, _object)
{
if (_room == rTransition_Start && _object == noone)
{
return {
entries: [
["", "This is for us"],
["", ""],
["", "The ones who grew up..."]
],
once: false
};
}
else if (_room == rBasementDad_Ch && _object == noone)
{
return {
entries: [
["You:", "Dadddddd"],
["", ""],
["You:", "Can I play with you"],
["", ""],
["Dad:", "Hey Kiddo, "],
["", ""],
["Dad:", "Yeah, come join me"]
],
once: true
};
}
else if (_room == rBasementDad_Ch && _object.object_index == oCouch)
{
return {
entries: [
["", "*Button Smashing*"],
["", ""],
["Tv:", "Winner: Player 2!"],
["", ""],
["You:", "WOOO!", function()
{
oPlayer.PopTimer = 20;
}],
["", ""],
["Dad:", "Wow, ya got me."],
["", ""],
["Dad:", "First time you won fair and square"],
["", ""],
["Dad:", "Good job kid!"],
["", ""],
["You:", ":D", function()
{
oDialogue.transition_after_close = true;
}]
],
once: true
};
}
else if (_room == rTransition_Ds && _object == noone)
{
return {
entries: [
["", "No matter *when* we were..."]
],
once: true
};
}
else if (_room == rDsAtNight_Ch && _object == noone) //oDs
{
return {
entries: [
["", "*Door Opens*"],
["", ""],
["Dad:", "..."],
["", ""],
["Dad:", "Please go to sleep, Its way past your bedtime..."],
["", ""],
["Dad:", "..."],
["", ""],
["Dad:", "Im trusting you..."]
 ],
once: true
};
}
else if (_room == rTransition_LD && _object == noone)
{
return {
entries: [
["", "Or what we were going through..."]
],
once: true
};
}
else if (_room == rTransition_DL && _object == noone)
{
return {
entries: [
["", "Games were always there for us"]
],
once: true
};
} else if (_room == rApartment_CY && _object == noone)
{
return {
entries: [
["S/O:", "Ill be waiting for you in the car!"],
["", ""],
["You:", "Okay, give me a moment!"],
 ],
once: true
};
}
else if (_room == rTransition_End && _object == noone)
{
return {
entries: [
["", "And Always Will be"]
],
once: true
};
}
else if (_room == rCredits && _object == noone)
{
return {
entries: [
["", "Thank you to the games who have shaped us.."],
["", ""],
["", "Protected us.."],
["", ""],
["", "The ones set deep in our memories"],
["", ""],
["", "... And to thoes who created them."],
["", ""],
["", " "],
["", "A game by Muru and Moggo"],
["", ""],
["", "Thank you for playing <3"]
],
once: true
};
}

return undefined;


}