function scDialogueData(_room, _object)
{
if (_room == rTransition_Start && _object == noone)
{
return {
entries: [ 
["", "This is for us...        (Press Space)"],
["", ""],
["", "The ones who grew up..."],
["", ""],
["", "                 (Use W,A,S,D to move)"],
["", ""],
["", "                 (And E to Interact)"]
],
once: false
};
}
else if (_room == rBasementDad_Ch && _object == noone)
{
return {
entries: [
["You:", "Dadddddd!"],
["", ""],
["You:", "Can I play with you?", function() 
{ 
oPlayer.x += oPlayer.WalkSpeed * 50; 
}],
["", ""],
["Dad:", "Hey Kiddo! "],
["", ""],
["Dad:", "Yeah, come sit with me"]
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
["", "..."],
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
["Dad:", "You actually won that time"],
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
    ["", "..."],
    ["", ""],
["", "*Door Opens*", function(){
    oDad.image_alpha = 1;
}],
["", ""],
["Dad:", "...",function(){
    oDad.x -= 15;
    oDad.sprite_index = sDad;
}],
["", ""],
["Dad:", "Please go to sleep, "],
["", ""],
["Dad: ", "Its getting late..."],
["", ""],
["Dad:", "..."],
["", ""],
["Dad:", "Im trusting you...", function(){
    oDad.x += 10;
    oDad.sprite_index = sDad_Up;
}], 
["", ""],
["", "*Door Shuts*", function() {
oDad.image_alpha = 0;
}],
["", ""],
["", "..."],
["", ""],
["", "Okay...", function() {
oPlayer.x += 30;
}],
["", ""],
["", "...", function() {
oDialogue.transition_after_close = true;
}]
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
else if (_room == rBasement_CV && _object == noone)
{
return {
entries: [
["", "*Door Opens and Shuts*"],
["", ""],
["", "*I cant wait to sit down...*"],
],
once: true
};
}
else if (_room == rBasement_CV && _object != noone && _object.object_index == oGamingChair)
{
return {
entries: [
["", "*Loads up game*"],
["", ""],
["", "..."],
["", ""],
["*You*", "Im so tired..."],
["", ""],
["", "..."],
["", ""],
["", "..."],
["", ""],
["", "*Passes out*", function()
{
oDialogue.transition_after_close = true;
}]
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
["", "..."],
["", ""],
["S/O", "Honey!"],
["", ""],
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