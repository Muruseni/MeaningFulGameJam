if (is_dialogue_active)
{
    // Space advances dialogue
    if (keyboard_check_pressed(vk_space) && !dialogue_closing && dialogue_pause <= 0)
    {
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

                dialogue_closing = false;
                dialogue_scale = 0;
            }
        }
    }


    // Animate box
    if (dialogue_closing)
    {
        dialogue_scale = lerp(dialogue_scale, 0, 0.15);

        if (dialogue_scale < 0.01)
        {
            dialogue_scale = 0;

            // Only end if this is actually the final entry
            if (dialogue_pause <= 0 &&
                current_dialogue_index >= array_length(dialogue_entries) - 1)
            {
                is_dialogue_active = false;
            }
        }
    }
    else
    {
        dialogue_scale = lerp(dialogue_scale, 1, 0.15);
    }
}
