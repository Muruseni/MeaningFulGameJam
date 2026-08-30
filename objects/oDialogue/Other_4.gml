scDialogueStart(self, room, noone);

// Start the automatic dialogue 5 seconds after entering the DS room
if (room == rDsAtNight_Ch)
{
    is_dialogue_active = false;
    dialogue_scale = 0;
    dialogue_text_alpha = 0;
    dialogue_closing = false;

    interaction_locked = true;
    oDad.image_alpha = 0;

    alarm[0] = room_speed * 5;
}
else
{
    interaction_locked = false;
}


// Make sure the dialogue box starts closed if there is no dialogue
if (!is_dialogue_active)
{
    dialogue_scale = 0;
    dialogue_text_alpha = 0;
    dialogue_closing = false;
}
