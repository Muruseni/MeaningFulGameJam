InteractType = "ds";
dialogue_used = false;

alarm[0] = -1;

function Interact()
{
    scDialogueStart(oDialogue, room, self);

    // Hide the door after interacting
    image_alpha = 0;

    // Change the player's sprite
    //oPlayer.sprite_index = sPlayer_Ds;

    // Wait 2 seconds before starting the transition
    alarm[0] = room_speed * 2;
}
