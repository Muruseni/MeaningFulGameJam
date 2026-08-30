is_dialogue_active = false;

dialogue_entries = [];

current_dialogue_index = 0;

current_dialogue_text = "";
current_speaker = "";

dialogue_scale = 1;
dialogue_closing = false;

dialogue_finished = false;
dialogue_used = false;

dialogue_pause = 0;

dialogue_text_alpha = 1;

// Used for dialogue waits
dialogue_line_wait = false;

// Used for room transition after dialogue
transition_after_close = false;

// Alarm for automatic room dialogue
alarm[0] = -1;

interaction_locked = false;

