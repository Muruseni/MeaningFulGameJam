function scDialogueData(_room, _object)
{
    if (_room == rTransition_Start && _object == noone)
    {
        return {
            entries: [
                ["test", "test"],
                ["", ""],
                ["test", "test 2"]
            ],
            once: false
        };
    }
    else if (_room == rTransition_Start && _object.object_index == oDad)
    {
        return {
            entries: [
                ["Dad", "Hey, sweetie"],
                ["", ""],
                ["Apple", "Hey"]
            ],
            once: true
        };
    }

    return undefined;
}
