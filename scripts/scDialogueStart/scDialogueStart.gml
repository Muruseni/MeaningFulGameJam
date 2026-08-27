function scDialogueStart(_dialogue_controller, _room, _object)
{
    var _data = scDialogueData(_room, _object);

    if (is_undefined(_data))
    {
        return;
    }

    if (_data.once && _object != noone && _object.dialogue_used)
    {
        return;
    }

    _dialogue_controller.dialogue_entries = _data.entries;
    _dialogue_controller.current_dialogue_index = 0;

    _dialogue_controller.current_speaker = _data.entries[0][0];
    _dialogue_controller.current_dialogue_text = _data.entries[0][1];

    _dialogue_controller.dialogue_scale = 1;
    _dialogue_controller.dialogue_closing = false;
    _dialogue_controller.dialogue_finished = false;
    _dialogue_controller.dialogue_text_alpha = 0;

    _dialogue_controller.is_dialogue_active = true;

    if (_data.once && _object != noone)
    {
        _object.dialogue_used = true;
    }
}
