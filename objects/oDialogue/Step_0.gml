if (is_dialogue_active)
{
// Space advances dialogue
if (keyboard_check_pressed(vk_space) && !dialogue_closing && dialogue_pause <= 0)
{
// Don't advance past the final credits line
if (room == rCredits &&
current_dialogue_index >= array_length(dialogue_entries) - 1)
{
return;
}

    current_dialogue_index++;

    // Completely finished
    if (current_dialogue_index >= array_length(dialogue_entries))
    {
        dialogue_closing = true;
    }
    else
    {
        var _next_entry = dialogue_entries[current_dialogue_index];

        if (_next_entry[0] == "" && _next_entry[1] == "")
        {
            // Close box and start pause
            dialogue_closing = true;
            dialogue_pause = 30;
        }
        else
        {
            // New dialogue line
            current_speaker = _next_entry[0];
            current_dialogue_text = _next_entry[1];

            // Run optional dialogue action
            if (array_length(_next_entry) > 2)
            {
                var _action = _next_entry[2];
                _action();
            }

            // Bring box back
            dialogue_closing = false;
        }
    }
}


// Automatic pause after empty line
if (dialogue_pause > 0)
{
    dialogue_pause--;

    if (dialogue_pause <= 0)
    {
        current_dialogue_index++;

        if (current_dialogue_index >= array_length(dialogue_entries))
        {
            dialogue_closing = true;
        }
        else
        {
            var _next_entry = dialogue_entries[current_dialogue_index];

            current_speaker = _next_entry[0];
            current_dialogue_text = _next_entry[1];

            // Run optional dialogue action
            if (array_length(_next_entry) > 2)
            {
                var _action = _next_entry[2];
                _action();
            }

            dialogue_closing = false;
            dialogue_scale = 0;
        }
    }
}


// Animate box

var _dialogue_fade_speed = 0.15;

if (room == rTransition_Start ||
    room == rTransition_LD ||
    room == rTransition_DL ||
    room == rTransition_Ds ||
    room == rTransition_End ||
    room == rCredits)
{
    _dialogue_fade_speed = 0.075;
}

if (dialogue_closing)
{
    dialogue_scale = lerp(dialogue_scale, 0, _dialogue_fade_speed);
    dialogue_text_alpha = lerp(dialogue_text_alpha, 0, _dialogue_fade_speed);

    if (dialogue_scale < 0.01)
    {
        dialogue_scale = 0;

        // Transition after the final dialogue line closes
        if (transition_after_close)
        {
            transition_after_close = false;
            oPlayer.Transitioning = true;
        }

        // Only end if this is actually the final entry
        if (dialogue_pause <= 0 &&
            current_dialogue_index >= array_length(dialogue_entries) - 1)
        {
            is_dialogue_active = false;
        }
        if (room == rDsAtNight_Ch)
       {
           interaction_locked = false;
       }
    }
}
else
{
    dialogue_scale = lerp(dialogue_scale, 1, _dialogue_fade_speed);
    dialogue_text_alpha = lerp(dialogue_text_alpha, 1, _dialogue_fade_speed);
}


}