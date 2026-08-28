
scDialogueStart(self, room, noone);

// Make sure the dialogue box starts closed if there is no dialogue
if (!is_dialogue_active)
{
    dialogue_scale = 0;
    dialogue_text_alpha = 0;
    dialogue_closing = false;
}
