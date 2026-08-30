InteractType = "ds";
dialogue_used = false;

alarm[0] = -1;
 
show_debug_message("Interacted");
function Interact()
{
    show_debug_message("Interacted");
    scDialogueStart(oDialogue, room, self);

    // Hide the door after interacting
    image_alpha = 0;

    //oPlayer.x += 20;

    // Wait 2 seconds before starting the transition
    alarm[0] = room_speed * 2;
}
